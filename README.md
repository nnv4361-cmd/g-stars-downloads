# G-Stars

Client Windows phục vụ kiểm thử trên SQL Server TEST đã restore backup Carsoft.

**Phiên bản hiện tại: 2026.11.16.55.** Dùng lại tài khoản, mật khẩu và quyền nghiệp vụ trong database Carsoft. Đường chạy thông thường không yêu cầu schema `client_lab`, 177 hợp đồng lab, quyền `VIEW DEFINITION` hay dấu UAT.

[Tải G-Stars-Setup.exe mới nhất](https://github.com/nnv4361-cmd/g-stars-downloads/releases/latest/download/G-Stars-Setup.exe) · [Các bản phát hành](https://github.com/nnv4361-cmd/g-stars-downloads/releases) · [Thay đổi](CHANGELOG.md)

Link tải cố định, không cần tài khoản GitHub. Repository này chứa bộ cài và hướng dẫn; không có backup, dữ liệu công ty, mật khẩu SQL hay application source.

1. IT restore backup Carsoft tương thích vào SQL Server TEST và cấp quyền kết nối.
2. Cài G-Stars; trong **Chọn SQL**, chọn máy chủ và database, kiểm tra rồi lưu cấu hình.
3. Đăng nhập bằng tài khoản Carsoft có sẵn trong database. Quyền và đơn vị được phép vẫn lấy từ SQL.

Windows Authentication là mặc định khi IT đã cấu hình quyền Windows trên server; không nhập tài khoản SQL trong chế độ này. SQL Authentication vẫn có nếu môi trường cần. Client không bỏ xác thực SQL Server hoặc tự cấp quyền quản trị.

| Nội dung | Hướng dẫn |
| --- | --- |
| IT cấu hình SQL và cài đặt | [Hướng dẫn IT](docs/HUONG-DAN-IT.md) |
| Nhân viên bắt đầu thử | [Hướng dẫn nhân viên](docs/HUONG-DAN-NHAN-VIEN.md) |
| Lỗi kết nối/đăng nhập/quyền | [Gỡ lỗi](docs/GO-LOI-KET-NOI.md) |
| Bản55 bỏ phụ thuộc lab như thế nào | [SQL Carsoft native](docs/NATIVE-55.md) |
| Kết quả và giới hạn | [Phạm vi kiểm thử](docs/TINH-TRANG-KIEM-THU.md) |
| Gửi bug từ phần mềm | [Báo lỗi](docs/BAO-LOI.md) |
| Phiên bản/cập nhật | [Cập nhật](docs/PHIEN-BAN-VA-CAP-NHAT.md) |

Backup khác ngày nhưng cùng cấu trúc được hỗ trợ là mục tiêu tương thích. Không cam kết mọi phiên bản Carsoft khác cấu trúc, mọi luồng nghiệp vụ hay toàn bộ SQL gốc đã được khôi phục. Đây là bản TEST; không tự chuyển sang database đang vận hành.
