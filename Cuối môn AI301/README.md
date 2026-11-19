# 🧠 QuynhAnhAI301 - AI Data Analytics & Strategy Agent
> **Đồ án cuối kỳ môn AI301** | Hệ thống AI Agent phân tích dữ liệu tự động kết hợp mô hình kiểm duyệt 2 vòng của con người (Human-in-the-Loop) và xuất bản báo cáo quản trị chiến lược cấp cao (Senior Strategy Consultant).

Ứng dụng được thiết kế tối ưu, cực kỳ dễ dùng (người không biết kỹ thuật cũng dùng được), tách biệt **1 Trang / 1 Bước** theo quy trình tuần tự 6 bước và tích hợp tính năng **Mở báo cáo trên Tab mới (Không cần tải file về máy)** theo phong cách **Corporate Editorial** tối giản, thanh lịch.

---

## 🌟 Điểm nổi bật của hệ thống

1. **Khả năng tương thích dữ liệu tối đa (Zero Crash on Exam Day)**:
   - Tự động nhận diện mọi biến thể tên cột trong file dữ liệu của thầy cô (CSV, Excel `.xlsx`/`.xls`, hoặc Google Sheets).
   - Tự động xử lý trường hợp khuyết thiếu mã khách hàng, ngày tháng hoặc mã đơn bằng khóa đại diện an toàn, đảm bảo chạy trơn tru $100\%$ không bị gián đoạn.
2. **Quy trình 6 Bước chuẩn Human-in-the-Loop (HITL)**:
   - **Bước 1:** Nạp dữ liệu & Thiết lập bối cảnh kinh doanh / câu hỏi phân tích.
   - **Bước 2:** AI tự động làm sạch & chuẩn hóa dữ liệu theo chuẩn ISO.
   - **Bước 3 (Người duyệt 1):** Kiểm định chất lượng dữ liệu sạch, có thể gửi phản hồi để AI lọc lại ngay tại chỗ.
   - **Bước 4:** AI tính toán các chỉ số tài chính, phân loại và đối chiếu bối cảnh.
   - **Bước 5:** Xem Dashboard trực quan, bảng xếp hạng Top 5 Pareto và đề xuất chiến lược AI. Nút *"Tiếp Tục Sang Bước 6"* được đặt đồng bộ ở cuối trang.
   - **Bước 6 (Người duyệt 2):** Phê duyệt báo cáo điều hành và mở báo cáo chi tiết sang Tab mới độc lập.
