# Tình trạng kiểm thử

[Về trang chính](../README.md) · [Lịch sử bản phát hành](../CHANGELOG.md)

Áp dụng cho **2026.11.16.50**. Đây là bản UAT dùng trên database TEST riêng.

| Phạm vi | Bằng chứng hiện có |
| --- | --- |
| Nhập máy chủ, mở/thu gọn Nâng cao, lưu và đọc lại cấu hình | 54 kiểm tra trên candidate, lặp lại 54 trên client trích MSI và 54 trên portable đang phát |
| SqlClient và OLE DB x86, tự đọc định danh TEST, kiểm tra hợp đồng | Kết nối thực tế trên bản SQL backup lab riêng; không ghi dữ liệu nghiệp vụ trong bộ kiểm tra kết nối |
| Windows Authentication | 9 kiểm tra bộ tạo kết nối/giao diện, không có kết nối Windows-domain thực tế tại công ty |
| Báo lỗi | 45 kiểm tra hồi quy ở bản 50; đường gửi HTTPS đến repository Private đã được kiểm chứng trực tiếp ở bản 49 |
| Bộ cài | 412 kiểm tra payload/đóng gói, 32 trường hợp điều kiện và 11 kiểm tra SQL-dialog/Crystal ngoài thư mục dự án |
| Source ứng dụng | 1.126 file C# tái build độc lập đúng hash host/engine/runtime; source ứng dụng không nằm trong repo phân phối công khai |
| File phát hành | Bộ cài và tài liệu được tải lại không đăng nhập, đối chiếu SHA256 khớp; link Latest cố định |

**Chưa được xác minh tại công ty:** đường mạng, cổng/SQL Browser, Windows-domain, TLS/chứng chỉ, quyền thực tế, nhiều người dùng và máy in cần dùng. Chưa nghiệm thu toàn bộ nghiệp vụ hoặc khẳng định mọi backup Carsoft đều tương thích. Cài trên Windows sạch, MSI apply/repair/rollback/uninstall và máy in thật vẫn cần IT pilot.

Số kiểm tra ở trên là phạm vi cụ thể, không phải tuyên bố đã kiểm thử toàn bộ ERP. IT cần database có thành phần G-Stars đúng phiên bản; dấu UAT hoặc kết nối thành công không tự tạo các thành phần đó.

Bản 50 giữ nguyên engine nghiệp vụ của bản trước; thay đổi tập trung ở cấu hình kết nối và hướng dẫn IT.
