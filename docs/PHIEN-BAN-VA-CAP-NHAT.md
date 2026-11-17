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

## Phục hồi sự cố từ bản58

Trước khi thay file, updater58 mở tiến trình giám sát riêng, lưu nhật ký và bản hoàn tác. Nếu tiến trình cập nhật bị tắt giữa chừng, tiến trình giám sát hoàn tác các file đã thay rồi mở lại bản cũ. Nếu đã hoàn tất thay file, giữ bản mới. Nếu cả hai tiến trình cùng bị tắt, client có thể phục hồi từ yêu cầu DPAPI còn lưu khi mở lại. Không xóa thư mục cache phục hồi trong lúc này.

Kiểm thử ngắt tiến trình không phải thử mất điện, ổ đĩa hỏng hoặc hệ điều hành hỏng. Bản57 đã cài trước đó dùng updater57 để nâng lên58; cơ chế giám sát58 phục vụ những lần cập nhật do updater58 thực hiện. [Phạm vi bản58](BAN-SUA-58.md).

## Bản59

Chỉ worker đã giành quyền cập nhật mới được dọn gói và ghi kết quả. Tiến trình trùng, yêu cầu bị sửa hoặc yêu cầu đã hoàn tất bị từ chối mà không phá trạng thái phiên khác. Bản59 giữ cơ chế giám sát/hoàn tác58. [Các ca mở rộng](BAN-SUA-59.md).

## Bản60

Sửa kiểm tra số chứng từ nhập kho;195logic/flow. Giữ cấu hình SQL và ghi nhớ đăng nhập. [Chi tiết](BAN-SUA-60.md).

## Bản61

Thiết lập SQL lần đầu mở từ G-stars.exe; lưu xong tiếp tục đăng nhập. Giữ cấu hình cũ. Bản cũ bị chặn trước đăng nhập có thể tải Setup mới từ link cố định và cài đè. [Chi tiết](BAN-SUA-61.md).

## Bản62

Thông tin hiển thị và hướng dẫn dùng tên G-Stars. Cấu hình kết nối và đăng nhập được giữ nguyên. [Chi tiết](BAN-SUA-62.md).

## Bản63

Chữ và DPI; thiết lập hóa đơn theo đơn vị. Giữ cấu hình SQL và đăng nhập. [Chi tiết](BAN-SUA-63.md).
