# Gỡ lỗi kết nối

[Về trang chính](../README.md) · [Hướng dẫn IT](HUONG-DAN-IT.md)

Trong **Chọn SQL**, bấm **Chép lỗi** để lấy thông báo đã che mật khẩu. Ghi thêm phiên bản G-Stars, bước vừa bấm và kiểu xác thực. Không gửi mật khẩu hay file cấu hình đã giải mã.

| Biểu hiện | IT kiểm tra |
| --- | --- |
| Vướng ở ô Máy chủ | Dùng bản 50 trở lên. Nhập `IP`, `IP,cổng` hoặc `SERVER\INSTANCE`, không dán cả chuỗi kết nối. Cổng riêng nằm trong Nâng cao. |
| Không tìm thấy server/hết thời gian | Đúng IP/DNS và cổng thực tế; SQL Server đang chạy, TCP được cấu hình, đường mạng/firewall cho máy tester. Với tên instance, kiểm tra phân giải SQL Browser hoặc dùng IP,cổng. |
| SSMS kết nối được nhưng G-Stars không được | So lại máy chủ/cổng, kiểu xác thực, tài khoản Windows đang chạy, database và TLS; client kiểm tra cả SqlClient và OLE DB x86. |
| SQL báo 18456 hoặc 18452 | Sai/không được phép dùng kiểu xác thực, SQL login hoặc quyền Windows. Tài khoản đăng nhập G-Stars không thay thế SQL login. |
| SQL báo 4060 hoặc 916 | Tài khoản đã tới server nhưng chưa mở được database được chọn; kiểm tra đúng tên và quyền. |
| Không tải được danh sách database | Kiểm tra quyền truy cập/metadata; có thể gõ đúng tên database TEST được IT cấp rồi kiểm tra. Không chọn database khác để thử ghi. |
| Lỗi TLS/chứng chỉ/SSL | IT kiểm tra chứng chỉ được máy tester tin cậy và tên máy chủ. Không tự bỏ xác minh chứng chỉ hoặc tắt TLS toàn hệ thống. |
| Database chưa được chuẩn bị TEST/UAT | Chạy script kiểm tra chỉ đọc. IT xác minh đúng bản TEST rồi xử lý dấu môi trường; không đánh dấu database đang vận hành là TEST. |
| Thiếu `client_lab` hoặc thiếu quyền VIEW DEFINITION | Đây là bước tương thích sau kết nối SQL. Cần đủ 177 hợp đồng đúng phiên bản và quyền xem định nghĩa; `IT-Mark-UAT.sql` không cài các hợp đồng. |
| Hash/phiên bản hợp đồng SQL chưa khớp | Đối chiếu bản SQL với bản G-Stars được phát hành. Không sửa hash hoặc tạo procedure giả để bỏ chặn. |
| Database chỉ đọc hoặc định danh khác cấu hình | Xác minh đúng bản TEST, trạng thái và việc restore gần đây. Không tự đổi database gốc sang cho ghi. Chọn lại cấu hình theo IT. |
| Đổi máy/người dùng Windows rồi mất cấu hình | Nhập lại file cấu hình do IT cấp và cấu hình đúng hồ sơ Windows; mật khẩu DPAPI không dùng chung giữa người dùng. |

**Nếu đã kết nối nhưng màn nghiệp vụ không có dữ liệu:** kiểm tra đơn vị, khoảng ngày, trạng thái và quyền người dùng; báo rõ màn hình và mã chứng từ. Việc này khác lỗi nhập IP.

Nếu chưa tìm ra nguyên nhân, [gửi báo lỗi từ G-Stars](BAO-LOI.md), kèm thông báo và thao tác lặp lại. Có thể mở báo lỗi trước khi đăng nhập nghiệp vụ.
