# G-Stars 2026.11.18.79

Tra cứu lịch sử sửa chữa hiển thị những dòng đầu trong khi tiếp tục tải đầy đủ kết quả. Có thể tìm kiếm hoặc đóng cửa sổ lúc đang tải. Bảng nghiệp vụ điều chỉnh chiều cao dòng theo phông chữ và kích thước chữ hiển thị. Khi cuộn, bảng đo lại giá trị số dài trong các dòng vừa xuất hiện.

Trên SQL TEST với 180.697 dòng, bản 78 mất 4,72 giây từ lúc bấm menu tới khi cửa sổ nhận thao tác. Bản 79 đo được 0,20 giây, thấy 128 dòng đầu sau 1,19 giây và đủ dữ liệu sau 3,95 giây. Kết quả trên máy của tester đang chờ xác nhận.

Đã đối chiếu lịch sử trả về với thủ tục trên SQL TEST. Màn hình vật lý 125% tại nơi sử dụng còn chờ IT kiểm tra.

# G-Stars 2026.11.18.78

Bảng nghiệp vụ tự đo tiêu đề theo phông chữ và chiều rộng hiển thị. Các cột thiếu chỗ tự mở rộng khi mở bảng hoặc khi thay đổi tiêu đề.

Đã đo cột trên bảng báo giá và danh sách xe sửa chữa bằng SQL TEST. Màn hình vật lý 125% tại nơi sử dụng còn chờ IT kiểm tra.

# G-Stars 2026.11.18.77

Nhấn đúp nhóm Nghiệp vụ khi nhóm nằm gần cuối cây menu sẽ mở rộng nhóm. Chọn trực tiếp mục Báo giá bảo hiểm vẫn mở chứng từ.

Khi chuyển từ danh sách báo giá bảo hiểm sang Sửa, vùng nhập liệu giữ nguyên vị trí ngang. Khi chuyển tới ô nhập ngoài vùng nhìn thấy, cửa sổ vẫn cuộn tới ô đó.

Đã kiểm thử thao tác chuột trên cây menu và nút Sửa của báo giá trên SQL TEST. Màn hình vật lý 125% tại nơi sử dụng còn chờ IT kiểm tra.

# G-Stars 2026.11.18.76

Bản cập nhật sửa cách lưu tệp Excel cho báo giá và các chứng từ dùng mẫu. Mỗi lần xuất tạo một tệp riêng trong thư mục người dùng. Bộ cài chỉ phân phối mẫu Excel cần thiết.

Đã điều chỉnh vùng cuộn khi đổi DPI, giới hạn khung chọn mẫu in và tối ưu hiển thị lịch sử sửa chữa. Khi báo lỗi, người dùng có thể chọn đính kèm lỗi chương trình gần nhất.

Trên SQL TEST đã đối chiếu ô của tệp báo giá với dữ liệu nguồn và thử mở lại danh mục. Màn hình vật lý 125% tại nơi sử dụng còn chờ IT kiểm tra.

# G-Stars 2026.11.18.75

Bản này sửa bảng kê hóa đơn bán dịch vụ (tổng hợp), hóa đơn đến hạn thanh toán, danh mục bảo hiểm và hàng hết hạn sử dụng. Nút Xem và nút In hàng hết hạn dùng cùng điều kiện kho, đơn vị và ngày.

Phiếu yêu cầu sửa chữa lấy fax, email và mã số thuế theo đúng bên nhận. Chân trang báo cáo dùng nhận diện G-Stars. Đã kiểm thử qua nút in và đối chiếu PDF với SQL TEST. IT có thể kiểm tra lại trên máy in của đơn vị.

## Kết quả lịch sử

# G-Stars 2026.11.18.74

Phiếu nghiệm thu kỹ thuật đã có đủ thông tin để xuất PDF cho cả trường hợp khách hàng nhận và hãng bảo hiểm nhận. G-Stars lấy người đại diện, chức vụ, mã số thuế, fax và tài khoản theo đúng bên nhận trên RO. Thông tin bên giao lấy theo đơn vị đang đăng nhập. Nếu hồ sơ để trống một trường thì phiếu giữ trống trường đó.

Câu xác nhận công việc dẫn chiếu Bên B như đã ghi trên phiếu, và chân trang dùng tên G-Stars. Ngày lập biên bản là ngày in. Ngày chứng từ lấy từ RO gốc. Khi in lại, số RO và ngày chứng từ vẫn theo hồ sơ đã lưu.

Đã đối chiếu giá trị trong Crystal với SQL TEST và kiểm tra nội dung PDF cho hai bên nhận, kể cả khi mở lại phiếu khách hàng sau phiếu bảo hiểm. Cả 10 luồng xem trước được chọn đều xuất được PDF. Đã thử thêm hai bộ thông tin đơn vị giả lập với số tài khoản có số 0 đầu. Máy in vật lý còn chờ IT kiểm tra.

## Kết quả lịch sử

# Kiểm thử G-Stars73

[Trang chính](../README.md) · [Chi tiết](BAN-SUA-73.md)

8729event-hook instructions/63819phương thức gốc giữ inventory;448designer shadows/2638lệnh/6444callback giữ cấu trúc và local state qua lớp giao diện.219leaf SQL menu×tree/search=438QA dispatch, không chạy mọi target workflow.

184Crystal templates/1096checks;9PDF từ SQL đọc dữ liệu thật,1mẫu nghiệm thu thiếu14tham số còn BLOCKED.34auth/17machine/109đọc/PDF;1146C# độc lập;335archive.

Không gửi job in, không toàn ERP/4K vật lý/MSI/UAC/máy in/Windows sạch.152Save/layout71 là lịch sử. Không điền dữ liệu giả để đổi BLOCKED thành PASS.
