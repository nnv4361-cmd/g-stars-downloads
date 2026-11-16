# G-Stars59 — mở rộng crash test

[Trang chính](../README.md) · [Cập nhật](PHIEN-BAN-VA-CAP-NHAT.md) · [Kiểm thử](TINH-TRANG-KIEM-THU.md)

Tái hiện trên helper58 thật hai lỗi: worker trùng bị từ chối nhưng catch xóa gói của worker đang giữ quyền; chạy lại yêu cầu đã hoàn tất làm ghi đè kết quả và dọn gói. Bản59 chỉ cho worker sở hữu phiên xử lý cleanup/result. Helper59 thật vượt kiểm tra trùng cùng phiên, hai phiên cùng app, ticket bị sửa và replay kết quả đã chốt.

12 nhóm bổ sung/157kiểm tra: backup thiếu/hỏng, file bị sửa ngoài, file hoàn tác bị khóa, journal bị cắt, baseline hỏng, phục hồi lặp lại, ngắt giữa rollback, ngắt trong giải nén và ngắt khi ghi thân tải. Retry sau khi bỏ khóa/sửa fixture hỏng khôi phục đúng hash bản cũ/baseline; cấu hình SQL và fixture ghi nhớ không đổi. Bản hỏng/khóa vẫn giữ marker phục hồi và dừng an toàn.

43kiểm tra ngắt tiến trình trước đó tiếp tục đạt. Main thật của59 phục hồi sau khi cả worker/guardian bị ngắt. QA chỉ thêm điểm dừng ở một chunk ZIP/một lần rollback/progress của stream; code shipping không chứa điểm dừng. Nhóm ownership dùng helper sản phẩm nguyên bản. Đây là ngắt tiến trình/fixture dữ liệu, không phải rút điện, lỗi phần cứng, làm đầy ổ đĩa hay cắt mạng WAN thật.

Giữ engine nghiệp vụ58, cấu hình SQL và định dạng ghi nhớ.1.137C# tái build độc lập,323appfiles. Kiểm tra tài khoản/quyền/native/PDF trên SQLbackup riêng. Installer/UAC thật/Windows sạch vẫn cần ITpilot; không nghiệm thu toànERP hoặc44thânSQLgốc còn thiếu.
