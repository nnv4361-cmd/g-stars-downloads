# Lịch sử phát hành

[Về trang chính](README.md) · [Bản mới nhất](https://github.com/nnv4361-cmd/g-stars-downloads/releases/latest)

## 2026.11.16.51 — 16/11/2026

- Hiện số phiên bản trên thanh trên cùng. Bấm để kiểm tra bản mới và tải bộ cài từ GitHub chính thức.
- Có tùy chọn tự kiểm tra bản mới khi mở phần mềm, mặc định tắt. Không tự cài hoặc ghi đè chương trình đang mở; mất Internet không chặn nghiệp vụ.
- Kiểm tra cập nhật dùng HTTPS/TLS1.2, không cần tài khoản GitHub, không gửi thông tin SQL hoặc chứng từ; chỉ nhận release chính thức đúng kênh.
- Kiểm tra lại khởi động, 9 phân hệ, 18 ngữ cảnh form, tài nguyên, SQL, 184 mẫu Crystal và lưu/hủy chứng từ trên backup riêng. Xem phạm vi và các điểm còn chậm bên dưới.
- Engine nghiệp vụ và định nghĩa SQL không đổi. Portable/bộ cài dùng cùng host đã kiểm tra, không chứa khóa GitHub hoặc dữ liệu backup.

## 2026.11.16.50 — 16/11/2026

- Nhập máy chủ bằng IP, IP,cổng hoặc SERVER\INSTANCE; cổng riêng và các tùy chọn ít dùng nằm trong Nâng cao.
- Tự đọc mã định danh TEST, không yêu cầu nhân viên gõ GUID.
- Giữ hai cách xác thực Windows/SQL Server; Windows không yêu cầu nhập tên hoặc mật khẩu SQL riêng khi đã được IT cấp quyền.
- Có Chép lỗi đã lọc mật khẩu; tiếp tục hỗ trợ file cấu hình chia sẻ không có mật khẩu.
- Bổ sung hướng dẫn cho nhân viên/IT, gỡ lỗi, báo lỗi, mẫu cấu hình và script kiểm tra metadata chỉ đọc trên GitHub.
- Engine nghiệp vụ giữ nguyên; không tự cài hợp đồng SQL hoặc bỏ kiểm tra môi trường TEST.

## 2026.11.14.49

- Chuyển báo lỗi qua dịch vụ HTTPS; khóa GitHub nằm phía dịch vụ, không đóng trong bộ cài.
- Gửi báo lỗi và gửi lại dùng cùng mã để đối chiếu, không cần tài khoản GitHub của tester.
- Phát hành công khai trên repo phân phối riêng; repo nhận lỗi giữ Private. Link tải cố định dùng GitHub Latest.

Các bản này là UAT; xem [phạm vi kiểm thử](docs/TINH-TRANG-KIEM-THU.md).
