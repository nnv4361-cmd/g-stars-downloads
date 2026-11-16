# Gỡ lỗi kết nối · G-Stars55

[Trang chính](../README.md) · [Hướng dẫn IT](HUONG-DAN-IT.md)

Trong Chọn SQL, bấm **Chép lỗi**; gửi thông báo đã che mật khẩu và phiên bản G-Stars. Không gửi password, token hoặc file cấu hình đã giải mã.

| Lỗi | Kiểm tra |
| --- | --- |
| Không tìm thấy máy chủ/hết thời gian | Đúng IP/DNS/cổng, SQL đang chạy, mạng/TCP/firewall. Với instance, dùng cổng thực tế nếu cơ chế phân giải không hoạt động. |
| 18456/18452 | SQL Server chưa chấp nhận kiểu xác thực/danh tính đang dùng. Windows cần IT cấp quyền phù hợp; SQL Authentication cần SQL login do IT quản lý. Tài khoản nghiệp vụ Carsoft không thay thế bước xác thực server. |
| 4060/916 | Chưa mở được database được chọn; kiểm tra tên và mapping/quyền sau restore. |
| TLS/SSL/chứng chỉ | IT kiểm tra chứng chỉ được tin cậy và tên server. Không tự bỏ xác minh chứng chỉ toàn hệ thống. |
| Thiếu bảng/cột/procedure | Sai cấu trúc/phiên bản backend hoặc chức năng gốc đang thiếu SQL. Ghi rõ tên lỗi và chức năng, không tạo procedure rỗng hoặc cấp sysadmin để vượt lỗi. |
| Báo thiếu177hợp đồng/VIEW DEFINITION/markerUAT khi kiểm tra kết nối | Kiểm tra đúng EXE và phiên bản; bản55 không yêu cầu những thành phần đó ở đường chạy thông thường. [Lỗi bản52 cũ](SQL-KHONG-VAO-DUOC.md). |
| Đăng nhập sai | Dùng tài khoản nghiệp vụ có sẵn trong đúng database vừa restore; mật khẩu có thể khác giữa các backup. |
| Không được vào đơn vị/mục nghiệp vụ | Kiểm tra quyền, cờ và danh sách đơn vị của chính tài khoản trong backup. Client không tự nâng quyền. |
| Kết nối được nhưng bảng trống | Kiểm tra đơn vị, ngày, trạng thái và quyền. Ghi rõ màn hình/mã chứng từ, đây không phải lỗi IP. |
| Cấu hình mất sau đổi máy/người dùng | Nhập lại cấu hình IT cấp; DPAPI và ghi nhớ đăng nhập gắn với người dùng Windows. |

Client kiểm tra cả SqlClient và OLE DB x86. SSMS kết nối được chưa đủ chứng minh tất cả driver/chức năng đã chạy. [Gửi bug](BAO-LOI.md) nếu chưa rõ nguyên nhân.
