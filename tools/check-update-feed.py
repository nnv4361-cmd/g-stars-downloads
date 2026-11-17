"""Validate the exact versioned URL requested by the shipped G-Stars updater."""
import argparse, copy, json, re, tempfile
from pathlib import Path

REPOSITORY = 'https://github.com/nnv4361-cmd/g-stars-downloads'

def validate(root):
    updates = Path(root) / 'updates'
    latest = json.loads((updates / 'latest.json').read_text(encoding='utf-8-sig'))
    tag = latest.get('tag_name', '')
    assert re.fullmatch(r'v20\d{2}\.\d{1,2}\.\d{1,2}\.\d{1,5}', tag), 'Invalid version tag'
    assert latest.get('schema') == 'GStars.ReleaseFeed57/v1'
    assert latest.get('draft') is False and latest.get('prerelease') is False
    assert latest.get('html_url') == f'{REPOSITORY}/releases/tag/{tag}'
    # The maintenance worker asks for v<version>.json, not <version>.json.
    assert json.loads((updates / f'{tag}.json').read_text(encoding='utf-8-sig')) == latest, 'Worker verification file differs'
    assert json.loads((updates / f'{tag[1:]}.json').read_text(encoding='utf-8-sig')) == latest, 'Plain version alias differs'
    assets = latest['assets']
    assert len({a['name'] for a in assets}) == len(assets), 'Duplicate asset'
    assert {'G-Stars-Setup.exe', 'G-Stars-Update.zip'} <= {a['name'] for a in assets}
    for a in assets:
        assert a['state'] == 'uploaded' and type(a['size']) is int and a['size'] > 0
        assert re.fullmatch(r'sha256:[a-f0-9]{64}', a['digest'])
        assert a['browser_download_url'] == f"{REPOSITORY}/releases/download/{tag}/{a['name']}"
        if a['name'] in {'G-Stars-Setup.exe', 'G-Stars-Update.zip'}:
            assert 1048576 <= a['size'] <= 1073741824
    return dict(ok=True, version=tag[1:], workerPath=f'updates/{tag}.json', assets=len(assets))

def selftest():
    good=dict(schema='GStars.ReleaseFeed57/v1',draft=False,prerelease=False,tag_name='v2026.11.17.64',html_url=REPOSITORY+'/releases/tag/v2026.11.17.64',assets=[dict(name=n,state='uploaded',size=1048576,digest='sha256:'+'a'*64,browser_download_url=REPOSITORY+'/releases/download/v2026.11.17.64/'+n)for n in ['G-Stars-Setup.exe','G-Stars-Update.zip']])
    def case(label, edit=None, missing=False, mismatch=False):
        with tempfile.TemporaryDirectory(prefix='gstars-feed-test-') as d:
            p=Path(d)/'updates';p.mkdir();value=copy.deepcopy(good)
            if edit:edit(value)
            for name in ['latest.json','2026.11.17.64.json','v2026.11.17.64.json']:
                if missing and name.startswith('v'):continue
                data=copy.deepcopy(value)
                if mismatch and name.startswith('v'):data['assets'][0]['size']+=1
                (p/name).write_text(json.dumps(data))
            rejected=False
            try:validate(d)
            except (AssertionError,FileNotFoundError,KeyError):rejected=True
            assert rejected == bool(edit or missing or mismatch), label
    case('valid')
    case('missing-worker-v-path',missing=True)
    case('alias-mismatch',mismatch=True)
    case('wrong-hash',lambda d:d['assets'][0].update(digest='sha256:bad'))
    case('foreign-download',lambda d:d['assets'][0].update(browser_download_url='https://example.com/setup.exe'))
    case('duplicate',lambda d:d['assets'].append(d['assets'][0]))
    case('draft',lambda d:d.update(draft=True))
    case('short-download',lambda d:d['assets'][0].update(size=10))
    return dict(ok=True,negativeCases=7,validCases=1)

if __name__ == '__main__':
    p=argparse.ArgumentParser();p.add_argument('--root',default='.');p.add_argument('--selftest',action='store_true');args=p.parse_args()
    print(json.dumps(selftest() if args.selftest else validate(args.root)))

