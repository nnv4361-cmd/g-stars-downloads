# Hướng dẫn nhân viên

[Về trang chính](../README.md) · [Báo lỗi](BAO-LOI.md)

## 1. Cài G-Stars

1. Mở [bản phát hành mới nhất](https://github.com/nnv4361-cmd/g-stars-downloads/releases/latest).
2. Trong **Assets**, tải **G-Stars-Setup.exe**, rồi chạy bộ cài.
3. Bộ cài kiểm tra .NET Framework 4.8 và SAP Crystal Reports x86 phù hợp. Nhờ IT xử lý nếu Windows hỏi quyền quản trị, chặn theo chính sách, hoặc phát hiện runtime không tương thích. Khởi động lại nếu bộ cài yêu cầu.
4. Mở **G-Stars** từ Desktop hoặc Start Menu.

Máy nhân viên không cần cài Git, Node.js, WSL hay Docker để dùng G-Stars.

## 2. Kết nối lần đầu

IT cung cấp máy chủ, database TEST và cách xác thực. Nếu IT đã gửi file cấu hình, chọn **Chọn SQL → Nhập cấu hình**.

Nếu nhập tay:

1. **Máy chủ:** nhập đúng địa chỉ IT cấp, ví dụ `192.0.2.10,1435` hoặc `SQL-TEST\SQLEXPRESS`. Các địa chỉ ở đây chỉ là ví dụ.
2. **Xác thực:** chọn **Windows** nếu IT đã cấp quyền Windows; hai ô tài khoản/mật khẩu SQL sẽ không yêu cầu nhập. Hoặc chọn **SQL Server** và dùng thông tin IT cấp.
3. **Database test:** chọn **Tải danh sách**, chọn database IT chỉ định; có thể gõ đúng tên nếu IT hướng dẫn.
4. Chọn **Kiểm tra kết nối → Lưu cấu hình**. Không cần nhập mã định danh UAT.
5. Nếu đang mở một phiên làm việc, lưu phần đang làm rồi đóng/mở lại G-Stars để áp dụng kết nối mới.

Nếu kiểm tra không đạt, chọn **Chép lỗi** và gửi cho người phụ trách. Không tự thay đổi database vận hành hoặc các tùy chọn bảo mật để thử vào.

## 3. Đăng nhập và test

Đăng nhập bằng **tài khoản G-Stars** được cấp. Đây là tài khoản nghiệp vụ, khác tài khoản kết nối SQL.

Chọn đúng đơn vị và kiểm tra bộ lọc ngày/trạng thái khi tìm chứng từ. Chỉ tạo, sửa, lưu hoặc hủy dữ liệu trên database TEST mà IT đã chuẩn bị. Khi thấy kết quả khác dự kiến, ghi lại màn hình nghiệp vụ, thao tác và mã chứng từ để [báo lỗi](BAO-LOI.md).

## 4. Cập nhật bản mới

Lưu công việc, đóng G-Stars, tải **G-Stars-Setup.exe** từ cùng [link bản mới nhất](https://github.com/nnv4361-cmd/g-stars-downloads/releases/latest/download/G-Stars-Setup.exe), rồi nhờ IT cài bản cập nhật theo chính sách công ty.

Cấu hình và hàng đợi báo lỗi gắn với tài khoản Windows đang dùng. Khi đổi máy hoặc tài khoản Windows, nhờ IT cấu hình lại; không chép file mật khẩu mã hóa từ người khác.
