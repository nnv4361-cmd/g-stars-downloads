# G-Stars56

[Trang chính](../README.md) · [Kiểm thử](TINH-TRANG-KIEM-THU.md)

- Cấu hình IT dùng chung cho cả máy, DPAPI LocalMachine và ACL chỉ cho Administrators/SYSTEM sửa; người dùng đọc để ứng dụng kết nối. Giữ cấu hình cá nhân cũ làm đường tương thích. Không đóng credential trong bộ cài công khai.
- Mặc định SQL Server ở màn IT để phù hợp cách IT vừa kết nối thành công. Nhân viên chỉ thấy đăng nhập Carsoft; lựa chọn xác thực kết nối không còn là việc mỗi nhân viên phải làm.
- Tái hiện được lỗi xem báo giá trên bản55: **Not supported within subreports.** Sửa bộ kiểm tra push-data Crystal: không đọc metadata không cần thiết sau khi đã push dữ liệu và không duyệt Subreports bên trong subreport. Giữ kiểm tra dữ liệu chưa được cấp và vòng đời báo cáo.
- Chữ nhỏ trên các control nhập/nhãn được tăng lên9pt, chữ trung tính tối hơn. Đối chiếu240control màn báo giá giữ tên, kiểu, parent và thứ tự Tab; không đổi SQL hay logic nghiệp vụ. Chưa thay đổi cơ chế DPI toàn ứng dụng; độ rõ trên màn hình IT cần xác nhận.
- Builder host-only lấy đúng phiên bản từ EXE và cập nhật tài liệu đi kèm; source C# có thể tái build độc lập. Engine nghiệp vụ giữ nguyên byte so55.

Bộ cài và portable cùng phiên bản56. Cơ chế cập nhật hiện tại tự kiểm tra và mở link tải Setup; chưa tự cài nền hoặc thay từng file khi đang làm việc. IT cần thử lại chức năng và máy in thực tế; test lab không thay nghiệm thu toàn hệ thống.
