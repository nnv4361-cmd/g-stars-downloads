# Gỡ lỗi kết nối

[Trang chính](../README.md) · [IT thiết lập](HUONG-DAN-IT.md)

- **Máy chưa có cấu hình:** IT mở Thiết lập kết nối bằng quyền quản trị và lưu một lần. Nhân viên không cần tạo tài khoản SQL.
- **Không tìm được server:** IT kiểm tra địa chỉ/cổng/instance, SQL TCP, firewall và tuyến mạng/VPN. Gõ đúng tên database nếu tài khoản không có quyền liệt kê.
- **Không đăng nhập được SQL Server:** IT kiểm tra danh tính kết nối đã lưu và quyền vào database TEST. Tài khoản Carsoft là tài khoản nghiệp vụ riêng; không thay thế xác thực máy chủ.
- **Không đăng nhập được Carsoft:** kiểm tra tên/mật khẩu, đơn vị và quyền trong database đang chọn. Không đổi password/quyền của backup để ép test đạt.
- **Cấu hình mã hóa hoặc ACL không hợp lệ:** IT lưu lại cấu hình chung từ đúng máy bằng quyền quản trị. Không copy file DPAPI giữa máy/người dùng.
- **Thông báo thiếu hợp đồng/VIEW DEFINITION từ bản52 cũ:** cập nhật56. Không chạy các script177/marker cũ chỉ để mở bản56.
- **Không có dữ liệu:** xác nhận đúng backup, đơn vị, kỳ/ngày, trạng thái và quyền nghiệp vụ.

IT dùng nút Chép lỗi trong màn thiết lập; không đưa mật khẩu vào báo lỗi hoặc GitHub. Bản56 không truy cập hệ thống công ty trong đợt kiểm thử dự án.
