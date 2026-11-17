# G-Stars 2026.11.17.69

[Trang chính](../README.md) · [Cập nhật](PHIEN-BAN-VA-CAP-NHAT.md)

## Nền giao diện dùng chung

Đăng nhập, thiết lập SQL, báo lỗi, cập nhật và hóa đơn điện tử cùng dùng lớp bố cục G-Stars.UI/69: một mốc thiết kế96DPI, framework xử lý co giãn, hàng/cột đo theo nội dung. Thanh nút thao tác tách khỏi vùng cuộn. Nhãn xuống dòng theo ô, hàng nhập được đo lại theo kích thước native của ô nhập/danh sách/nút khi font hoặc DPI đổi. Không nhân tọa độ riêng cho từng màn. Vùng đổi giữa ô nhập ký hiệu và danh sách ký hiệu dùng chung component co giãn, chỉ hiện editor đang dùng.

Cửa sổ xem bảng do G-Stars quản lý có adapter chung cho tiêu đề, bảng và thanh nút. Cửa sổ nghiệp vụ phục hồi giữ autoscale, trường, bố cục, quyền và bộ xử lý nguồn; engine và SQL không đổi. Thông tin báo lỗi có thêm độ phân giải, DPI và số màn hình trong môi trường hệ điều hành để truy lỗi giữa các máy.

## Kiểm thử và giới hạn

136 tổ hợp bố cục/trạng thái trong mỗi5process: process DPI96thực và4process giả lập DPI khởi tạo144/192/240/288 trong cache framework trước tạo cửa sổ. Tổng680quan sát, không phải680chức năng. Mỗi lượt gồm thông điệp DPI100/125/150/200/250/300%, thu/phóng, kiểm chữ/khung, editor trong vùng cha, nút cố định, cuộn tới ô nhập và vòng DPI không nhân dồn chiều cao. Kiểm tra thêm cấu hình nâng cao, xác thực, ba nhà cung cấp, ký hiệu hóa đơn và thông báo dài; tăng metric font độc lập1.5/2/3lần. Adapter cửa sổ xem bảng giữ binding và gọi bộ xử lý nút đúng một lần.

Tách riêng448mẫu thiết kế được rà bằng QA shadow vô hiệu hóa nghiệp vụ;447mẫu nghiệp vụ giữ geometry/parent/Tab.20cửa sổ có SQL/100quan sát;109thao tác đọc;34đăng nhập/quyền;17cấu hình máy;12ghi nhớ/SQL profile;152điều kiện Save–ghi sổ–hoàn tác–rollback trên fixture riêng và PDF Crystal đạt.1143C# build độc lập đúng hash;335kiểm tra archive chỉ đọc.

Màn hình thật của lab vẫnDPI96. Sửa cache framework trong process QA và gửi WM_DPICHANGED không tạo ra màn4K vật lý, không chứng minh DWM/độ mượt khi chuyển màn hình. Còn12điều khiển ngoài canvas nguồn, các trạng thái nghiệp vụ chưa phủ hết, Windows sạch/MSI/UAC/máy in/nghiệm thu toàn hệ thống. Không ký/phát hành hóa đơn hoặc đụng database công ty trong lượt này.

Tham khảo: [DPI trong WinForms](https://learn.microsoft.com/en-us/dotnet/desktop/winforms/high-dpi-support-in-windows-forms), [bố cục điều khiển](https://learn.microsoft.com/en-us/dotnet/desktop/winforms/controls/layout).
