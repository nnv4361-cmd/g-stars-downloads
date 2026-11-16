# Tình trạng kiểm thử

[Về trang chính](../README.md) · [Đợt debug52](DEBUG-52.md)

Áp dụng cho **2026.11.16.52**, UAT trên bản SQL backup riêng.

| Phạm vi | Kết quả |
| --- | --- |
| Source |1.128C#, khoảng919.000dòng; cú pháp/biên dịch0lỗi; tái build độc lập đúnghash |
| Ngữ nghĩa Microsoft |1.409cảnh báo/nghi vấn đã lưu/phân nhóm, chưa xác nhận hết, không tính là số lỗi đã sửa |
| Hóa đơn giả lập |56ca gồm tiền/thuế, replay/timeout/concurrency, sai ERP, biên nhận cũ và UAT |
| IO/ảnh |28ca,100refresh; đối chiếu thân hàm còn khớp ở host cuối |
| Native |139mẫu0lỗi trong lượt đo trước thay đổi chỉ thêm cổng UAT; code UI không đổi ở bước cuối |
| Form/Crystal |446/447constructor đạt,1thiếu ngữ cảnh;184mẫu/948ca cấu trúc-vòngđời, không phải mọi dữ liệu báo cáo |
| Đăng nhập/SQL/báo lỗi |24UI+22khung+54SQL+45báolỗi+24cậpnhật trên candidate và portable |
| Lưu chứng từ |15PASS,4NOT_RUN,0FAIL/0BLOCKED; fixture tổng hợp, không gửi V50 thật |
| Bộ cài |333archivechecks chỉ đọc,322file app đúnghash; không executeSetup/layout/MSIapply |
| Dịch vụ báo lỗi |14test local; service triển khai không đổi |

Lượt đo native: vào màn chính khoảng2,38giây, bỏ thời gian nhập đăng nhập. p95warm Kế toán~500ms/Kinhdoanhxe~888ms/Báogiá~825ms, còn vượt mục tiêu lab. Mẫu nhỏ/cache nóng, không phải SLA hay bằng chứng nhanh hơn/chậm hơn từ biến động giữa hai lần chạy.

Chưa nghiệm thu toàn ERP/quyền thật/mạng công ty/Windows sạch/in vật lý/44thân SQL còn thiếu. Không kiểm tra trực tiếp SQL công ty hoặc OpenClaw. Xem giới hạn và cảnh báo còn lại trong [Debug52](DEBUG-52.md).
