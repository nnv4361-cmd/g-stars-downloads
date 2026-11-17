# G-Stars

Client Windows dùng database Carsoft trên SQL Server TEST.

**Phiên bản hiện tại:2026.11.17.60.** Có nút cập nhật ngay trong ứng dụng: tự tải, kiểm tra file, nâng phiên bản và mở lại; giữ cấu hình SQL và đăng nhập đã ghi nhớ.

[Tải Setup mới nhất](https://github.com/nnv4361-cmd/g-stars-downloads/releases/latest/download/G-Stars-Setup.exe) · [Các bản phát hành](https://github.com/nnv4361-cmd/g-stars-downloads/releases) · [Thay đổi](CHANGELOG.md)

Link cố định, không cần tài khoản GitHub. Repository tải không có backup, dữ liệu công ty, SQL credential hoặc source ứng dụng.

1. IT cài G-Stars và lưu kết nối một lần trên mỗi máy.
2. Nhân viên đăng nhập bằng tài khoản Carsoft hiện có; quyền và đơn vị lấy từ database.
3. Từ bản57, mở nút **v... → Kiểm tra bản mới → Cập nhật** khi có phiên bản mới. Lưu và đóng các màn nghiệp vụ trước; ứng dụng không tự lưu/ghi sổ thay nhân viên. Windows vẫn có thể yêu cầu quyền quản trị.

Bản56 trở về trước cần cài57 một lần để có chức năng này. [Cách cập nhật](docs/PHIEN-BAN-VA-CAP-NHAT.md).

| Nội dung | Hướng dẫn |
| --- | --- |
| IT thiết lập kết nối | [Hướng dẫn IT](docs/HUONG-DAN-IT.md) |
| Nhân viên bắt đầu | [Hướng dẫn nhân viên](docs/HUONG-DAN-NHAN-VIEN.md) |
| Cập nhật tự động | [Cập nhật](docs/PHIEN-BAN-VA-CAP-NHAT.md) |
| Kết nối gặp lỗi | [Gỡ lỗi](docs/GO-LOI-KET-NOI.md) |
| Bản60 và giới hạn | [Bản60](docs/BAN-SUA-60.md) |
| Kiểm thử | [Kết quả](docs/TINH-TRANG-KIEM-THU.md) |
| Gửi báo lỗi | [Báo lỗi](docs/BAO-LOI.md) |

Không cần client_lab,177hợp đồng lab,VIEW DEFINITION hoặc marker UAT khi kết nối thông thường. Chỉ dùng SQL TEST phù hợp. Chưa chứng nhận toàn ERP/mọi phiên bản backup;44thân SQL gốc còn thiếu.

Bản58 bổ sung phục hồi khi tiến trình cập nhật portable bị tắt giữa chừng. [Thay đổi và kiểm thử](docs/BAN-SUA-58.md).

Bản59 sửa xung đột tiến trình cập nhật và chạy lại yêu cầu cũ. [Kiểm thử mở rộng](docs/BAN-SUA-59.md).

Bản60 sửa kiểm tra số chứng từ nhập kho;195kiểm tra logic/flow trên SQL backup riêng. [Kết quả](docs/BAN-SUA-60.md).
