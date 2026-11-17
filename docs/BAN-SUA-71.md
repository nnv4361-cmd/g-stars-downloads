# G-Stars 2026.11.17.71

[Trang chính](../README.md) · [Cập nhật](PHIEN-BAN-VA-CAP-NHAT.md)

## Sửa theo thành phần dùng chung

Giữ nguyên các đối tượng trường/nút, tên menu, quyền, binding, Tab và bộ xử lý nghiệp vụ. Không thêm ngoại lệ theo tên màn hoặc tên trường.

Nút tra cứu trong ô mã–tên được đặt vừa chiều cao/chiều rộng native của component. Nhóm lệnh của bảng có vùng riêng, đo theo font và có chỗ dành trong khung dữ liệu. Panel/group đo nội dung và truyền nhu cầu kích thước qua các lớp chứa; khi phải lớn hơn, các nhóm phía dưới giữ thứ tự và khoảng cách. Tài liệu có thể cuộn tới toàn bộ nội dung. Tab có kích thước cố định được đo lại, tránh vòng lặp tăng khung ngoài mà tab vẫn không lớn lên.

Ô lọc gốc đặt trên thanh lệnh tiếp tục ở thanh lệnh; không bị kéo lên tọa độ âm trong vùng cuộn. Thay đổi trạng thái hiện/ẩn của trang và trường được gộp vào hàng đợi bố cục. Hàng đợi vẫn phục hồi sau tạo lại handle MDI. Không bố cục lại theo rê chuột hoặc timer. Các control do quyền/nhánh nghiệp vụ ẩn vẫn được giữ ẩn.

## Kiểm thử

Đối chiếu riêng53 vị trí bị khuất của bản70: từng định danh được quan sát ở đủ7 DPI và phải qua kiểm tra vùng cha cùng khả năng tiếp cận. Không miễn trừ clipping cũ.

Quét448 mẫu cửa sổ, hiển thị lần lượt mọi trang tab chọn được ở DPI100/125/150/175/200/250/300%. Đây là shadow QA chặn SQL và vô hiệu hóa callback nghiệp vụ/hộp thoại; callback bố cục được giữ. Không phải nghiệm thu toàn bộ chức năng hay dữ liệu.

Tách riêng20 cửa sổ thật có Load/SQL ×7 DPI ×3 kích thước ×2 kiểu độc lập/MDI=840 quan sát, bao gồm kiểm tra mọi vùng cha của ô/nút. Hồi quy680 quan sát đăng nhập/hộp thoại qua5process,34 đăng nhập/quyền,17 cấu hình máy,109 thao tác đọc,12 ghi nhớ,152 điều kiện lưu–ghi sổ–hoàn tác–rollback và PDF.1145C# dựng độc lập đúng hash;335 kiểm tra archive chỉ đọc. Engine và455 định nghĩa SQL không đổi; fixture được dọn, audit được giữ.

## Giới hạn

Lab thựcDPI96. Các mức cao dùng thông điệp DPI và cache framework trong process QA; chưa nghiệm thu màn4K vật lý/đa màn hình/DWM. Còn Windows sạch/MSI/UAC/máy in, dữ liệu và vai trò toàn hệ thống. Không chạy bộ cài, không ký/phát hành hóa đơn hoặc đụng SQL công ty trong đợt này.

Tham khảo: [WinForms scaling](https://learn.microsoft.com/en-us/dotnet/framework/winforms/automatic-scaling-in-windows-forms), [AutoScroll và giới hạn Anchor](https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.scrollablecontrol.autoscroll), [C1 DockingTab](https://developer.mescius.com/componentone/docs/win/online-menus-toolbar/menusandtoolbarsforw2/dockingtabtasks/addingascrollbartoac).
