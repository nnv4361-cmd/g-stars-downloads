# 2026.11.17.66

Khung ngoài trung tính/gọn; tìm chức năng không dấu trên menu gốc; giữ vị trí khi đổi phân hệ; tab và phản hồi chờ nhất quán. Màn bên trong/engine/SQL giữ nguyên. [Chi tiết](docs/BAN-SUA-66.md).

# 2026.11.17.65

Visual patch: khôi phục cỡ chữ gọn, tăng độ đậm nhẹ; giữ menu, dữ liệu, thao tác, SQL và M-Invoice. [Chi tiết](docs/BAN-SUA-65.md).

# 2026.11.17.64

M-Invoice: kết nối/tải ký hiệu/lưu cấu hình theo đơn vị; gửi và đọc lại bản nháp, chống gửi lặp/timeout/đồng thời, PDF; không ký/phát hành hoặc ghi mã nháp thành số hóa đơn. Đã test thật trên staging với dữ liệu tổng hợp. [Chi tiết](docs/BAN-SUA-64.md).

# 2026.11.17.63

Chữ10,5pt/đậm hơn, DPI aware; cấu hình hóa đơn riêng theo đơn vị, bỏ giá trị thử cố định của V50. M-Invoice lưu cấu hình, chưa bật gửi. [Chi tiết](docs/BAN-SUA-63.md).

# 2026.11.17.62

Thống nhất tên G-Stars trên màn thiết lập, thông báo, trợ giúp và tài liệu. File chia sẻ cấu hình dùng Mode=GStars, vẫn nhập được cấu hình cũ; giữ nguyên SQL/tài khoản/quyền. [Chi tiết](docs/BAN-SUA-62.md).

# 2026.11.17.61

Sửa máy mới chưa cấu hình SQL bị thoát trước đăng nhập. Tự mở thiết lập, chờ IT lưu rồi đọc lại và đi tiếp. Hủy không kết nối fallback. [Chi tiết](docs/BAN-SUA-61.md).

# 2026.11.17.60

Sửa số chứng từ nhập kho trống vẫn vượt validation.195logic/flow SQLbackup; hồi quy tài khoản/menu/PDF. [Chi tiết](docs/BAN-SUA-60.md).

# G-Stars59 — 2026.11.16.59

Sửa cleanup/result khi worker không sở hữu phiên; mở rộng12nhóm crash/157kiểm tra, giữ43checks cũ. [Chi tiết59](docs/BAN-SUA-59.md).

# G-Stars58 — 2026.11.16.58

Thêm giám sát/nhật ký phục hồi khi cập nhật portable bị ngắt tiến trình, giữ cấu hình SQL và ghi nhớ. [Chi tiết58](docs/BAN-SUA-58.md).

# Thay đổi

## 2026.11.16.57

Cập nhật ngay trong G-Stars: tải, xác minh, đóng an toàn, áp dụng và mở lại. Portable thay file/hoàn tác; bản cài tự gọi Setup passive, tôn trọng UAC. Giữ cấu hình SQL và tài khoản được cấp; không cài nền khi đang làm việc. Bản56 cần bootstrap57 một lần. Engine nghiệp vụ giữ nguyên56.


## 2026.11.16.56

IT cấu hình một lần cho cả máy; giữ tài khoản/quyền G-Stars và cấu hình cũ. Sửa lỗi Crystal subreport làm báo giá không xem/in được. Tăng cỡ và độ tương phản chữ nhỏ, giữ trường và cách thao tác. Engine nghiệp vụ giữ nguyên so55. Kiểm thử trên backup riêng; cần IT thử lại máy in và màn hình thực tế.

# Lịch sử phát hành

