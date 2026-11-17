# G-Stars 2026.11.17.66 — Khung ngoài và điều hướng

[Trang chính](../README.md) · [Cập nhật](PHIEN-BAN-VA-CAP-NHAT.md)

Đổi lớp khung ngoài: màu trung tính, thanh đầu và tab gọn, các phân hệ có biểu tượng và tên đầy đủ; nhãn dài xuống dòng thay vì bị mất. Giữ nguyên tên phân hệ/menu, màn nhập liệu, trường dữ liệu, nút nghiệp vụ và cách làm hiện có. Không đưa nút lưu/in mới vào nơi khác hoặc sửa giao dịch SQL.

Ô **Tìm chức năng** lọc theo menu gốc trong phân hệ đang chọn. Có thể gõ không dấu. Enter hoặc nhấp đúp kết quả để mở đúng chức năng gốc; Esc xóa tìm kiếm và quay về cây menu. Kết quả vẫn dùng đối tượng menu và bộ xử lý/quyền gốc; không tạo menu giả hoặc gọi SQL thay thế. Khi quay lại một phân hệ, giữ lựa chọn, vùng cuộn và trạng thái mở cây menu trước đó. Tab chứng từ vẫn trỏ tới cửa sổ đang mở, giữ nguyên dữ liệu nhập.

Có phản hồi con trỏ chờ khi source đang tải menu/màn hình; lỗi cũng trả con trỏ về trạng thái cũ. Không chạy lại style toàn màn theo chuột; không thêm hiệu ứng chuyển động. Đổi trạng thái thanh phân hệ có ngưỡng khác nhau khi thu/phóng để tránh nhảy liên tục quanh một độ rộng. Nút cấu hình hóa đơn, báo lỗi và phiên bản vẫn ở thanh trên.

Đã mô phỏng điều hướng năm vai trò: cố vấn dịch vụ, kho/mua hàng, kế toán, kinh doanh xe, quản lý. Đây là mô phỏng trên tài khoản lab hiện có, chưa thay thế nghiệm thu của nhân viên hoặc kiểm tra quyền độc lập theo từng vai trò thật.

62kiểm tra lớp vỏ/điều hướng/startup/cleanup;17font giữ65/52auth và8reads/17machine/109native0lỗi/0dialog/PDF đạt. Đối chiếu bốn màn báo giá sửa chữa, nhập kho, ghi sổ báo giá và báo giá xe: giữ tên/type/parent/Tab/font/nhãn. Bố cục bên trong vẫn dùng dock/anchor gốc theo vùng hiển thị. Engine64giữ nguyên SHA,455SQL nguyên;1141C# build độc lập đúng hash;335điểm archive bộ cài chỉ đọc. Không chạy Setup/UAC, không coi ảnh render là video DWM hoặc nghiệm thu độ mượt trên mọi máy/DPI. Các luồng SQL đồng bộ cũ vẫn có thời gian tải riêng; không tuyên bố đổi khung đã tăng tốc mọi nghiệp vụ.

Thiết kế tham khảo [điều hướng](https://learn.microsoft.com/en-us/windows/apps/design/basics/navigation-basics), [độ phản hồi](https://learn.microsoft.com/en-us/windows/apps/develop/performance/responsive) và [WinForms buffering](https://learn.microsoft.com/en-us/dotnet/desktop/winforms/advanced/how-to-reduce-graphics-flicker-with-double-buffering-for-forms-and-controls) của Microsoft. Không database công ty/OpenClaw/Computer Use; các giới hạn nghiệp vụ và M-Invoice trước đây giữ nguyên. Không tạo hóa đơn staging mới trong lần sửa giao diện này.
