# G-Stars 2026.11.17.65 — Visual patch

[Trang chính](../README.md) · [Cập nhật](PHIEN-BAN-VA-CAP-NHAT.md)

Đưa chữ về cỡ gọn trước lần tăng ở bản63: ô nhập, nhãn và bảng dùng mức tối thiểu9pt; các cỡ chữ lớn vốn có được giữ. Menu dùng lại cỡ riêng, bỏ ép10.5pt. Dùng Segoe UI Semibold cho chữ thường để đậm nhẹ, giữ chữ Bold và màu trạng thái. Giữ màu chữ tối, không đổi DPI Windows, menu, thứ tự phím Tab, trường dữ liệu, quyền hay thao tác nghiệp vụ.

Visual patch nằm ở `app/G-Stars-Visual-Patch.json`, được nạp một lần khi mở ứng dụng. Không có vòng quét font hoặc hiệu ứng theo chuột. Bản này đã kèm patch, nhân viên chỉ cập nhật như bình thường. Có ZIP patch riêng để IT áp lại bộ kiểu chữ mặc định; chỉ dùng cho G-Stars65trở lên, không thay EXE và không dùng để nâng phiên bản64. Không chỉnh các file SQL hoặc tài khoản.

17kiểm tra typography/cache/đầu vào/hình học control;52auth/quyền/8đọc nghiệp vụ,17machine và109lượt native không lỗi; Crystal PDF đạt. Màn báo giá240control về9pt,233Semibold và7Bold,66nhãn đọc rõ,0ô nhập nhỏ hơn9pt. Engine64giữ nguyên SHA;455định nghĩa SQL nguyên. Bộ1140C# build độc lập đúng hash. Gói cài được kiểm tra335điểm bằng giải nén chỉ đọc; chưa chạy Setup/UAC/Windows sạch hoặc xác nhận trên mọi màn hình/DPI/máy in thật.

Giữ khả năng M-Invoice của bản64; không tạo hóa đơn staging mới trong lần chỉnh ngoại hình. Cấu hình SQL/đăng nhập được giữ. Bổ sung đúng file xác nhận phiên bản có tiền tốvcho trình cập nhật cũ. Không database công ty/OpenClaw/Computer Use.
