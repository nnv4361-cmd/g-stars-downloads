# G-Stars

Client Windows dùng database Carsoft trên SQL Server TEST.

**Phiên bản hiện tại: 2026.11.16.56.** IT cấu hình kết nối một lần trên mỗi máy; nhân viên mở G-Stars và đăng nhập bằng tài khoản Carsoft có sẵn. Quyền nghiệp vụ và đơn vị được phép vẫn lấy từ database.

[Tải bộ cài mới nhất](https://github.com/nnv4361-cmd/g-stars-downloads/releases/latest/download/G-Stars-Setup.exe) · [Các bản phát hành](https://github.com/nnv4361-cmd/g-stars-downloads/releases) · [Thay đổi](CHANGELOG.md)

Link tải cố định, không cần tài khoản GitHub. Repository tải không chứa backup, dữ liệu công ty, mật khẩu kết nối hoặc source ứng dụng.

1. IT cài G-Stars, mở **Thiết lập kết nối** bằng quyền quản trị và lưu cấu hình SQL TEST.
2. Nhân viên mở G-Stars, chọn đơn vị được phép và đăng nhập bằng tài khoản Carsoft.
3. Gửi lỗi ngay trong G-Stars; không cần tài khoản GitHub.

Bản56 sửa lỗi xem/in báo giá liên quan báo cáo con Crystal; tăng chữ nhỏ lên 9pt và làm rõ màu chữ. Giữ nguyên các trường, menu và cách thao tác nghiệp vụ. Cấu hình kết nối cũ được giữ khi nâng phiên bản.

| Nội dung | Hướng dẫn |
| --- | --- |
| IT thiết lập một lần | [Hướng dẫn IT](docs/HUONG-DAN-IT.md) |
| Nhân viên sử dụng | [Hướng dẫn nhân viên](docs/HUONG-DAN-NHAN-VIEN.md) |
| Cập nhật từ bản đang dùng | [Phiên bản và cập nhật](docs/PHIEN-BAN-VA-CAP-NHAT.md) |
| Kết nối gặp lỗi | [Gỡ lỗi](docs/GO-LOI-KET-NOI.md) |
| Thay đổi bản56 | [Bản sửa56](docs/BAN-SUA-56.md) |
| Bằng chứng và giới hạn | [Kiểm thử](docs/TINH-TRANG-KIEM-THU.md) |
| Gửi báo lỗi | [Báo lỗi](docs/BAO-LOI.md) |

Không yêu cầu schema client_lab, 177 hợp đồng lab, VIEW DEFINITION hoặc marker UAT để kết nối thông thường. Chỉ dùng backup có cấu trúc phù hợp với phiên bản Carsoft cung cấp cho dự án. Chưa chứng nhận toàn ERP hoặc mọi phiên bản backup;44 thân SQL gốc vẫn thiếu. Không tự chuyển sang database vận hành.
