# Hướng dẫn IT · G-Stars55

[Trang chính](../README.md) · [Gỡ lỗi](GO-LOI-KET-NOI.md) · [Phạm vi kiểm thử](TINH-TRANG-KIEM-THU.md)

## Chuẩn bị một lần

1. Restore backup Carsoft vào SQL Server TEST riêng, giữ dữ liệu vận hành tách biệt. Chọn backup cùng cấu trúc với client Carsoft đã cung cấp cho dự án.
2. Cấp quyền kết nối database và quyền dữ liệu/thực thi nghiệp vụ cần thiết. Bản55 không yêu cầu `client_lab`, `VIEW DEFINITION`, các marker `GStarsEnvironment`/`GStarsDatabaseId` hoặc cài thêm 177 procedure. Không chạy script đánh dấu UAT chỉ để đăng nhập bản55.
3. Cài thử trên một máy, xác minh đăng nhập, đúng đơn vị, lưu/mở lại chứng từ và xuất PDF trước khi phát rộng.

## Cấu hình trong G-Stars

Mở **Chọn SQL** tại màn đăng nhập. Nhập `IP`, `IP,cổng` hoặc `SERVER\INSTANCE`, chọn đúng database Carsoft TEST rồi bấm **Kiểm tra kết nối → Lưu cấu hình**. Có thể gõ chính xác tên database nếu không dùng danh sách. Cấu hình mới có hiệu lực khi mở phiên tiếp theo.

**Windows Authentication** là mặc định. SQL Server phải chấp nhận tài khoản/nhóm Windows của người chạy G-Stars; IT kiểm tra domain/trust/SPN/chính sách nếu môi trường dùng chúng. Client dùng danh tính Windows hiện tại và không cần nhập tên/mật khẩu SQL. Đường Windows/domain tại công ty chưa được dự án truy cập để nghiệm thu.

**SQL Authentication** vẫn có nếu môi trường không dùng được Windows integrated authentication. SQL login do IT quản lý; nhân viên không phải tự tạo tài khoản. Client vẫn phải xác thực với SQL Server. Bộ cài công khai không chứa credential dùng chung.

**Đăng nhập nghiệp vụ:** dùng tên/mật khẩu có sẵn trong `HT_NguoiDung`; quyền menu/thao tác từ `HT_Security`, cờ nghiệp vụ và đơn vị được phép theo dữ liệu Carsoft. Không tạo một admin G-Stars mới hoặc đổi quyền của tài khoản trong backup để ép sử dụng. Admin nghiệp vụ khác sysadmin của SQL Server.

**Nâng cao:** cổng, đơn vị mặc định và TLS. TLS bật mặc định, giữ kiểm tra chứng chỉ. IT xử lý chứng chỉ và tên server theo chính sách của mình; không thay runtime/registry toàn hệ thống để bỏ kiểm tra. Cổng mặc định1433 chỉ đúng khi SQL Server thực sự dùng cổng đó.

## Cài và phát cho nhiều máy

Tải [Setup mới nhất](https://github.com/nnv4361-cmd/g-stars-downloads/releases/latest/download/G-Stars-Setup.exe). Setup kiểm tra .NET Framework4.8 và SAP Crystal x86 phù hợp; prerequisite có thể cần quyền quản trị/restart. Không cài SQL Server ở mỗi máy khi đã dùng server TEST. Các chức năng Office vẫn cần Office phù hợp. Bộ cài chưa ký số; đối chiếu SHA256 của release theo chính sách công ty.

IT có thể xuất/nhập cấu hình máy chủ/database không có mật khẩu, xem [mẫu Windows](../examples/G-Stars.connection.json). Windows Authentication dùng quyền Windows của từng người/nhóm; SQL Authentication cần cấu hình mật khẩu tại đúng hồ sơ Windows chạy ứng dụng. Không copy file DPAPI giữa người dùng/máy; không gửi mật khẩu qua GitHub/chat.

## Giới hạn tương thích

Client kiểm tra cấu trúc thực tế rồi dùng SQL Carsoft gốc; tám báo cáo bổ sung cần thiết được xử lý bằng truy vấn có tham số trong client, không cài schema. Backup khác ngày cùng cấu trúc có thể có số liệu/quyền/đơn vị khác nhau. Backup khác phiên bản hoặc thiếu SQL gốc vẫn có thể không chạy một số chức năng; không tự ghi đè schema hay tạo procedure rỗng.

[Ghi chú kỹ thuật bản55](NATIVE-55.md). Cần IT pilot trên mạng/quyền thực tế; kết quả lab không thay thế nghiệm thu toàn hệ thống.
