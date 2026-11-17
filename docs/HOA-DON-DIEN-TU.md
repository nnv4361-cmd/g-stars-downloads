# Thiết lập hóa đơn điện tử

[Trang chính](../README.md) · [Hướng dẫn IT](HUONG-DAN-IT.md) · [Bản63](BAN-SUA-63.md)

1. Đăng nhập tài khoản quản trị và chọn đúng đơn vị làm việc.
2. Bấm **Hóa đơn điện tử** trên thanh đầu của G-Stars.
3. Chọn nhà cung cấp; nhập MST, tài khoản/mật khẩu dịch vụ, mẫu số, ký hiệu và link riêng của công ty.
4. Bấm **Kiểm tra thông tin**, rồi **Lưu**. Kiểm tra thông tin chỉ kiểm tra định dạng, không xác thực tài khoản dịch vụ.

Mỗi đơn vị có cấu hình riêng. Không cần thay mã nguồn khi đổi MST. Tài khoản/mật khẩu dịch vụ hóa đơn khác tài khoản đăng nhập G-Stars. Không gửi mật khẩu qua chat hoặc báo lỗi.

VNInvoice/V50 tự điền đường API chuẩn khi ô API trống; IT có thể xem trong **Thiết lập API nâng cao**. Bản63 dùng MST/mẫu/ký hiệu của đơn vị hiện tại. Chưa có kiểm thử phát hành/ký thật trong phiên63.

M-Invoice: nhập link công ty được cấp, ví dụ cổng staging dùng cho thử nghiệm; không suy ra link production từ MST. G-Stars63 lưu được thông tin nhưng **chưa bật gửi M-Invoice**. Metadata staging đã đọc được, tài khoản và hợp đồng gửi tích hợp cần được kiểm chứng trước. Không dùng đường API V50 cho M-Invoice. Nhà cung cấp khác cũng chỉ lưu cấu hình khi chưa có bộ kết nối.

Mật khẩu được che trong giao diện. Dữ liệu cấu hình dùng định dạng lưu SQL hiện hữu của đơn vị; bản63 không thay đổi cơ chế lưu mật khẩu dịch vụ trong SQL. IT cần quản lý quyền truy cập database và không đưa backup/khóa dịch vụ lên repository công khai.
