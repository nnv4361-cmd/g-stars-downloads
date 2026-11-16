# Lịch sử phát hành

[Về trang chính](README.md) · [Bản mới nhất](https://github.com/nnv4361-cmd/g-stars-downloads/releases/latest)

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
