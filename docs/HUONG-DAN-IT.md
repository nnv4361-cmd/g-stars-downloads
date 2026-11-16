# Hướng dẫn IT

[Về trang chính](../README.md) · [Gỡ lỗi](GO-LOI-KET-NOI.md) · [Nhân viên](HUONG-DAN-NHAN-VIEN.md)

## Trước khi phát cho nhân viên

Chuẩn bị SQL TEST tương thích, chọn cách xác thực, cài thử trên một máy và kiểm tra kết nối trước khi phát rộng. G-Stars kết nối trực tiếp đến SQL Server đang chạy; bộ cài không cài SQL Server hoặc restore một file `.bak` tự động.

## Cài bộ client

- Windows 10/11; ứng dụng và Crystal chạy x86, kể cả khi Windows là 64-bit.
- Bộ cài có phần kiểm tra/cài .NET Framework 4.8 và Crystal x86 phù hợp. Một phiên bản Crystal khác có thể bị chặn để IT kiểm tra, không tự hạ bản runtime dùng chung.
- Những thao tác phụ thuộc Microsoft Office vẫn cần Office phù hợp trên máy.
- Bộ cài G-Stars chưa ký số. Kiểm tra SHA256 và chính sách công ty; không hướng dẫn người dùng bỏ qua cảnh báo bảo mật chưa được IT xác minh.