[Về trang chính](README.md) · [Bản mới nhất](https://github.com/nnv4361-cmd/g-stars-downloads/releases/latest)

## 2026.11.16.55 — 16/11/2026

- Kết nối database G-Stars tương thích trực tiếp; bỏ điều kiện177contractlab,VIEW DEFINITION và markerUAT khỏi đường chạy thông thường, không tự sửa schema.
- Dùng lại mật khẩu/quyền/cờ/đơn vị trong SQL; truy vấn xác thực/quyền có tham số và bỏ lối chấp nhận mật khẩu dùng chung cũ. Windows Authentication mặc định; SQL Authentication còn khi IT cần.
- Tám báo cáo chạy SQL có tham số từ client, giữ các bản sửa và output/transaction; không cài procedure. Các nhánh phụ thuộc writer/cachelab dùng lại backend mãgốc, chưa coi là nghiệm thu mọi chức năng.
- Đối chiếu công nợ xử lý tổng rỗngNULL thành0 theo mãgốc; vẫn từ chối thiếu cột. Workbook/tài liệu không phải đặt trong thư mục project.
- Source tái build đúnghash; kiểm thử nativeSQL riêng và đóng gói cùng bản portable/GitHub. Xem phạm vi thực tế trong tài liệu kiểm thử;44thânSQLgốc còn thiếu.

## 2026.11.16.52 — 16/11/2026

- Chặn kết quả tạo hóa đơn có mã ERP khác chứng từ đang gửi; giữ trạng thái cần đối chiếu và không tự tạo lại. Kiểm tra cả biên nhận đã lưu từ bản cũ.
- Giới hạn kích thước ngay khi đọc phản hồi API/PDF và tệp cấu hình/biên nhận; không đọc hết rồi mới từ chối. Giữ nguyên định dạng dữ liệu hợp lệ.
- Tái sử dụng ảnh nhận diện, giải phóng ảnh do G-Stars tạo khi thay/đóng; giải phóng StringFormat sau khi vẽ.
- Đường gọi hóa đơn đều giữ chặn gửi dịch vụ thật trong cấu hình UAT dành cho tester. Kiểm thử bằng transport giả, không tạo hóa đơn thật trong đợt debug.
- Rà 1.128 C# khoảng919.000dòng bằng Roslyn và analyzer ngữ nghĩa Microsoft; không có lỗi cú pháp/biên dịch. Cảnh báo ownership/lifecycle được giữ để xác minh, không coi mọi cảnh báo là lỗi đã sửa.
- Source tái build độc lập đúng hash; portable và bộ cài cùng client. Kiểm tra payload bộ cài chỉ đọc, không chạy cài đặt hoặc thay runtime hệ thống.

## 2026.11.16.51 — 16/11/2026

- Hiện số phiên bản trên thanh trên cùng. Bấm để kiểm tra bản mới và tải bộ cài từ GitHub chính thức.
- Có tùy chọn tự kiểm tra bản mới khi mở phần mềm, mặc định tắt. Không tự cài hoặc ghi đè chương trình đang mở; mất Internet không chặn nghiệp vụ.
- Kiểm tra cập nhật dùng HTTPS/TLS1.2, không cần tài khoản GitHub, không gửi thông tin SQL hoặc chứng từ; chỉ nhận release chính thức đúng kênh.
- Kiểm tra lại khởi động, 9 phân hệ, 18 ngữ cảnh form, tài nguyên, SQL, 184 mẫu Crystal và lưu/hủy chứng từ trên backup riêng. Xem phạm vi và các điểm còn chậm bên dưới.
- Engine nghiệp vụ và định nghĩa SQL không đổi. Portable/bộ cài dùng cùng host đã kiểm tra, không chứa khóa GitHub hoặc dữ liệu backup.

## 2026.11.16.50 — 16/11/2026

- Nhập máy chủ bằng IP, IP,cổng hoặc SERVER\INSTANCE; cổng riêng và các tùy chọn ít dùng nằm trong Nâng cao.
- Tự đọc mã định danh TEST, không yêu cầu nhân viên gõ GUID.
- Giữ hai cách xác thực Windows/SQL Server; Windows không yêu cầu nhập tên hoặc mật khẩu SQL riêng khi đã được IT cấp quyền.
- Có Chép lỗi đã lọc mật khẩu; tiếp tục hỗ trợ file cấu hình chia sẻ không có mật khẩu.
- Bổ sung hướng dẫn cho nhân viên/IT, gỡ lỗi, báo lỗi, mẫu cấu hình và script kiểm tra metadata chỉ đọc trên GitHub.
- Engine nghiệp vụ giữ nguyên; không tự cài hợp đồng SQL hoặc bỏ kiểm tra môi trường TEST.

## 2026.11.14.49

- Chuyển báo lỗi qua dịch vụ HTTPS; khóa GitHub nằm phía dịch vụ, không đóng trong bộ cài.
- Gửi báo lỗi và gửi lại dùng cùng mã để đối chiếu, không cần tài khoản GitHub của tester.
- Phát hành công khai trên repo phân phối riêng; repo nhận lỗi giữ Private. Link tải cố định dùng GitHub Latest.

Các bản này là UAT; xem [phạm vi kiểm thử](docs/TINH-TRANG-KIEM-THU.md).
