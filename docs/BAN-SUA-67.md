# G-Stars 2026.11.17.67

[Trang chính](../README.md) · [Cập nhật](PHIEN-BAN-VA-CAP-NHAT.md)

Một cây điều hướng **phân hệ → chức năng**, dùng toàn bộ menu và quyền hiện có. Bỏ thanh phân hệ và thẻ trang đầu bị trùng. Bấm nhóm menu giữ chứng từ đang mở. Tìm chức năng có dấu hoặc không dấu, Enter/nhấp đúp mở chức năng bằng bộ xử lý gốc. Tab phía trên trỏ tới từng cửa sổ đang mở; chọn tab để quay lại, dấu × để đóng.

Khung ngoài theo chiều rộng sử dụng sau khi tính DPI. Rộng từ1280đơn vị thì mở cây; từ960đến1279thu gọn mặc định và cho ghim bằng nút ☰; dưới960mở dạng ngăn phủ, chọn chức năng sẽ đóng ngăn. Các tiện ích thu vào ⋯ khi thiếu chỗ. Toàn bộ menu tiện ích gốc vẫn được giữ trong ⋯.

Đăng nhập có bố cục riêng cho cửa sổ hẹp, vẫn dùng ô tài khoản, mật khẩu, đơn vị, nút và ghi nhớ đăng nhập hiện có. Kết nối SQL (IT), báo lỗi, phiên bản, hóa đơn điện tử dùng DPI và vừa vùng màn hình. Các màn nghiệp vụ gốc giữ trường, nhãn, thứ tự và bộ xử lý; nội dung lớn cho cuộn. Không đổi engine nghiệp vụ hoặc định nghĩa SQL. Không có patch riêng; cập nhật ứng dụng như bình thường.

76tổ hợp bố cục:12đăng nhập,16khung chính và48hộp thoại; gồm100/125/150/200% bằng thông điệp WM_DPICHANGED mô phỏng và resize cửa sổ. Kiểm tra thêm bốn màn nghiệp vụ ở ba kích thước, giữ đối tượng/parent/nhãn và tới được trường xa; kiểm tra từng ô/nút đang hiển thị của bốn hộp thoại. Native windows xác nhận PerMonitorV2. Có lượt dựng ảnh và test riêng ở DPI96thực của máy này.

17font,52đăng nhập/quyền và8lượt đọc,17cấu hình máy,109thao tác native không lỗi/không hộp lỗi, PDF Crystal đạt.1142C# build độc lập đúng hash;335kiểm tra archive chỉ đọc. Không chạy MSI/UAC, không coi ảnh DrawToBitmap hoặc DPI mô phỏng là nghiệm thu đa màn hình thật, DWM/độ mượt, Windows sạch hay toàn bộ nghiệp vụ. IT cần kiểm tra đổi màn hình/scale thật trên các máy tester.

Tham khảo Microsoft: [WinForms DPI](https://learn.microsoft.com/en-us/dotnet/desktop/winforms/high-dpi-support-in-windows-forms), [WM_DPICHANGED](https://learn.microsoft.com/en-us/windows/win32/hidpi/wm-dpichanged), [điều hướng](https://learn.microsoft.com/en-us/windows/apps/design/basics/navigation-basics), [responsive layout](https://learn.microsoft.com/en-us/windows/apps/design/layout/screen-sizes-and-breakpoints-for-responsive-design).