Đối chiếu file với [SHA256SUMS.txt của release](https://github.com/nnv4361-cmd/g-stars-downloads/releases/latest/download/SHA256SUMS.txt):

```powershell
Get-FileHash .\G-Stars-Setup.exe -Algorithm SHA256
```

## Chẩn đoán lỗi thiếu hợp đồng SQL

Nếu đã nhập máy chủ nhưng gặp lỗi “Thiếu hợp đồng SQL hoặc quyền VIEW DEFINITION”, làm theo [bộ kiểm tra chỉ đọc](SQL-KHONG-VAO-DUOC.md). Bộ cài52 chưa có migration backend đầy đủ cho backup Carsoft nguyên bản; đánh dấu UAT không thay thế bước đó.

## Chuẩn bị database TEST

Database cần:

- Là bản TEST riêng, cho ghi, có cấu trúc Carsoft tương thích với bản G-Stars này.
- Có **177 hợp đồng SQL `client_lab` đúng phiên bản**; client kiểm tra định nghĩa để tránh chạy nhầm phiên bản.
- Có dấu môi trường `GStarsEnvironment=UAT` và mã `GStarsDatabaseId` hợp lệ.
- Tài khoản kết nối được cấp quyền nghiệp vụ cần thiết và quyền xem định nghĩa các thành phần `client_lab`. Tài khoản dùng app không cần quyền SQL Server `sysadmin` chỉ để đăng nhập G-Stars.

**Chỉ restore backup Carsoft gốc chưa chắc đáp ứng các điều kiện này.** Repo này không có backup hoặc bộ cài 177 hợp đồng. Nếu thiếu, nhận database UAT/bộ triển khai SQL tương thích từ người phụ trách dự án; không tạo procedure rỗng hoặc bỏ kiểm tra để đi tiếp.

Hai công cụ hỗ trợ:

1. [Check-SQL-TEST.sql](../scripts/Check-SQL-TEST.sql): chạy trên database TEST đã chọn trong SSMS; chỉ đọc metadata để kiểm tra dấu TEST, cấu trúc tối thiểu và các tên thành phần/quyền còn thiếu. Không xác minh hash, không thay thế kiểm tra trong G-Stars.
2. [IT-Mark-UAT.sql](../scripts/IT-Mark-UAT.sql): chỉ dùng khi đã xác nhận đúng database TEST. Sửa biến tên database và biến xác nhận đầu file rồi IT chạy thủ công. Script chỉ thêm dấu TEST/mã định danh, **không cài 177 hợp đồng** và không chuyển đổi database thành phiên bản tương thích.

Từ bản 50, G-Stars tự đọc mã định danh khi kiểm tra kết nối. Nhân viên không phải ghi lại hoặc gõ mã này.

## Cấu hình kết nối

Mở **G-Stars → Chọn SQL**, hoặc **Start Menu → G-Stars - Chon SQL**.

| Ô nhập | Cách dùng |
| --- | --- |
| Máy chủ | `192.0.2.10`, `192.0.2.10,1435` hoặc `SQL-TEST\SQLEXPRESS` — ví dụ, thay bằng địa chỉ thật |
| Xác thực | Windows hoặc SQL Server, theo cấu hình SQL TEST |
| Tài khoản/mật khẩu SQL | Chỉ nhập khi chọn SQL Server; không dùng tài khoản nghiệp vụ G-Stars thay cho SQL login |
| Database test | Tải danh sách hoặc gõ chính xác tên database TEST |

IP/tên máy không ghi cổng mặc định dùng 1433. `SERVER\INSTANCE` dùng cơ chế phân giải instance; nếu SQL Browser không dùng được, nhập `IP,cổng` thực tế. Không phải cổng nào cũng là 1433.

Chọn **Kiểm tra kết nối → Lưu cấu hình**. Nếu thay đổi khi đang mở phiên nghiệp vụ, đóng/mở lại G-Stars sau khi lưu công việc.

## Chọn kiểu xác thực

**Windows Authentication:** dùng danh tính Windows đang chạy ứng dụng. IT phải cấp quyền cho tài khoản/nhóm Windows phù hợp và xác minh điều kiện domain/trust của môi trường. Client không cần tên hoặc mật khẩu SQL riêng. Đây không phải chế độ bỏ xác thực.

**SQL Authentication:** dùng SQL login do IT quản lý. Không bắt buộc tạo một SQL login riêng cho mỗi nhân viên; chọn phương án và quyền theo chính sách công ty. Mật khẩu được nhập/lưu trong cấu hình của người dùng Windows, không đóng vào bộ cài công khai.

**Tài khoản G-Stars:** đăng nhập vào nghiệp vụ sau khi kết nối database. Quyền admin trong G-Stars khác quyền quản trị SQL Server.

## Nâng cao và TLS

**Nâng cao** chứa cổng riêng (`0` là tự động theo ô Máy chủ), đơn vị mặc định và TLS. TLS bật mặc định, xác minh chứng chỉ được giữ. Khi lỗi chứng chỉ, kiểm tra CA tin cậy, chứng chỉ server và tên máy chủ; không tự tắt TLS hoặc đổi registry của toàn máy để xử lý một lỗi nhập IP.

Kiểm tra cả SqlClient và OLE DB x86 trong client; việc kết nối được từ SSMS chưa đủ chứng minh đường driver của G-Stars đã sẵn sàng.

## Phát cấu hình cho nhiều máy

1. Trên một máy đã kiểm tra, chọn **Xuất cấu hình** để tạo `G-Stars.connection.json`; file không có mật khẩu.
2. Cho nhân viên **Nhập cấu hình**, hoặc đặt file cạnh `app\G-stars.exe` theo quy trình triển khai của IT. Có [mẫu cấu hình Windows](../examples/G-Stars.connection.json) với địa chỉ minh họa.
3. Windows Authentication cần quyền của từng người/nhóm Windows; SQL Authentication cần cấu hình mật khẩu tại đúng hồ sơ Windows sẽ chạy app, một lần.
4. Không copy `%LOCALAPPDATA%\G-Stars\connection-v1.dpapi` giữa các tài khoản/máy. File được mã hóa theo người dùng Windows.

Bộ cài không có sẵn địa chỉ, tài khoản SQL hoặc dữ liệu của công ty. Phần **Báo lỗi** đã cấu hình sẵn, không cần nhập khóa GitHub ở từng máy.

## Kiểm tra tại công ty

Thử kết nối từ máy nhân viên; đăng nhập, chọn đơn vị, đọc/lưu/mở lại chứng từ thử và in/xuất PDF với dữ liệu TEST. Kiểm tra hai người dùng, quyền và máy in cần dùng. Mạng/domain/chứng chỉ/quyền SQL công ty chưa được dự án truy cập kiểm chứng; xem [phạm vi kiểm thử](TINH-TRANG-KIEM-THU.md).
