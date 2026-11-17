# Kiểm thử G-Stars60

[Trang chính](../README.md) · [Logic và flow60](BAN-SUA-60.md) · [Crash test59](BAN-SUA-59.md)

| Nhóm vừa chạy trên60 | Kết quả |
|---|---|
| Logic hóa đơn |43kiểm tra; HTTP test double, không gọi nhà cung cấp thật |
| Lưu hóa đơn/VAT một mức và nhiều mức |70kiểm tra; SQL thật, rollback/lưu lặp/mở lại/hủy, PDFCrystal |
| Mua hàng → nhận từng phần → tồn/công nợ |82kiểm tra; SQL thật, oracle số tiền/tồn độc lập |
| Hồi quy |52auth/quyền,109mẫu native,17cấu hình, viewer/PDF báo giá |
| Source/đóng gói |1.137C# build độc lập;323appfiles/334archive chỉ đọc |

Vòng test đọc nhầm bảng tồn/trường giá đã được giữ; sửa oracle theo SQL gốc rồi chạy fixture mới.43crash checks và157checks mở rộng của59 là bằng chứng kế thừa, không tính là vừa chạy lại trên60. Không chứng minh toànERP.44thânSQL thiếu; UOM/FX/đơn vị/quyền thật/concurrencySQL/physicalprinter/installedUAC chưa đầy đủ.
