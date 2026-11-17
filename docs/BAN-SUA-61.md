# G-Stars 2026.11.17.61 — thiết lập lần đầu

[Trang chính](../README.md) · [Hướng dẫn IT](HUONG-DAN-IT.md) · [Cập nhật](PHIEN-BAN-VA-CAP-NHAT.md)

Sửa lỗi mở G-stars.exe trên máy mới chỉ thông báo chưa có cấu hình rồi thoát, chưa tới đăng nhập để chọn SQL.

1. Mở G-Stars như bình thường. Máy chưa cấu hình sẽ mở Thiết lập kết nối; Windows có thể hỏi quyền quản trị để IT lưu dùng chung cho máy.
2. IT nhập kết nối SQL TEST đã có, kiểm tra rồi lưu.
3. G-Stars đọc lại cấu hình và tự đi tiếp tới đăng nhập. Nhân viên dùng tài khoản được cấp sẵn có; quyền lấy từ database. Các lần sau không hỏi thiết lập lại.

Nếu hủy quyền Windows hoặc đóng thiết lập: không đăng nhập, không ghi cấu hình, không kết nối tới SQL lab mặc định. Có thể mở lại khi IT sẵn sàng. Cấu hình lỗi/hỏng có đường thiết lập lại. Nút Start → G-Stars - Chọn SQL vẫn dùng được. Nếu bản cũ đang bị chặn trước đăng nhập, tải Setup mới từ link cố định và cài đè.

23 kiểm tra startup/7 trường hợp: chưa cấu hình, đã lưu, hủy, tiến trình thiết lập không lưu, cấu hình hỏng, IT inline, dữ liệu không hợp lệ. Dialog, SqlClient và OLE DB thật trên SQL backup Native55 riêng. QA giả lập Windows identity, quá trình xin quyền, vùng cấu hình và chuyển lưu cấu hình máy sang file DPAPI thuộc test. Chưa kiểm chứng UAC/MSI trên Windows sạch hay tài khoản Windows thứ hai; IT cần kiểm tra lại trên máy thật.

Hồi quy 52 auth/quyền, 109 mẫu native không lỗi/dialog, 17 cấu hình máy, viewer/PDF báo giá. 1.137 C# build độc lập đúng hash; 323 app files/334 kiểm tra archive chỉ đọc. Engine60 nguyên byte; 195 logic/flow của60 là bằng chứng kế thừa, không tính vừa chạy lại61. Giữ 455 định nghĩa SQL, audit không giảm; không SQL công ty/OpenClaw/Computer Use hoặc SQL copy mới. Chưa nghiệm thu toàn ERP; 44 thân SQL gốc còn thiếu.
