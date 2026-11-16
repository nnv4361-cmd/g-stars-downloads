# Cập nhật ngay trong G-Stars

[Trang chính](../README.md) · [IT](HUONG-DAN-IT.md)

## Từ bản57 trở đi

1. Lưu công việc và đóng các màn nghiệp vụ, trở về màn chính.
2. Bấm **v... → Kiểm tra bản mới → Cập nhật** khi có bản mới.
3. G-Stars tự tải file chính thức, hiển thị tiến độ và kiểm tra kích thước/SHA256. Có thể Hủy khi đang tải.
4. G-Stars đóng phiên an toàn, cập nhật rồi mở lại. Bản cài có thể hiện yêu cầu quản trị Windows; IT xác nhận theo chính sách. Không cần chọn file tải về hoặc mở Setup thủ công.

Bản cài dùng bộ cài chính thức ở chế độ tiến trình tự động `/passive /norestart`; không tự reboot. Portable ở thư mục có quyền ghi được thay file ngay tại chỗ, có bản hoàn tác khi thao tác thay file bị lỗi. Cập nhật không tự lưu/ghi sổ chứng từ và không ép tắt tiến trình. Nếu màn nghiệp vụ vẫn mở hoặc sự kiện đóng bị hủy, không bắt đầu thay file.

Cấu hình SQL theo máy/cá nhân, mật khẩu, ghi nhớ đăng nhập và hàng đợi báo lỗi nằm ngoài phần file ứng dụng được thay. File chia sẻ `G-Stars.connection.json` không bị gói portable ghi đè. Mẫu tài liệu đã sửa tại máy được giữ nếu bản phát hành không đổi mẫu đó; nếu có xung đột thì dừng để IT xử lý. Không reset database hay tự nâng quyền nghiệp vụ.

Có thể bật **Tự kiểm tra bản mới khi mở G-Stars**. Tải/cài chỉ bắt đầu khi người dùng bấm Cập nhật; không tự cài nền trong lúc làm việc.

## Chuyển từ bản56 hoặc cũ hơn

Bản cũ chỉ mở link tải. Cần cài bản57 một lần: **v... → Kiểm tra bản mới → Tải bộ cài mới**, lưu việc/đóng G-Stars rồi chạy Setup. Sau khi có bản57, những bản mới tiếp theo dùng nút Cập nhật trong ứng dụng. Không thể thêm mã updater vào EXE cũ chỉ bằng thay nội dung trang GitHub.

[Setup cố định](https://github.com/nnv4361-cmd/g-stars-downloads/releases/latest/download/G-Stars-Setup.exe). Bộ cài chưa ký số; metadata và digest lấy từ nguồn GitHub chính thức qua HTTPS. Người dùng không đăng nhập GitHub, không nhập khóa. Gói `G-Stars-Update.zip` dành cho updater, không thay thế bộ cài prerequisite cho máy mới.

[Phạm vi kiểm thử](TINH-TRANG-KIEM-THU.md) phân biệt thay file portable thực tế với nhánh bộ cài/UAC cần IT pilot.
