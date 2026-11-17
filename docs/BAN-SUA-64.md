# G-Stars 2026.11.17.64 — M-Invoice

[Trang chính](../README.md) · [Thiết lập hóa đơn](HOA-DON-DIEN-TU.md) · [Hướng dẫn IT](HUONG-DAN-IT.md)

M-Invoice đã nối vào bộ gửi hóa đơn của G-Stars. Người có quyền thiết lập chọn đơn vị, nhập link/MST/tài khoản/mật khẩu, bấm **Kết nối và tải ký hiệu**, chọn ký hiệu rồi **Lưu**. Không phải nhập đường API. Tên/địa chỉ bên bán, danh mục thuế và tiền tệ lấy từ dịch vụ. Cấu hình vẫn lưu riêng theo đơn vị; giữ quyền gốc và cấu hình SQL/đăng nhập đã có.

G-Stars chỉ tạo **bản nháp chưa ký/phát hành**. Sáu màn gọi bộ gửi gốc dùng chung xử lý nháp; không ghi mã nháp vào số hóa đơn chính thức, không chạy lại ghi sổ chỉ vì gửi nháp. Có đọc lại tổng tiền/thuế/dòng/ngày/ký hiệu/bên bán, lưu liên kết bền vững, đối chiếu trước tạo và khóa SQL theo chứng từ để các máy cùng database không gửi đồng thời. Timeout không rõ kết quả không tự POST lại; nếu đã thấy đúng bản nháp từ xa thì lấy lại liên kết. Tải được PDF nháp.

Trên staging đã tạo1bản nháp tổng hợp bằng luồng native sửa chữa đa thuế: tiền hàng2.000VND, VAT180VND(80+100), tổng2.180VND. Đọc API độc lập khớp SQL lab; chưa có ngày ký/mã cơ quan thuế, trạng thái chờ ký. Gửi lại giữ cùng ID, tải PDF334KB; không ký, duyệt, phát hành, sửa hay xóa. Bản nháp thử giữ trên staging để đối chiếu. Dữ liệu SQL fixture đã dọn, nhật ký giữ lại; mật khẩu/cookie không vào log, bộ cài hoặc bằng chứng.

57kiểm tra logic/cấu hình qua transport giả;50kiểm tra cùng kịch bản native được chạy cả giả và staging, không tính thành100ca khác nhau. Có UI kết nối/chọn/lưu, kiểm tra MST/phiên/thuế/trường bắt buộc, timeout/replay/concurrency và khóa SQL hai phiên. Bộ xử lý kết quả được thử trên6form; đây không phải nghiệm thu trọn nghiệp vụ của cả6phân hệ.43kiểm tra V50 giả,34auth,17machine,109mẫu native0lỗi và Crystal PDF đạt.1.139C# build độc lập đúng hash;1.075file nguồn nghiệp vụ nguyên byte. Engine chỉ7thân phương thức thêm xử lý nháp/biên lỗi/tải PDF; không thêm/xóa phương thức hoặc đổi643resource.455định nghĩa SQL giữ hash, không thêm schema/hợp đồng lab.

Đã xác minh API hiện hành của cổng staging được cung cấp. Cổng M-Invoice phiên bản khác cần kiểm tra tương thích; không tự coi API78 cũ và API portal này là một. Ký hiệu có trường bắt buộc bổ sung sẽ báo thiếu trước khi gửi; chưa tự bịa số khung/số máy. Luồng được kiểm thử dùng VND, hàng hóa/dịch vụ và ghi chú; chiết khấu/khuyến mại hoặc ngoại tệ chưa được nghiệm thu, sẽ bị chặn nếu không có ánh xạ phù hợp. Chưa ký/phát hành, chưa nghiệm thu mọi mẫu/mọi phân hệ/Windows sạch/UAC-MSI/máy in thật.44thân SQL gốc thiếu vẫn chưa khôi phục. Không database công ty/OpenClaw/Computer Use/bản SQL mới.

## Sửa đường cập nhật bản 64

Đã bổ sung file xác nhận phiên bản đúng đường dẫn mà trình cập nhật yêu cầu. Lỗi tải xong báo “Chưa bắt đầu được cập nhật” do thiếu tiền tố `v` trong tên file trên GitHub. Không thay bộ cài/EXE, không đổi phiên bản64 hay cấu hình SQL.

Đã kiểm tra trực tiếp bộ xác minh của bản63 và64:32kiểm tra đạt. Worker63 thật xác minh cả gói portable lẫn Setup, báo sẵn sàng trong giới hạn20giây rồi hủy trước khi áp dụng; không chạy cài đặt/UAC. Đây là kiểm thử bước trước khi cập nhật, không phải xác nhận MSI trên máy IT.

Anh/chị đóng hộp thông báo, vào Phiên bản → Kiểm tra bản mới → Cập nhật lại. Các lần phát hành sau có kiểm tra tự động file `updates/v<phiên-bản>.json` và hash/đường tải tương ứng để tránh lỗi này lặp lại.
