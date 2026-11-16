# G-Stars55 · SQL Carsoft native

[Trang chính](../README.md) · [IT](HUONG-DAN-IT.md)

Đường chạy thông thường chọn database đã restore, kiểm tra cấu trúc bằng truy vấn không lấy dòng dữ liệu, kết nối qua hai provider rồi dùng tài khoản/quyền nghiệp vụ của SQL Carsoft. Không cài procedure/schema hoặc thay dữ liệu khi kiểm tra kết nối. Không đọc định nghĩa SQL, không bắt buộc marker UAT/GUID trong database.

Tám báo cáo từng phụ thuộc contractlab được giữ trong client: tổng hợp/chi tiết/tuổi nợ phải thu, bảng kê dịch vụ, hóa đơn chưa thanh toán, tồn xe, chi tiết chi phí và doanh thu khu vực. Nội dung đã xác minh được gọi bằng `sys.sp_executesql` với tham số; giữ parameter objects, vị trí, kiểu, chiều output và transaction của caller. Bảng tạm tổng hợp công nợ chuyển thành bảng tạm riêng từng phiên. Không cài procedure hoặc đòi quyền CREATE PROCEDURE.

35 phương thức từng chuyển sang writer/cache/bảnglab dùng lại nhánh backend từ mã nguồn client Carsoft đã cung cấp. Đây là lựa chọn tương thích nguồn gốc, không chứng minh mọi SQL mà nhà cung cấp từng gọi đều tồn tại. Những nhánh như danh mục bảo trì/bộ phận, Excel và cache thuế cần nghiệm thu theo backend thực tế. Không coi 35nhánh này hay 8báo cáo là toàn hệ thống đã hoàn tất.

Xác thực tài khoản và đọc quyền dùng truy vấn có tham số; mật khẩu vẫn theo định dạng Carsoft trong database. Loại bỏ lối chấp nhận mật khẩu dùng chung cũ; không công khai giá trị đó. Giữ quy tắc quản trị của mã gốc dựa trên bản ghi người dùng SQL, không gán admin theo tên người dùng lab. Không có quyền thì từ chối cả xuất Excel. Quyền truy cập đơn vị vẫn do luồng đăng nhập gốc kiểm tra.

Windows là mặc định khi IT đã cấp quyền; không chứa SQL credential trong bộ cài. Native mode cho phép chọn workbook/tài liệu ở vị trí thông thường, không đòi để trong thư mục project; guard chống mở executable/script và guard kết nối sai database được giữ. Những đường selftestlab cũ vẫn phục vụ bằng chứng lịch sử, không phải yêu cầu triển khai cho nhân viên.

Source C# có thể tái build độc lập thành đúng host và engine phát hành; application source nằm riêng trong project, không được đẩy vào repository tải công khai. [Phạm vi kiểm thử](TINH-TRANG-KIEM-THU.md) nêu rõ bằng chứng và phần chưa nghiệm thu. 44thânSQLgốc còn thiếu vẫn là vấn đề riêng, chưa khôi phục được từ SQLbackup.
