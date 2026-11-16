# G-Stars58

[Trang chính](../README.md) · [Cập nhật](PHIEN-BAN-VA-CAP-NHAT.md) · [Kiểm thử](TINH-TRANG-KIEM-THU.md)

Thêm giám sát và phục hồi cập nhật portable khi tiến trình bị tắt đột ngột. Nhật ký lưu trước khi thay từng file, kiểm tra hash bản hoàn tác, hoàn tác đồng bộ cả danh mục phiên bản. Không ghi đè file đã được thay đổi ngoài updater sau sự cố. Yêu cầu phục hồi mã hóa DPAPI theo người dùng; cấu hình SQL và thông tin ghi nhớ nằm ngoài gói update.

43kiểm tra crash trên fixture riêng: ngắt sau giải nén, sau lần thay file thứ nhất/thứ hai, sau commit, tắt cả worker và guardian rồi chạy điểm phục hồi lạnh. Dùng tiến trình thật và thao tác file thật; chỉ ngắt đúng child do bộ test tạo. Không ngắt Windows/SQL/OpenClaw.72core và23chính sách cập nhật giữ đạt. Engine nghiệp vụ không đổi.

Luồng57→58 kiểm tra bằng các control Kiểm tra bản mới/Cập nhật của đúng assembly57, tải gói chính thức, chờ đóng và áp dụng; worker thử điều chỉnh xác minh PID sang đúng probe sở hữu và mở client mới ở chế độ chẩn đoán. Sau đó kiểm tra đăng nhập/menu bằng native harness trên SQL backup riêng. Phân biệt kiểm tra fixture với nghiệm thu máy người dùng.

Nhánh installed vẫn dùng Setup đã kiểm tra; thử handoff giả lập và đọc archive, chưa chạy MSIapply/UAC thật trong lab. IT cần thử cập nhật trên máy cài thực tế. Chưa kiểm chứng mất điện/ổ đĩa hỏng/mọi chính sách Windows/toànERP;44thânSQLgốc chưa khôi phục.
