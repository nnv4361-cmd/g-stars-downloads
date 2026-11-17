# G-Stars 2026.11.17.63

[Trang chính](../README.md) · [Hướng dẫn IT](HUONG-DAN-IT.md) · [Thiết lập hóa đơn](HOA-DON-DIEN-TU.md)

Chữ nhỏ được tăng tối thiểu lên10,5pt ở các control được điều chỉnh, màu chữ đậm hơn, bảng tăng chiều cao dòng theo chữ. Ứng dụng khai báo System DPI aware; cần mở lại sau cập nhật. Giữ menu, trường nghiệp vụ và cách thao tác.

Quản trị mở **Hóa đơn điện tử** trên thanh đầu, cấu hình riêng đơn vị đang đăng nhập: nhà cung cấp, MST, tài khoản/mật khẩu dịch vụ, mẫu số, ký hiệu và link. API nâng cao được thu gọn. VNInvoice/V50 dùng cấu hình đúng đơn vị; bỏ giá trị công ty thử cố định. Thay đổi thiết lập chỉ tác động các trường hóa đơn, có kiểm tra quyền, bản cũ, đổi đơn vị, giao dịch và nhật ký.

M-Invoice lưu được cấu hình riêng. Đã xác minh cổng staging và metadata API công khai; **chưa xác minh đăng nhập/tạo hóa đơn M-Invoice**. Bộ gửi M-Invoice chưa bật; không chuyển nhầm sang V50. MST/tài khoản tester không gắn cứng vào gói cài. Nút Kiểm tra thông tin kiểm tra định dạng, chưa xác thực dịch vụ.

Kiểm thử trên backup riêng:35kiểm tra cấu hình hai đơn vị/quyền/stale/concurrency/rollback/DPI;43kiểm tra logic hóa đơn với transport giả, không gửi nhà cung cấp;34auth/quyền,17machineconfig,109mẫu native không lỗi/hộp thoại. Báo giá66nhãn đủ10,5pt/đậm,0ô nhập dưới10,5pt; Crystal PDF thành công.1.138C# build độc lập đúng hash,1.075file nguồn nghiệp vụ giữ nguyên;323appfiles/334archive chỉ đọc. Engine nghiệp vụ giữ nguyên byte so62; không sửa SQL gốc. Mộtportable và GitHub cùng63.

Chưa nghiệm thu màn hình/DPI thực tế của IT, chuyển giữa màn hình DPI khác nhau, cài MSI/UAC trên Windows sạch, máy in thật hoặc toàn hệ thống. Các195logic-flow60/crash59 kế thừa, không tính vừa chạy lại63.44thân SQL gốc thiếu chưa được khôi phục. Không truy cập database công ty hoặc OpenClaw.
