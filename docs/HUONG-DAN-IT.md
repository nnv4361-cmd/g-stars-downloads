# IT thiết lập G-Stars

[Trang chính](../README.md) · [Gỡ lỗi](GO-LOI-KET-NOI.md)

## Thiết lập một lần trên mỗi máy

1. Restore backup Carsoft phù hợp vào SQL Server TEST. Cấp quyền kết nối, truy cập dữ liệu và thực thi nghiệp vụ cho danh tính kết nối do IT quản lý.
2. Cài G-Stars rồi mở **Cau-hinh-SQL / Thiết lập kết nối**, hoặc chạy `G-stars.exe --configure-sql`. Windows sẽ yêu cầu quyền quản trị khi cần.
3. Nhập máy chủ (`IP`, `IP,cổng` hoặc `SERVER\INSTANCE`), database và thông tin kết nối SQL TEST mà IT đã sử dụng thành công. SQL Server là lựa chọn mặc định trong màn thiết lập IT; tùy chọn Windows vẫn dành cho môi trường đã cấp quyền Windows.
4. Bấm **Kiểm tra kết nối → Lưu cấu hình**. Cấu hình được áp dụng cho mọi người dùng Windows trên máy đó. Mở lại G-Stars sau khi đổi kết nối.
5. Nhân viên chỉ nhập tài khoản Carsoft và chọn đơn vị được phép tại màn đăng nhập. Không cấp thêm tài khoản nghiệp vụ hoặc nâng quyền trong database để ép chạy.

Tài khoản kết nối máy chủ do IT cấu hình; tên/mật khẩu/quyền nghiệp vụ lấy từ `HT_NguoiDung`, `HT_Security` và dữ liệu Carsoft. Nhân viên không phải chọn kiểu xác thực hay nhập tài khoản kết nối SQL mỗi lần làm việc.

## Cấu hình và cập nhật

Cấu hình chung nằm tại `%ProgramData%\G-Stars\connection-machine-v1.dpapi`, mã hóa theo máy. Administrators/SYSTEM được sửa; người dùng Windows trên máy có quyền đọc để client kết nối. Dùng danh tính SQL có quyền tối thiểu phù hợp, không đóng sysadmin trong cấu hình. Cơ chế này không giữ bí mật trước người có quyền chạy client trên máy.

Không copy file mã hóa sang máy khác. IT thiết lập từng máy hoặc triển khai cấu hình bằng công cụ quản trị nội bộ theo chính sách của mình. File xuất JSON chỉ mang thông tin không có mật khẩu.

Cấu hình cá nhân của bản trước vẫn là đường tương thích nếu chưa có cấu hình chung. Bản cập nhật giữ định dạng cũ và không tự xóa/đổi server, database hay mật khẩu. Khi đã có cấu hình chung thì cấu hình IT được ưu tiên. [Cách cập nhật](PHIEN-BAN-VA-CAP-NHAT.md).

## Điều kiện môi trường

Setup kiểm tra .NET Framework4.8 và Crystal x86 phù hợp; prerequisite có thể cần quyền quản trị hoặc restart. Không cần cài SQL Server trên từng máy nếu dùng server TEST. Những chức năng Office vẫn cần Office tương thích. Bộ cài chưa ký số; đối chiếu SHA256 của release theo chính sách IT.

Giữ TLS và chứng chỉ phù hợp; không tự mở SQL ra Internet. Khác LAN cần tuyến mạng/VPN được IT cho phép. Windows/domain và mạng công ty chưa được dự án truy cập để nghiệm thu.

Không cần cài client_lab/177 procedure, cấp VIEW DEFINITION hoặc đánh dấu UAT chỉ để kết nối bản56. Client kiểm tra cấu trúc thực tế và không tự cài schema/reset dữ liệu. Backup khác cấu trúc hoặc thiếu SQL gốc vẫn có thể không chạy một số chức năng. [Phạm vi kiểm thử](TINH-TRANG-KIEM-THU.md).
