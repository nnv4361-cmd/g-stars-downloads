# G-Stars 2026.11.18.73

[Trang chính](../README.md) · [Cập nhật](PHIEN-BAN-VA-CAP-NHAT.md)

## Sửa thanh In ở lớp dùng chung

Lớp bố cục đã đo và theo dõi cả control riêng bên trong Crystal, làm tăng vùng tài liệu và kéo thanh In vào vùng cuộn. Bản73 coi Crystal là một viewport do SDK quản lý: không đo/grow/style/reveal các control nội bộ như ô nhập liệu. Cửa sổ chứa một viewer giữ thanh In cố định trên cửa sổ; vùng xem báo cáo co theo phần còn lại. Áp dụng theo loại và cấu trúc control, không theo tên màn. Engine, SQL, số tiền và mẫu báo cáo không đổi.

184 mẫu Crystal nạp đúng loại/kích thước; test vòng đời và thanh In trên hai lớp cửa sổ báo cáo thực, bind sớm/muộn, bốn DPI mô phỏng và ba kích thước.1096 điều kiện kiểm tra, gồm hủy in không gửi lệnh, chọn máy in/số bản/trang chuyển đúng vào điểm nhận lệnh giả lập. Không gửi job ra máy in thật.

## Rà những chỗ có thể mất chức năng

Đối chiếu63819 phương thức gốc và8729 lệnh đăng ký/gỡ sự kiện: không mất mục trong inventory. Qua lớp giao diện,448 mẫu cửa sổ giữ2638 nút/lệnh và6444 callback gốc. Đây là shadow QA chặn SQL/dialog và vô hiệu hóa callback nghiệp vụ, kiểm tra cấu trúc/local state không Show; không phải chạy hết nghiệp vụ.

Đăng nhập và tải quyền/menu SQL thực:268node gồm219mục chức năng; mỗi mục đi đúng mã nguồn bằng cây menu và tìm kiếm, tổng438dispatch. Điểm cuối được thay bằng sink ghi nhận trong QA để không chạy hàng loạt lệnh nghiệp vụ. Giữ9màn mặc định theo phân hệ đã sửa ở72.34auth/17machine/109đọc/PDF hồi quy; source1146C# dựng độc lập đúng hash;335archive chỉ đọc.

## Kiểm tra dữ liệu in

9/10 đường xem trước đã xuất và render PDF: báo giá, lệnh sửa chữa, yêu cầu vật tư, chi tiết thanh toán, đơn đặt hàng, phiếu nhập kho, thu, chi và mẫu hóa đơn một thuế suất kiểu in phôi. Dùng dữ liệu có nội dung/số tiền trong SQL TEST. Hủy/chọn máy in đi qua core thật với sink cuối giả lập. Không ký/phát hành hóa đơn hay gọi nhà cung cấp bên ngoài.

**Còn mở:** mẫu nghiệm thu kỹ thuật có14tham số mà bộ gọi gốc chưa cấp. Ca này được giữ BLOCKED, chưa tính là in tự động đạt; không tự điền trống/giả dữ liệu. Cần đối chiếu hợp đồng mẫu hoặc kiểm chứng luồng nhập tham số bổ sung. Một mẫu hóa đơn một thuế suất không nhận chứng từ trộn nhiều thuế suất; không đổi thành tiền hoặc bỏ dòng để làm test đạt.

Chưa nghiệm thu mọi vai trò/dữ liệu/toàn ERP,4K vật lý/đa màn hình, Windows sạch/MSI/UAC hay máy in vật lý. Các kết quả152Save/layout71 là lịch sử, không gọi là chạy mới73. Không SQL công ty hoặc thay runtime/cấu hình toàn hệ thống.
