# G-Stars 2026.11.17.68

[Trang chính](../README.md) · [Cập nhật](PHIEN-BAN-VA-CAP-NHAT.md)

Sửa lỗi bố cục bên trong các cửa sổ nghiệp vụ: thanh lệnh hoặc ô nhập bị khuất ngay khi mở, nhãn chồng ô nhập sau thay đổi font. Lớp giao diện mới đã bỏ việc ép cuộn toàn bộ cửa sổ nghiệp vụ và giữ lại font/kích thước điều khiển theo thiết kế nguồn. Khung ngoài, điều hướng, màu và biểu tượng G-Stars được giữ. Tên trường, thứ tự Tab, menu, quyền, bộ xử lý và engine nghiệp vụ giữ nguyên.

Cửa sổ nghiệp vụ giữ kích thước tối thiểu theo mẫu thiết kế, giới hạn trong vùng làm việc màn hình; tránh thu nhỏ tùy ý làm vỡ bố cục. Không phóng chữ toàn bộ các màn cũ. Các hộp thoại do G-Stars quản lý và màn đăng nhập tiếp tục dùng bố cục riêng.

Kiểm tra thiết kế 448 lớp cửa sổ, trong đó 447 mẫu nghiệp vụ giữ nguyên hình học/parent/Tab sau styling; màn Giới thiệu thay nhận diện riêng. Lượt này dùng bản QA vô hiệu hóa xử lý nghiệp vụ, chỉ chứng minh thiết kế. Tách riêng 20 cửa sổ mở thật bằng đăng nhập trên SQL TEST, 100 quan sát bố cục và thu/phóng: không còn tự cuộn gốc hoặc nhãn chồng ô nhập trong lượt chạy. Hồi quy 109 thao tác đọc không lỗi; PDF Crystal đạt. Hai luồng lưu hóa đơn và luồng mua hàng chạy Save/ghi sổ/hoàn tác/rollback bằng fixture riêng, có đọc SQL độc lập và dọn fixture; 152 điều kiện kiểm tra đạt.

Mã nguồn 1142 C# được build độc lập đúng hash; bộ cài kiểm tra archive chỉ đọc 335 điều kiện; 324 file ứng dụng. Chỉ host/worker đổi, engine và cấu hình SQL giữ nguyên. Đây là sửa lỗi UI dùng chung, không phải xác nhận toàn bộ nghiệp vụ hay mọi loại màn hình. Các điều khiển vốn ngoài canvas nguồn vẫn được ghi riêng để truy tiếp; không tính đã nghiệm thu. DPI thực của máy lab là96; đa màn hình vật lý, Windows sạch/MSI/UAC và máy in còn chưa nghiệm thu. Không gọi dịch vụ phát hành hóa đơn trong lượt kiểm thử này.
