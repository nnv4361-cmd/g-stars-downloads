# G-Stars 2026.11.17.60 — logic và flow

[Trang chính](../README.md) · [Kiểm thử](TINH-TRANG-KIEM-THU.md) · [Cập nhật](PHIEN-BAN-VA-CAP-NHAT.md)

Sửa lỗi Nhập kho: để trống số chứng từ có cảnh báo nhưng kiểm tra vẫn trả hợp lệ. Bản60 dừng ngay tại cảnh báo. Chỉ thay nhánh kiểm tra này; SQL và phép tính tài chính giữ nguyên.1.075file C# gốc khôi phục không đổi; bộ source1.137C# tái build độc lập đúng hash.

195kiểm tra tự động, không Computer Use:

- 43logic hóa đơn: VAT/tổng tiền, dữ liệu sai, replay, timeout mơ hồ và hai thread gửi đồng thời. HTTP dùng transport giả có khóa test; không phát hành/ký hóa đơn thật.
- 70kiểm tra lưu hóa đơn VAT một mức và nhiều mức8/10%: CmdSave thật, đọc SQL độc lập, mở lại, công nợ, khóa kỳ, thiếu tài khoản, lỗi số tiền vượt kiểu SQL, rollback, lưu lặp, hủy. Hóa đơn một mức xuất PDF Crystal thật.
- 82kiểm tra mua hàng: đơn10, nhận4+6 với hệ số2; tồn20, giá trị1.150, công nợ1.242; giá vốn58 theo làm tròn gốc; mở lại, lưu lại phiếu cũ không lùi giá mới, bỏ ghi sổ/ghi lại/hủy và trường bắt buộc. Fixture tổng hợp được hủy theo mã gốc; audit giữ lại.

Hồi quy52auth/quyền,109mẫu menu/form,17cấu hình máy, viewer/PDF báo giá;334kiểm tra archive chỉ đọc.455định nghĩa SQL giữ hash, không tạo SQLcopy. Chưa nghiệm thu toànERP, quyền thật, mọi đơn vị/tỷ giá/UOM, concurrencySQL, máy in vật lý hoặc Windows sạch/MSI/UAC.44thân SQL gốc còn thiếu.

IT kiểm tra lại: tạo phiếu nhập kho hợp lệ, xóa số chứng từ rồi Lưu. Phải báo lỗi và không tạo chứng từ. Nhập số, lưu/mở lại và đối chiếu số lượng/số tiền.
