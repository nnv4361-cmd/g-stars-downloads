# G-Stars

Phần mềm Windows — **bản thử nghiệm 2026.11.16.50**.

**[Tải G-Stars-Setup.exe — bản mới nhất](https://github.com/nnv4361-cmd/g-stars-downloads/releases/latest/download/G-Stars-Setup.exe)** · khoảng 223 MB · Windows 10/11

[Xem Releases và checksum](https://github.com/nnv4361-cmd/g-stars-downloads/releases/latest) · [Những thay đổi](CHANGELOG.md)

Không cần tài khoản GitHub để tải hoặc gửi báo lỗi. Link tải giữ nguyên khi phát hành bản mới.

## Bắt đầu

1. **IT** chuẩn bị SQL TEST riêng và thông tin kết nối.
2. **Nhân viên** tải bộ cài, cài G-Stars, nhận cấu hình từ IT rồi đăng nhập phần mềm.
3. Gặp lỗi: bấm **Báo lỗi** hoặc **Ctrl + Shift + F12** trong G-Stars.

| Cần làm gì? | Hướng dẫn |
| --- | --- |
| Cài đặt, đăng nhập, cập nhật | [Dành cho nhân viên](docs/HUONG-DAN-NHAN-VIEN.md) |
| Cấu hình SQL, cấp quyền, phát nhiều máy | [Dành cho IT](docs/HUONG-DAN-IT.md) |
| Không kết nối được, lỗi IP/tài khoản/TLS/database | [Gỡ lỗi kết nối](docs/GO-LOI-KET-NOI.md) |
| Gửi lỗi, mất mạng, mở phần mềm không được | [Báo lỗi](docs/BAO-LOI.md) |
| Phạm vi đã kiểm thử và việc còn cần xác minh | [Tình trạng kiểm thử](docs/TINH-TRANG-KIEM-THU.md) |

## Kết nối SQL từ bản 50

Ô **Máy chủ** nhận `IP`, `IP,cổng` hoặc `SERVER\INSTANCE`. Cổng, đơn vị và TLS nằm trong **Nâng cao**. G-Stars tự đọc mã định danh của database TEST đã chuẩn bị; người dùng không phải nhập mã này.

**Tài khoản kết nối SQL và tài khoản đăng nhập G-Stars là hai việc khác nhau.** Nếu IT cấp quyền Windows Authentication, chọn **Windows** và không nhập thêm tên/mật khẩu SQL. Nếu dùng SQL Authentication, IT cung cấp hoặc cấu hình tài khoản kết nối phù hợp; không cần tạo một SQL account riêng cho từng nhân viên chỉ để dùng G-Stars.

## Database để thử nghiệm

SQL Server phải đang chạy và database TEST phải tương thích G-Stars. Backup Carsoft gốc chưa bổ sung các thành phần G-Stars có thể không đủ để chạy. Xem [điều kiện database](docs/HUONG-DAN-IT.md#chuẩn-bị-database-test) trước khi phát cho nhiều máy.

## Phạm vi phát hành

Đây là bản UAT, chưa công bố nghiệm thu toàn bộ nghiệp vụ hoặc triển khai production. Bộ cài hiện chưa ký số; IT kiểm tra checksum và chính sách Windows trước khi cài. Các thư viện Microsoft/SAP giữ điều khoản cấp phép tương ứng.

Kho công khai này chứa bộ cài, tài liệu, mẫu cấu hình và công cụ hỗ trợ IT. SQL backup, thông tin đăng nhập thực tế, mã nguồn ứng dụng và repository nhận báo lỗi không được công khai. Gửi lỗi bằng nút trong G-Stars; không đăng dữ liệu khách hàng hoặc mật khẩu lên GitHub công khai.
