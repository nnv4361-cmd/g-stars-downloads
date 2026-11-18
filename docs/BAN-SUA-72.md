# G-Stars 2026.11.18.72

[Trang chính](../README.md) · [Cập nhật](PHIEN-BAN-VA-CAP-NHAT.md)

## Khôi phục danh sách khi vào phân hệ

Bản giao diện mới đã giữ cây menu nhưng bỏ sót hành vi tự mở danh sách khi bấm Kế toán. Bản72 khôi phục **Danh sách xe sửa chữa**, gồm bảng dữ liệu, bộ lọc và toàn bộ9 lệnh chuột phải gốc. Để lập hóa đơn: **Kế toán → chọn xe/RO → chuột phải → Ghi sổ 2 VAT trên 1 hoá đơn**. Đây là tên lệnh trong bộ mã gốc hiện tại. Điều chỉnh khoảng ngày/trạng thái theo dữ liệu cần xem.

Đối chiếu đủ9 phân hệ với hàm mở gốc. Kinh doanh mở lại dashboard gốc;7 nhóm còn lại mở màn nền. Giữ nguyên cây chức năng, quyền và các cửa sổ đang mở; bấm lại phân hệ dùng lại tài liệu hiện có. Chuột phải trên tiêu đề nhóm không tự chuyển tài liệu; Enter mở cùng màn mặc định. Không thay logic tính tiền, lưu, ghi sổ, in hoặc SQL.

## Kiểm thử mới trên SQL TEST

9 đường vào gốc; chặn theo quyền nguồn/owner/tree; bấm lặp không nhân bản cửa sổ; giữ tài liệu đánh dấu đang mở;268 node menu không bị lọc bỏ;9 lệnh chuột phải còn đủ. Tải danh sách thực và gọi lệnh chuột phải để mở hóa đơn gốc đã ghi sổ, rồi đóng mà không lưu/gọi nhà cung cấp. Kiểm thử này dùng chọn dòng và dispatch sự kiện tự động, chưa nghiệm thu hit-test chuột vật lý hoặc tình huống chứng từ sửa dở.

Hồi quy34 đăng nhập/quyền,17 cấu hình máy,109 thao tác đọc và Crystal PDF;1146C# dựng độc lập đúng hash;335 kiểm tra archive chỉ đọc. Engine và455 định nghĩa SQL giữ nguyên. Bộ test trước có kiểm kê menu nhưng chưa kiểm tra màn mặc định theo từng phân hệ; bản72 bổ sung gate này.

## Phạm vi còn mở

Các kết quả DPI/448mẫu cửa sổ/152 điều kiện lưu–ghi sổ–hoàn tác thuộc đợt71, không tính là chạy mới ở72. Bản72 không thay chính sách bố cục71. Chưa nghiệm thu toàn ERP, mọi vai trò/dữ liệu,4K vật lý/đa màn hình, Windows sạch/MSI/UAC/máy in. Không chạy bộ cài trên máy phát triển hay truy cập SQL công ty.
