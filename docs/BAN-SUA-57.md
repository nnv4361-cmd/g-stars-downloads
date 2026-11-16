# G-Stars57

[Trang chính](../README.md) · [Kiểm thử](TINH-TRANG-KIEM-THU.md)

- Thêm tải và áp dụng bản mới ngay trong G-Stars, có tiến độ và Hủy. URL theo phiên bản được kiểm tra; SHA256 và kích thước phải khớp. Metadata tĩnh trên repository giảm nhu cầu gọi API GitHub; không dùng GitHub credential của tester.
- Worker riêng được pin hash, chạy ngoài thư mục file ứng dụng và chỉ áp dụng sau khi phiên cũ đóng, có tín hiệu commit. Không kill tiến trình, không tự lưu chứng từ. Màn nghiệp vụ đang mở chặn cập nhật.
- Portable chỉ thay file thuộc app, kiểm tra từng file và giữ bản hoàn tác nếu thao tác bị lỗi. Cấu hình SQL/cá nhân không được đưa vào gói update. Tệp/mẫu đã chỉnh tại máy được kiểm tra xung đột.
- Bản cài tự gọi Setup đã xác minh ở chế độ tiến trình tự động, giữ `/norestart`. UAC Windows vẫn được tôn trọng. Không thay đổi schema SQL, môi trường OpenClaw hoặc runtime trong đợt phát triển.
- Giữ sửa lỗi Crystal và chữ bản56, tài khoản/quyền Carsoft và cấu hình IT cả máy. Engine nghiệp vụ vẫn byte-identical với56.

Bản56 cần bootstrap57 một lần; updater mới không hiện ngược vào bản56. Các cập nhật sau57 không cần mở Setup thủ công. Chưa nghiệm thu máy Windows sạch/UAC thật hoặc mọi chính sách IT; không coi kết quả updater là nghiệm thu toàn ERP.
