# Phạm vi kiểm thử · G-Stars55

[Trang chính](../README.md) · [Kiến trúc native](NATIVE-55.md)

Kiểm thử tự động trên một bản SQLbackup riêng trong môi trường dự án: không có schema `client_lab`, không có markerlab/UAT; tài khoản kết nối không phải sysadmin/db_owner và bị DENY VIEW DEFINITION. Không truy cập SQL công ty hoặc OpenClaw.

| Phạm vi | Bằng chứng |
| --- | --- |
| Đăng nhập/quyền và báo cáo | 52kiểm tra: mật khẩu đúng/sai, tài khoản có sẵn,3tài khoản fixture khác quyền, cờ nghiệp vụ, view/add/edit/delete/export; tên chứa dấu nháy/injection, chặn lối mật khẩu dùng chung cũ; Windows builders không mang SQLcredential và mặc địnhWindows |
|8báo cáo trong client | Thực thi trên cấu trúc native,5output tồnxe và consumerC#gốc khớp, giữ NULL→0 như nguồn gốc; nguồn tổnghợp côngnợ chạy khi phiên khác giữ bảngtạm global, giữ nguyên canary; không cài schema/không để transaction mở |
| Menu/màn nghiệp vụ | 109mẫu native: đăngnhập thật qua form,9phânhệ và18ngữcảnh form trên dữ liệu đãrestore;0lỗi thao tác/dialog trong lượt này. Tài khoản đầyđủ quyền dùng cho sweeplà fixture được khai báo trong SQL, không nâng quyền trong client; tài khoản thường kiểmtra riêng |
| Lưu/mởlại/hủy |70kiểmtra normal/NVAT: CmdSave thực tế, commit, đọc lại độc lập, mởlại, khóa kỳ, thiếu tài khoản hạchtoán, lỗi/replay và hủy/dọn fixture; giữ audit. Shadow chỉ bắt thông báo, không thay SQL/tính toán/provider/Save |
| In/PDF |Xuất PDF Crystal thật từ chứngtừ normal đã lưu. Không nghiệmthu máyin vậtlý hoặc mọi báo cáo |
| Đối chiếu mã |76kiểmtra;63.824phươngthức cósẵn còn đủ,39thayđổi được khai báo,35clone backend nguồn gốc;SQL/literal clonekhớp nguồn,hai Save handler hóađơn và643resources enginegiữ nguyên so52 |
| Source/bộ cài |1.131C# táibuild độc lập đúnghost/engine/runtime;333kiểmtra archive bộcài và322appfiles. Không chạy installer/layout/MSIapply hay đổi runtime trong đợt này |
| SQL/dữliệu thử |424địnhnghĩa SQLnghiệpvụ và31helperdt_*gốc giữhash; fixture tài chính của run đãdọn, không xóa audit gốc. Nativebackup không được bổsung procedure/schema |

Đây không phải chứngnhận toànERP. Chưa nghiệmthu mọi luồng/quyềnthật/ngoạitệ/đơnvị/đơnvị tính/stale/race trên tấtcảwriter; Windowsdomain/mạng côngty/Windows sạch/Office/in vậtlý;8báocáo vẫn cần nghiệmthu sốliệu đầyđủ trên backend thực tế. Bảngtrống được tính là kiểmtra schema/adapter, không coi là oracle tài chính đầyđủ.44thânSQLgốc cònthiếu/0khôiphục;35nhánh backendnguồngốc không được coi là đãnghiệmthu hết. Cấu hình TEST chặn tạo/ký/pháthành hóađơn thật.

Các lỗi gặp trong test đầu được giữ: malformedunit của actorlab cũ làm nguồn gốc từchối đúng; modebáocáo0sai, kỳvọng outputNULLphải0sai, nguồn connectionstring đãche mật khẩu, fixture thiếu thuộc tính OLEDB/metadata và gọi nhầm chếđộ in. Đã sửa harness/oracle và dùng fixture mới; không đổi quyềnngườidùnggốc đểép testđạt. Wrapper côngnợ củaG-Stars được sửa để tổngNULLrỗng→0 đúngReturnIfNull của nguồn, vẫn từchối thiếucột.
