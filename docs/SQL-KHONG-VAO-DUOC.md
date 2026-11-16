> Tài liệu lịch sử cho bản52. Bản55 bỏ điều kiện177hợp đồng/VIEW DEFINITION/markerUAT khi đăng nhập; xem [hướng dẫn hiện tại](HUONG-DAN-IT.md). Không áp dụng các bước chuẩn bị contractlab dưới đây cho bản55.

# Đã tới SQL nhưng bị chặn tương thích

[Hướng dẫn IT](HUONG-DAN-IT.md) · [Gỡ lỗi kết nối](GO-LOI-KET-NOI.md)

Thông báo **“Thiếu hợp đồng SQL hoặc quyền VIEW DEFINITION”** trong G-Stars 2026.11.16.52 xuất hiện sau khi SqlClient đã mở được database và đọc định danh UAT. Bước này chưa chứng minh OLE DB, đăng nhập nghiệp vụ hoặc toàn bộ chức năng đã chạy được. Không cần đổi IP chỉ để xử lý thông báo này.

## IT kiểm tra một lần trên database TEST

1. [Tải bộ hướng dẫn và script](https://github.com/nnv4361-cmd/g-stars-downloads/archive/refs/heads/main.zip), giải nén. Đây là tài liệu chẩn đoán, không phải bộ cài client.
2. Trong thư mục `scripts`, mở `Kiem-tra-SQL.cmd`. Nhập máy chủ, đúng tên database TEST và kiểu xác thực giống G-Stars. Với SQL Authentication, mật khẩu được hỏi riêng và không lưu vào báo cáo. TLS bật và giữ xác minh chứng chỉ; không có thao tác tự sửa firewall/chứng chỉ.
3. Chạy bằng tài khoản SQL thực sự dùng cho G-Stars trước. Nếu kết quả yêu cầu đối chiếu quản trị, IT chạy lần nữa bằng tài khoản có quyền quản trị database TEST. Không cấp tài khoản quản trị này cho nhân viên.
4. Gửi hai file JSON trong `scripts/reports` cho người bảo trì. Báo cáo chỉ gồm metadata, tên database và hash; không có mật khẩu, dữ liệu khách hàng hay thân procedure. Vẫn xem đây là tài liệu nội bộ.

Nếu PowerShell bị chính sách công ty chặn, IT xem xét script theo chính sách của mình; có thể dùng [Check-SQL-TEST.sql](../scripts/Check-SQL-TEST.sql) trong SSMS để kiểm tra tên/quyền trước. Script SQL này không kiểm tra hash như công cụ PowerShell.

| Kết quả | Ý nghĩa và xử lý |
| --- | --- |
| `ADMIN_COMPARISON_REQUIRED` | Chưa đủ thông tin để kết luận thiếu procedure. Đối chiếu bằng chủ database; quyền `DENY` ở từng object có thể thắng quyền xem schema. |
| `BACKEND_MISSING` | Chủ database xác nhận thiếu ít nhất một hợp đồng. Cần gói backend đúng phiên bản; cấp quyền hoặc chạy `IT-Mark-UAT.sql` không bổ sung procedure. |
| `VERSION_MISMATCH` | Có định nghĩa nhưng hash khác bản client. Cần migration được kiểm chứng; không sửa hash, tạo procedure rỗng hay ghi đè SQL để vượt kiểm tra. |
| `ENCRYPTED_CONTRACTS` | Không kiểm tra được định nghĩa đã mã hóa. Cần bộ backend được hỗ trợ. |
| `READY_METADATA` | Đủ 177 định nghĩa đúng hash. Xem thêm `identityReady`, `coreVisible`; tiếp tục kiểm tra OLE DB và nghiệp vụ bằng G-Stars. Không phải chứng nhận toàn hệ thống. |

Nếu quản trị thấy đủ 177 hash nhưng tài khoản app không thấy, có [script cấp quyền metadata theo schema](../scripts/IT-Grant-SQL-Metadata.sql). Script mặc định **không chạy**: IT phải điền chính xác database TEST, database user có sẵn và xác nhận đây là TEST. Nó chỉ cấp `VIEW DEFINITION ON SCHEMA::client_lab`; không cấp sysadmin, quyền dữ liệu hay cài hợp đồng. Quyền `DENY` cần được IT đối chiếu riêng.

## Giới hạn phát hành hiện tại

G-Stars 52 kiểm tra **177 hợp đồng bổ sung do dự án tạo**. Đây không phải 44 thân SQL gốc còn thiếu trong quá trình reverse engineering. Bộ cài hiện chưa kèm migration hoàn chỉnh để bổ sung các hợp đồng vào một backup Carsoft nguyên bản. Vì vậy chưa thể cam kết chỉ cài client là chạy được trên backup ở công ty; đây là khoảng trống triển khai phía G-Stars.

Kho công khai này không chứa SQL nghiệp vụ, dữ liệu hoặc bản backup. Bộ chẩn đoán không thay thế gói backend. Ngoài định nghĩa procedure, gói đó còn cần kiểm chứng phụ thuộc bảng/kiểu dữ liệu, phiên bản SQL gốc, dữ liệu khởi tạo cần thiết, guard môi trường và quyền thực thi; không được sao chép dữ liệu thử từ lab sang TEST.

Đã kiểm thử công cụ trên backup riêng: 177 hash khớp; tài khoản không quyền; có quyền chạy nhưng không xem định nghĩa; cấp quyền schema; `DENY` từng object; thiếu tên; sai hash; script cấp quyền thực tế trong transaction rollback. 21 kiểm tra đạt. Không truy cập SQL công ty, không đổi client/Setup hay dữ liệu nghiệp vụ trong đợt này.

Tham khảo: [Microsoft — Metadata visibility](https://learn.microsoft.com/en-us/sql/relational-databases/security/metadata-visibility-configuration?view=sql-server-ver16).
