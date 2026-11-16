# Rà mã nguồn · G-Stars52

[Về trang chính](../README.md)

## Phạm vi

Quét toàn bộ **1.128 C#** hiện hành:1.075file khôi phục và53file host, khoảng919.000dòng. Roslyn kiểm tra cú pháp, bộ analyzer Microsoft kiểm tra ngữ nghĩa/tài nguyên/truy vấn. Cả host và engine không có lỗi biên dịch. Source được build độc lập lại và đối chiếu hash của host, engine và thư viện runtime.

## Lỗi đã tái hiện và sửa

| Trường hợp | Bản51 | Bản52 |
| --- | --- | --- |
| API trả kết quả một hóa đơn nhưng `idErp` khác chứng từ vừa gửi | Có thể chấp nhận kết quả sai | Từ chối, giữ trạng thái cần đối chiếu, chặn tạo lại; biên nhận cũ sai ERP cũng bị chặn |
| Phản hồi32MB, giới hạn dự kiến16MB | Đọc toàn bộ32MB rồi mới từ chối | Dừng trong lúc đọc, tối đa giới hạn+1byte để phát hiện vượt; khai báo độ dài lớn có thể bị chặn trước khi đọc |
| Làm mới nhận diện liên tục | Tạo lại bitmap; StringFormat chưa được giải phóng trực tiếp | Tái sử dụng bitmap, giải phóng ảnh do G-Stars tạo khi thay/đóng, giữ ảnh gốc dùng chung |

Đường gọi dịch vụ hóa đơn đều kiểm tra chặn UAT, tránh nhánh tra cứu/gửi đi vòng ngoài kiểm tra tại factory. Không đổi SQL gốc, không gọi máy chủ công ty/OpenClaw. Không tạo/ký/phát hành hóa đơn thật để test.

## Kiểm tra

-56ca hóa đơn dùng transport giả: tiền/thuế, gửi lại, timeout, đồng thời, sai ERP, biên nhận cũ và cổng UAT.
-28ca đọc giới hạn/tệp/metadata phản hồi/ảnh, gồm100lần refresh. Các thân hàm IO/ảnh/đối chiếu ERP giữ nguyên giữa host đã đo và host cuối thêm chặn UAT; có đối chiếu mã IL và nguồn.
-Candidate và portable:24cập nhật,54SQL,24đăngnhập,22khung,45báolỗi; toolkit chứng từ15PASS/4NOT_RUN/0FAIL/0BLOCKED.
-139mẫu native trong lượt hồi quy, không có lỗi thao tác;446form đạt test chỉ dựng,1thiếu ngữ cảnh riêng.184mẫu Crystal/948ca cấu trúc-vòngđời; code Crystal và engine không đổi ở bản cuối.
-14test dịch vụ báo lỗi local bằng giả lập, không triển khai lại dịch vụ và không tạo issue thử mới.
-333kiểm tra bộ cài bằng đọc/giải nén archive, gồm322file app đúnghash, dependency gốc và metadata MSI. Không chạy Setup, /layout hoặc MSI apply trong đợt này. Một lệnh ghép probe+kiểm tra bộ cài bị automatic approval chặn (blocked by policy); chuyển sang kiểm tra archive chỉ đọc. Probe wire giả chưa hoàn tất vì test double thiếu RequestUri; không tính là đạt.

## Còn cần xác minh

Analyzer giữ **1.409 cảnh báo/nghi vấn**, không phải1.409lỗi đã xác nhận:1.004ownership dữ liệu quản lý,182vòngđời báo cáo,211đườngtài nguyên khác,11sink truy vấn/Excel và1khuyếnnghị cấu hình transport. Nhiều DataSet/DataTable được chuyển cho caller/grid; không tự Dispose hàng loạt gây hỏng binding. Danh sách đầy đủ giữ trong project riêng, không công khai source ứng dụng hoặc SQL.

Chưa chứng minh mọi nhánh nghiệp vụ, mọi quyền thực tế, mọi backup, Windows sạch, cài/repair/rollback/uninstall, máy in vật lý hoặc dịch vụ hóa đơn thật.44thân SQL lịch sử vẫn chưa tìm lại được. Còn ba điểm chậm ở Kế toán, Kinh doanh xe và mở Báo giá; xem [Tình trạng kiểm thử](TINH-TRANG-KIEM-THU.md). Không tuyên bố toàn bộ phần mềm sạch lỗi hoặc total reverse đã hoàn tất.
