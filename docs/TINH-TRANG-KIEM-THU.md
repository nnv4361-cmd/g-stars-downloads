# Kiểm thử G-Stars56

[Trang chính](../README.md) · [Bản sửa56](BAN-SUA-56.md)

Toàn bộ SQL test chỉ dùng scenario backup riêng trong container dự án, không có schema client_lab hoặc marker lab. Tài khoản kết nối không phải sysadmin/db_owner và bị DENY VIEW DEFINITION. Không truy cập SQL công ty/OpenClaw.

| Phạm vi | Kết quả lab |
| --- | --- |
| Lỗi xem báo giá | Bản55 tái hiện Not supported within subreports; bản56 mở viewer và xuất PDF thật từ báo giá có dữ liệu |
| Nhánh in | Kiểm tra core gửi đúng số bản/khoảng trang một lần, chặn khoảng trang sai; bộ nhận giả lập, không gửi máy in vật lý |
| Chữ và thao tác |240control giữ tên/kiểu/parent/Tab;239font nhỏ thay đổi,68ô nhập nhỏ được tăng lên9pt, tăng tương phản; chưa nghiệm thu cảm nhận màn hình/DPI thật của IT |
| Cấu hình IT cả máy |17kiểm tra mã hóa, DPAPI format, owner/ACL, Users chỉ đọc, tamper, lưu lỗi giữ cấu hình cũ, cập nhật nguyên tử và export không mật khẩu; fixture nằm riêng, không chạm ProgramData thật hoặc UAC |
| Đăng nhập/quyền/báo cáo |52kiểm tra trên backend native, dùng tài khoản/quyền SQL;8báo cáo nhúng, output/NULL/phiên tạm đúng phạm vi đã kiểm chứng |
| Menu và màn nghiệp vụ |109mẫu native,9phân hệ/18ngữ cảnh;0lỗi trong lượt chạy |
| Lưu/mở lại/hủy hóa đơn |70kiểm tra normal/NVAT, đọc lại độc lập, khóa kỳ/tài khoản/lỗi/replay/rollback/dọn fixture; PDF Crystal thật |
| Nguồn và bộ cài |1.133C# tái build độc lập đúng host/engine/runtime;322appfiles đúng hash,333kiểm tra archive; engine giữ nguyên so55 |

Không phải chứng nhận toàn ERP hoặc mọi backup.44thânSQLgốc vẫn thiếu/0khôi phục;35nhánh backend và số liệu đầy đủ của8báo cáo cần mở rộng nghiệm thu. Chưa nghiệm thu Windows sạch/installer apply/UAC thật/hai tài khoản Windows thật/Windows domain/mạng công ty/Office/máy in vật lý. Dữ liệu rỗng chỉ chứng minh schema/adapter, không phải oracle tài chính đầy đủ.
