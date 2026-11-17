# G-Stars 2026.11.17.70

[Trang chính](../README.md) · [Cập nhật](PHIEN-BAN-VA-CAP-NHAT.md)

## Thích ứng chung cho cửa sổ nghiệp vụ

Cửa sổ con MDI giữ metric font nguồn, không kế thừa cỡ chữ khác chỉ vì được gắn vào khung chính; cửa sổ thường được giới hạn theo vùng làm việc của màn hình, cửa sổ con theo vùng MDI và đổi kích thước cùng khung chính.

Lớp G-Stars.BusinessUI/70 được đăng ký tại đường mở cửa sổ dùng chung. Áp dụng cho các cửa sổ nghiệp vụ, cùng với nền đăng nhập, thiết lập SQL, báo lỗi, cập nhật và hóa đơn điện tử hiện có.

Hàng đợi bố cục được đặt lại khi handle bị hủy và đăng ký lại khi handle mới được tạo; không bỏ lỡ lượt cập nhật khi chuyển sang MDI. Các lần resize lồng nhau được gộp và xử lý lại; gốc canvas luôn khớp vị trí cuộn.

Framework xử lý DPI từ mốc hiện tại sau khi khởi tạo nguồn. Nội dung gốc nằm trong một vùng cuộn riêng: màn nhỏ có thể cuộn tới trường cần nhập, màn lớn tận dụng Dock/Anchor có sẵn. Thanh lệnh nguồn giữ ngoài vùng cuộn. Khi focus tới ô nhập ngoài vùng nhìn, vùng nội dung tự cuộn để đưa ô đó vào nhìn thấy. Đổi DPI xóa độ lệch cuộn trước khi framework co giãn.

Adapter dùng chung đo font và chiều cao hàng C1, font thanh lệnh và khoảng chữ cạnh ô nhập theo GDI. Phép đo caption có cache; không quét lại giao diện theo rê chuột hoặc timer. Không đổi tên trường/menu hay thêm hướng dẫn vào màn nghiệp vụ.

Các điều khiển gốc vẫn là cùng đối tượng, binding, Tab, Dock/Anchor và bộ xử lý nguồn được giữ. Chỉ các điều khiển ở cấp gốc của phần nội dung chuyển sang canvas chung; quan hệ cha–con bên trong không đổi. Đây là thay đổi cấu trúc khung hiển thị có chủ đích, không phải cam kết mọi tọa độ/parent bất biến. Engine nghiệp vụ, tính toán và SQL giữ nguyên.

## Bằng chứng và giới hạn

448 mẫu thiết kế qua kiểm tra cấu trúc bằng shadow QA, không chạy Load/SQL. Tách riêng20 cửa sổ thật có Load và SQL, qua5 DPI96/144/192/240/288 và3 kích thước cửa sổ:300 quan sát mở độc lập; thêm300 quan sát MDI có thu/phóng khung chính, tổng600. Kiểm tra tới ô nhập, thanh lệnh cố định, hàng bảng và chữ cạnh editor, giữ đối tượng/Tab/quan hệ sau cài adapter. Ghi nhận trực tiếp một lần hủy/tạo lại handle của cửa sổ nghiệp vụ trong chuỗi mở MDI; thêm68 quan sát ở hai chuỗi khung thường/phóng lớn. Các lỗi caption thực đã được tái hiện bằng điểm ảnh trước sửa; không hạ ngưỡng để qua test.

680 quan sát login/hộp thoại qua5process;109 thao tác đọc;34 đăng nhập/quyền;17 cấu hình máy;12 ghi nhớ;152 điều kiện lưu–ghi sổ–hoàn tác–rollback trên fixture tổng hợp và PDF.1144 file C# được dựng độc lập đúng hash.335 kiểm tra archive chỉ đọc. Các số này là phạm vi kiểm thử cụ thể, không phải toàn bộ chức năng đã nghiệm thu.

Lab thực DPI96. DPI cao được mô phỏng bằng thông điệp và cache framework trong process QA, chưa chứng minh màn4K vật lý/đa màn hình/DWM. Một số trạng thái nguồn có trường bị khuất trong container con vẫn được ghi riêng, không xóa hoặc coi là đạt. Còn nghiệm thu vai trò, trạng thái nghiệp vụ, Windows sạch/MSI/UAC/máy in/toàn hệ thống. Không chạy bộ cài, không ký/phát hành hóa đơn, không truy cập SQL công ty trong đợt này.

Tham khảo: [WinForms scaling](https://learn.microsoft.com/en-us/dotnet/framework/winforms/automatic-scaling-in-windows-forms), [DPI](https://learn.microsoft.com/en-us/dotnet/desktop/winforms/high-dpi-support-in-windows-forms).