3. **Báo cáo Chiến lược Corporate Editorial ([report.html](http://localhost:3000/report.html))**:
   - **Phong cách thiết kế tạp chí kinh tế tối giản & sang trọng**: Sử dụng typography cổ điển (Newsreader) kết hợp hiện đại (Inter), tận dụng khoảng trắng, **tuyệt đối không dùng các box/card màu mè gây rối mắt**.
   - **Mạch phân tích sắc bén**: Luôn tuân thủ chuỗi **Bằng chứng định lượng $\rightarrow$ Vấn đề trọng tâm $\rightarrow$ Insight chiến lược $\rightarrow$ Giải pháp hành động**.
   - **Đồng bộ tuyệt đối (Single Source of Truth)**: Phương trình kế toán quản trị cân bằng $100\%$: $\text{Doanh thu} = \text{Giá vốn (COGS)} + \text{Lợi nhuận gộp}$.
   - **Trực quan hóa đa chiều**: Bộ 10 biểu đồ chuyên sâu cao cấp có sẵn nhãn số liệu (Data Labels) trực tiếp, bao gồm: Xu hướng chu kỳ, Cơ cấu kênh bán, Tỷ trọng danh mục, Cân đối Unit Economics, Phân bổ địa bàn khu vực, Tỷ lệ chi phí COGS vs Biên gộp, Phân khúc khách hàng & Tỷ lệ mua lặp lại (Retention), Khối lượng đơn hàng theo kênh, Biên lợi nhuận % theo ngành hàng và Thang đo AOV vs Mốc Freeship.
   - **Kế hoạch hành động 30 - 60 - 90 Ngày**: Định dạng văn bản phân kỳ độc lập (Narrative Text Blocks - tuyệt đối không dùng bảng), đối ứng 1-1 giữa Vấn đề & Insight bản chất, Giải pháp thực thi trực diện, KPI định lượng mục tiêu (tính từ số nền thực tế) và bộ phận chủ trì.
   - **Khối Phê duyệt & Tải xuống (Verified Style)**: Tích hợp đầy đủ Accordion chỉnh sửa tiêu đề/tóm tắt, thẻ Duyệt bước này kèm đề xuất AI và các nút tải xuống (CSV sạch, Markdown) có cơ chế khóa/mở khóa thông minh khi xác nhận.
   - **Kiểm soát chất lượng DAMA**: Đánh giá 4 chiều chuẩn quốc tế (Completeness, Uniqueness, Validity, Consistency).
   - **Tối ưu In ấn & Xuất PDF**: Chống ngắt đôi biểu đồ (`.print-avoid-break`) và tự động ẩn thanh điều khiển web (`.no-print`).

---

## 🗺️ Quy trình 6 Bước Hoạt Động (Workflow State Machine)

```text
[Trang 1: Nạp File / Google Sheets & Chọn Bối Cảnh]
         │
         ├── (Thiếu Doanh Thu) ─> [Bật Khung Cảnh Báo ERROR ĐỎ & Khóa Nút]
         └── (Hợp lệ) ──────────> [Trang 2: AI Tự Động Lọc & Chuẩn Hóa ISO]
                                           │
                                           ▼
                                 [Trang 3: Người Kiểm Duyệt 1 (HITL 1 - Dữ Liệu Sạch)]
                                           │
                                           ├── (Chưa ưng ý) ──> Nhập Feedback -> AI lọc lại trực tiếp
                                           └── (Đã OK) ───────> [Trang 4: AI Phân Tích & Đối Chiếu Bối Cảnh]
                                                                         │
                                                                         ▼
                                                               [Trang 5: Xem Dashboard & Đề Xuất Kinh Doanh]
                                                                         │
                                                                         ▼
                                                               [Trang 6: Người Kiểm Duyệt Cuối (HITL 2 - Phê Duyệt)]
                                                                         │
                                                                         ├── (Chưa ưng ý) ──> Feedback -> AI phân tích lại
                                                                         └── (Đã OK) ───────> [Mở Báo Cáo Corporate Editorial Tab Mới]
```

---

## 📁 Cấu trúc thư mục dự án

```text
Cuối môn AI301/
├── index.html                  # Giao diện chính 6 Trang Wizard (Human-in-the-Loop)
├── report.html                 # Trang Báo cáo Corporate Editorial mở trên Tab mới
├── app.js                      # Bộ não điều khiển State Machine & AI Agent
├── server.js                   # HTTP Server nội bộ chạy cổng 3000
├── start.sh                    # Script khởi động 1 click
├── mau_du_lieu_cua_thay.csv    # Dữ liệu thi mẫu của thầy cô (Đầy đủ Tháng, Kênh, Khu vực, Sản phẩm, Doanh thu, Giá vốn...)
├── du_lieu_chay_thu.csv        # Dữ liệu chuẩn (có sẵn dòng trùng & ô trống để test AI lọc)
├── du_lieu_loi_chay_thu.csv    # Dữ liệu thiếu cột (dùng để test màn hình ERROR đỏ)
├── sample_data/                # Thư mục chứa các bộ dữ liệu mẫu dự phòng
└── README.md                   # Tài liệu hướng dẫn đồ án
```

---

## 🚀 Hướng dẫn chạy và sử dụng

### 1. Khởi động ứng dụng
Hệ thống hiện đang chạy tại:
👉 **[http://localhost:3000](http://localhost:3000)**

*(Nếu cần khởi động lại, chỉ cần mở Terminal trong thư mục dự án và chạy: `./start.sh`)*

### 2. Kịch bản thuyết trình bảo vệ đồ án (Demo Script 2 Phút)

1. **Bước 1: Nạp 100% dữ liệu (Zero Sampling) & Auto-Context Detection**:
   - Nạp toàn bộ 100% dòng dữ liệu thực tế (Tuyệt đối không lấy mẫu hay chỉ đọc 5-10 dòng đầu). Tự động nhận diện ngành hàng và điền sẵn 4 câu hỏi trọng tâm.
   - Người dùng chủ động kiểm tra bối cảnh, bổ sung/chỉnh sửa câu hỏi bài toán theo ý muốn (Ví dụ: tỷ lệ khách mua lặp lại, kênh chủ lực, biên lợi nhuận, AOV), sau đó chủ động bấm *"Xác nhận dữ liệu & Sang bước 2"* (Không tự động nhảy bước, trao toàn quyền kiểm soát cho người dùng).
2. **Bước 2 & 3: Kiểm soát chất lượng dữ liệu (HITL 1)**:
   - AI tự động khử trùng lặp, chuẩn hóa ngày tháng ISO, xử lý ô trống.
   - Tại Bước 3, người dùng đóng vai trò chuyên viên dữ liệu (Data Steward) xem xét bảng dữ liệu sạch và có thể nhập phản hồi để lọc lại.
3. **Bước 4 & 5: Trực quan hóa Dashboard**:
   - AI tính toán 4 chỉ số KPI lớn, tỷ lệ tăng trưởng so với kỳ trước, biểu đồ xu hướng tuần có cột đỉnh đỏ gạch, cơ cấu ngành hàng và bảng xếp hạng Top 5 Pareto.
   - Nhấp nút *"Tiếp Tục Sang Bước 6 (Phê Duyệt Cuối)"* ở chân trang.
4. **Bước 6 & Báo cáo Corporate Editorial**:
   - Đọc bản tóm tắt điều hành, xem xét khối "Duyệt bước này" với cơ chế đề xuất sửa đổi và mở khóa tải xuống CSV/Markdown.
   - Bấm *"Mở Báo Cáo Phân Tích Chi Tiết (Tab Mới)"* để trình chiếu báo cáo tại [report.html](http://localhost:3000/report.html):
     * Phong cách tối giản thanh lịch như tạp chí kinh tế cấp cao (McKinsey / Harvard Business Review), không có hộp màu mè.
     * Mạch phân tích 4 tầng: Bằng chứng định lượng $\rightarrow$ Vấn đề $\rightarrow$ Insight $\rightarrow$ Giải pháp.
     * Kế hoạch hành động 30-60-90 ngày dạng đoạn văn bản phân kỳ rõ ràng, gắn KPI mục tiêu định lượng và bộ phận chủ trì (không dùng bảng).
     * Phần cuối tích hợp khối Duyệt bước này, chỉnh tiêu đề tóm tắt và mở khóa tải xuống file dữ liệu sạch.
     * Bấm nút *"In / Xuất PDF"* để chứng minh tính năng xuất bản không bị ngắt đôi trang biểu đồ.
