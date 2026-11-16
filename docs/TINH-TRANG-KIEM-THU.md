# Tình trạng kiểm thử

[Về trang chính](../README.md) · [Lịch sử phát hành](../CHANGELOG.md)

Áp dụng cho **2026.11.16.51**, UAT trên SQL backup riêng. Không nghiệm thu toàn bộ ERP.

| Phạm vi | Kết quả |
| --- | --- |
| Khởi động, 9 phân hệ, 18 ngữ cảnh form, mở/đọc/đóng và tài nguyên | 139 mẫu trên bản cuối, không có lỗi thao tác trong lượt này; thêm lượt trace SQL riêng |
| Thời gian vào màn chính bằng bài test native, bỏ thời gian gõ đăng nhập | 2.29 giây trong lượt cuối; không phải đo máy Windows sạch hoặc mạng công ty |
| Cấu trúc form/giao diện và liên kết sự kiện | 446/447 form đạt bài test chỉ dựng; 1 form thiếu ngữ cảnh độc lập, đã mở được trong test có đăng nhập; không tính 447 đạt |
| Crystal | 184 mẫu/948 kiểm tra cấu trúc và vòng đời; code Crystal và engine không đổi; không xác minh toàn bộ dữ liệu báo cáo hoặc in thật |
| SQL | 1464 sự kiện của đúng tiến trình test, không rơi/cắt; p95 4.83 ms, lớn nhất 392.57 ms trong lượt này |
| Phiên bản/cập nhật | 24 kiểm tra gồm metadata bất hợp lệ, sai nguồn/asset, bản cũ/bằng/mới, nút native và đọc GitHub thật; không tự chạy installer |
| SQL connection và báo lỗi | 54 kiểm tra kết nối +45 hồi quy báo lỗi trên candidate và client trích MSI; UI/menu và khôi phục trạng thái đăng nhập đạt |
| Lưu chứng từ/hóa đơn | Toolkit trên portable51: 15 nhóm đạt, 0 lỗi/0 bị chặn; 4 nhóm NOT_RUN về dịch vụ thật/ký-in/toàn nghiệp vụ |
| Bộ cài | 412 kiểm tra payload/đóng gói, 32 điều kiện, 11 kiểm tra client trích MSI ngoài project; không apply MSI/cài runtime lên máy phát triển |
| Source | 1.127 C#=1.075 khôi phục+52 phần host, tái build độc lập đúng host/engine/runtime; source ứng dụng không công khai tại repo tải |

## Điểm còn cần tối ưu

| Thao tác | p95 khi đã mở trước đó, lượt cuối | Mục tiêu lab |
| --- | --- | --- |
| cmdPhanHeKinhDoanh | 855.8 ms | 300 ms |
| cmdPhanHe_KT | 458.0 ms | 300 ms |
| Frm_BaoGiaSuaChua_2VAT | 773.8 ms | 750 ms |

Các mẫu ít và dùng cache Windows/SQL đã nóng; không suy ra SLA hoặc tuyên bố tăng tốc từ chênh lệch hai lần đo. SQL roundtrip/binding và tạo control đồng bộ còn gây chờ. Không đổi logic hoặc cache dữ liệu nghiệp vụ để lấy số đẹp.

## Chưa nghiệm thu

Mạng công ty/SQL Browser/Windows-domain/chứng chỉ/quyền thật, nhiều người dùng, Windows sạch, MSI apply/repair/rollback/uninstall, máy in vật lý, mọi nhánh nghiệp vụ/ngoại tệ và 44 thân SQL lịch sử chưa tìm lại được. Kết nối SQL thành công hoặc số test không chứng minh mọi backup/mọi chức năng tương thích.
