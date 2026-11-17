# Thiết lập hóa đơn điện tử trong G-Stars

[Trang chính](../README.md) · [Hướng dẫn IT](HUONG-DAN-IT.md) · [Bản64](BAN-SUA-64.md)

## M-Invoice

1. Đăng nhập tài khoản có quyền thiết lập, chọn đúng đơn vị làm việc.
2. Bấm **Hóa đơn điện tử** trên thanh đầu → chọn **M-Invoice**.
3. Nhập **link dịch vụ HTTPS**, **MST**, **tài khoản** và **mật khẩu dịch vụ** của công ty.
4. Bấm **Kết nối và tải ký hiệu**. G-Stars xác minh đúng tài khoản/công ty, rồi tải các ký hiệu đang sử dụng.
5. Chọn ký hiệu phù hợp → **Lưu**. Không nhập đường API hoặc chỉnh file cấu hình. Mỗi đơn vị lưu thông tin riêng.
6. Lập và lưu chứng từ trong màn nghiệp vụ như trước, bấm chức năng xuất hóa đơn điện tử. G-Stars gửi **bản nháp chưa ký/phát hành**, đọc lại để đối chiếu và giữ liên kết. Số hóa đơn chính thức không bị thay bằng mã nháp. Bản nháp xem được trên cổng M-Invoice. API tải PDF nháp đã được kiểm thử; bản64 chưa thêm nút xem PDF riêng trên các màn nghiệp vụ.

Tài khoản dịch vụ hóa đơn khác tài khoản đăng nhập G-Stars. Thay link/MST/tài khoản/mật khẩu thì cần kết nối lại trước khi Lưu. Quyền thay đổi thiết lập theo quyền quản trị hiện có; nhân viên không phải cài công cụ hoặc nhập API. Thông tin bên bán lấy từ tài khoản dịch vụ đã xác minh.

Ký hiệu nào yêu cầu số khung/số máy hoặc trường riêng thì phải có dữ liệu tương ứng; G-Stars báo trường thiếu trước khi gửi. Dùng ký hiệu phù hợp với loại nghiệp vụ. Bản64 đã thử trên cổng staging hiện hành; cổng/API phiên bản khác có thể chưa tương thích. Chưa tự ký/duyệt/phát hành hoặc sửa/xóa hóa đơn từ xa. Luồng nghiệm thu hiện dùng VND và hàng hóa/dịch vụ/ghi chú; chưa nghiệm thu ngoại tệ, chiết khấu và mọi mẫu đặc thù.

Nếu timeout, không bấm tạo nhiều lần. G-Stars giữ trạng thái lần gửi và tra lại bản nháp; nếu chưa xác định được kết quả sẽ dừng để IT đối chiếu. Khóa SQL chống hai máy cùng database gửi đồng thời không cần cài procedure/schema bổ sung. Không thay cấu hình SQL hoặc tài khoản làm việc.

## VNInvoice/V50

Giữ luồng đang có và cấu hình riêng theo đơn vị. Nhập MST/tài khoản/mật khẩu/mẫu/ký hiệu/link; API chuẩn được điền khi ô API trống. IT có thể xem mục nâng cao. Không dùng tài khoản V50 cho M-Invoice.

Mật khẩu được che trên giao diện; giữ định dạng lưu SQL hiện hữu của đơn vị. Không đưa mật khẩu vào chat/báo lỗi hoặc public repository. Bộ cài không chứa tài khoản hóa đơn của công ty/tester.
