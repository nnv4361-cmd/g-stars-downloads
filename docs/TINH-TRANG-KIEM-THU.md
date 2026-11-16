# Kiểm thử G-Stars57

[Trang chính](../README.md) · [Bản57](BAN-SUA-57.md)

| Phạm vi | Bằng chứng |
| --- | --- |
| Core updater |72kiểm tra: tải đủ/thiếu/quá kích thước/saihash/hủy, metadata giả, traversal/tên file/duplicate ZIP, SQL sentinel, thay file, lỗi giữa chừng/hoàn tác/file khóa/xung đột tài liệu, close-cancel/commit và DPAPI ticket |
| Cài đặt |Handoff bộ cài kiểm tra callback giả lập, tham số passive/norestart, exitcode/UAC cancel giả; chưa chạy Setup/MSIapply/UAC thật trong lab |
| Portable |Core thao tác file thật trên fixture riêng. Gói phát hành được kiểm tra từng hash; bằng chứng worker tải gói công khai/thay file/khởi động diagnostic được ghi riêng trong dự án, không chạy đăng nhập công ty |
| SQL và giao diện |52kiểm tra tài khoản/quyền/8báo cáo,17cấu hình IT,109mẫu native, xem/PDF báo giá từ backup riêng; engine và logic lưu chứng từ giữ nguyên56 |
| Nguồn |1.136C# tái build độc lập đúng host/engine/worker/runtime;1075source gốc giữ nguyên |
| Đóng gói |323appfiles,334kiểm tra archive và334release-sync theo số file;5asset gồm Setup, hướng dẫn, SHA256 và gói update |

Chỉ dùng SQLbackup scenario dự án, không truy cập SQL công ty/OpenClaw; không thêm SQLcopy/backup hoặc đổi runtime toàn hệ thống.455định nghĩa giữ hash (424nghiệp vụ+31helper), audit/fixture được bảo toàn theo phạm vi test. Các giao dịch normal/NVAT70kiểm tra và PDF đã chạy ở56, engine nghiệp vụ giữ nguyên; không cộng lại thành test57 mới.

Chưa nghiệm thu toàn ERP, mọi35backendroute/8oracle dữ liệu đầy đủ,44SQLgốc vẫn thiếu/0khôi phục; Windows sạch, UAC/bộ cài thật, hai Windowsuser thật, Office, máy in, DPI/mạng/quyền công ty. Không tuyên bố crash/power-loss recovery hoặc mọi trường hợp mất điện đã được kiểm thử; hoàn tác có kiểm tra với lỗi I/O được tiêm trong lab.
