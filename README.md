# Dự án Android: Chấm Thi THPT 2025 (Chuẩn Công văn 1239/BGDĐT-QLCL)

Gói mã nguồn này chứa toàn bộ dự án Android (`vn.edu.chamthi2025`) đóng gói ứng dụng Chấm Thi Trắc Nghiệm THPT 2025 theo chuẩn 3 phần của Bộ Giáo dục và Đào tạo.

## Cách 1: Cài trực tiếp lên điện thoại Android không cần biên dịch
Bạn có thể mở trực tiếp file `app/src/main/assets/index.html` trên trình duyệt Chrome của điện thoại Android và chọn **Thêm vào màn hình chính (Add to Home screen)** để dùng ngay.

## Cách 2: Xuất file cài đặt `.apk` bằng Android Studio
1. Mở thư mục này trong **Android Studio**.
2. Chọn menu **Build -> Build Bundle(s) / APK(s) -> Build APK(s)**.
3. Lấy file `.apk` tại `app/build/outputs/apk/debug/app-debug.apk` và chép vào điện thoại Android để cài đặt.

## Cách 3: Xuất file `.apk` tự động trên đám mây (GitHub Actions - Không cần cài Android Studio)
1. Tải toàn bộ thư mục này lên một kho chứa (Repository) trên GitHub.
2. Vào tab **Actions**, chọn workflow **Build Android APK** -> bấm **Run workflow**.
3. Sau khoảng 1 phút, tải file `ChamThiTHPT2025-debug-apk` về điện thoại để cài đặt.
