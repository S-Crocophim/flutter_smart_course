# Smart Course - Flutter Modern Refactor

A project dedicated to refactoring the legacy "Smart Course" Flutter application into a modern, well-structured, and scalable app. This project implements best practices in software architecture, state management, and navigation.

- **Project by:** Iqbal Maulana (20220801571)
- **Refactor Year:** 2025

<br>

---

<details>
<summary>🇮🇩 Versi Bahasa Indonesia (Klik untuk Membuka)</summary>

## 📖 Deskripsi Proyek

Aplikasi Smart Course versi asli merupakan contoh aplikasi yang dibangun menggunakan versi awal ekosistem Flutter. Seiring berjalannya waktu, banyak pola dan pustaka (library) yang digunakan menjadi usang.

Tujuan utama dari proyek refactor ini adalah:
1.  **Modernisasi Infrastruktur:** Meng-upgrade seluruh basis kode ke versi Dart terbaru dengan dukungan penuh **Null Safety**.
2.  **Penerapan Arsitektur Solid:** Merombak struktur proyek dari yang monolitik menjadi arsitektur **Feature-First**, di mana setiap fitur terisolasi sebagai modul mandiri.
3.  **Implementasi State Management Modern:** Mengganti state management implisit dengan **Riverpod** untuk pengelolaan state yang lebih terstruktur, dapat diuji (testable), dan terprediksi.
4.  **Peningkatan Pengalaman Pengguna (UX):** Memanfaatkan pustaka modern untuk navigasi, animasi, dan pemuatan data yang lebih efisien.

## ✨ Fitur Utama

-   **Halaman Utama (Home):** Menampilkan daftar kursus unggulan (*Featured*) dan populer dalam format kartu yang dinamis.
-   **Halaman Rekomendasi:** Menyajikan daftar kursus yang direkomendasikan. Data diambil secara asinkron dan ditampilkan setelah proses loading.
-   **Persistensi Data Lokal:** Data kursus yang pertama kali diambil akan disimpan di penyimpanan lokal menggunakan **Hive**, sehingga pada pembukaan aplikasi selanjutnya, data dapat dimuat secara instan tanpa simulasi panggilan jaringan.
-   **Navigasi Persisten:** Implementasi *Bottom Navigation Bar* yang state-nya tetap terjaga (persistent) saat berpindah antar halaman.
-   **Animasi Halus:** Penambahan animasi transisi pada pemuatan daftar untuk memperkaya antarmuka pengguna.

## 💎 Plugin dari FlutterGems yang Digunakan

Proyek ini memanfaatkan beberapa plugin populer dari [FlutterGems](https://fluttergems.dev/) untuk mempercepat pengembangan:

-   **State Management:**
    -   [`flutter_riverpod`](https://fluttergems.dev/packages/flutter_riverpod/): Solusi state management modern yang reaktif dan *compile-safe*.
-   **Penyimpanan Lokal (Local Storage):**
    -   [`hive_flutter`](https://fluttergems.dev/packages/hive_flutter/): Database NoSQL *key-value* yang sangat cepat, ringan, dan ditulis murni dalam Dart.
-   **Navigasi (Routing):**
    -   [`go_router`](https://fluttergems.dev/packages/go_router/): Solusi navigasi deklaratif yang direkomendasikan secara resmi oleh tim Flutter.
-   **Peningkatan UI & Utility:**
    -   [`flutter_animate`](https://fluttergems.dev/packages/flutter_animate/): Untuk menambahkan animasi kompleks dengan cara yang sederhana.
    -   [`cached_network_image`](https://fluttergems.dev/packages/cached_network_image/): Untuk memuat dan menyimpan cache gambar dari internet secara efisien.
    -   [`google_fonts`](https://fluttergems.dev/packages/google_fonts/): Untuk menggunakan font dari Google Fonts.

## 📚 Referensi & Inspirasi

Proyek refactor ini terinspirasi dari basis kode orisinal yang dikembangkan oleh **TheAlphamerc**. Aplikasi aslinya berfungsi sebagai studi kasus yang sangat baik untuk menunjukkan evolusi pengembangan aplikasi Flutter.

-   **Repository Asli:** [TheAlphamerc/flutter_smart_course](https://github.com/TheAlphamerc/flutter_smart_course.git)

## 🚀 Petunjuk Instalasi & Menjalankan Proyek

Pastikan Anda telah menginstal [Flutter SDK](https://flutter.dev/docs/get-started/install) versi terbaru.

1.  **Clone Repository Ini**
    ```bash
    git clone [URL_REPOSITORY_ANDA]
    cd flutter_smart_course
    ```

2.  **Ambil Dependensi**
    ```bash
    flutter pub get
    ```

3.  **Generate File untuk Hive**
    ```bash
    dart run build_runner build --delete-conflicting-outputs
    ```
    *Catatan: Jika Anda mengubah `course_model.dart`, jalankan kembali perintah ini.*

4.  **Jalankan Aplikasi**
    ```bash
    flutter run
    ```

</details>

---

<details>
<summary>🇬🇧 English Version (Click to Open)</summary>

## 📖 Project Description

The original Smart Course application was an example app built using an early version of the Flutter ecosystem. Over time, many of the patterns and libraries used became outdated.

The primary goals of this refactoring project were:
1.  **Infrastructure Modernization:** To upgrade the entire codebase to the latest version of Dart with full **Null Safety** support.
2.  **Solid Architecture Implementation:** To overhaul the project structure from a monolithic approach to a **Feature-First Architecture**, where each feature is isolated as an independent module.
3.  **Modern State Management:** To replace implicit state management with **Riverpod** for a more structured, testable, and predictable state.
4.  **Enhanced User Experience (UX):** To leverage modern libraries for more efficient navigation, animations, and data loading.

## ✨ Key Features

-   **Home Page:** Displays a list of featured and popular courses in a dynamic card format.
-   **Recommended Page:** Presents a list of recommended courses. Data is fetched asynchronously and displayed after a loading state.
-   **Local Data Persistence:** Course data fetched for the first time is stored in local storage using **Hive**, allowing for instant data loading on subsequent app launches without simulating a network call.
-   **Persistent Navigation:** A *Bottom Navigation Bar* with a persistent state when switching between pages.
-   **Smooth Animations:** Added transition animations on list loading to enrich the user interface.

## 💎 Plugins from FlutterGems Used

This project utilizes several popular and highly-rated plugins from [FlutterGems](https://fluttergems.dev/) to accelerate development:

-   **State Management:**
    -   [`flutter_riverpod`](https://fluttergems.dev/packages/flutter_riverpod/): A modern, reactive, and compile-safe state management solution.
-   **Local Storage:**
    -   [`hive_flutter`](https://fluttergems.dev/packages/hive_flutter/): A very fast, lightweight NoSQL key-value database written purely in Dart.
-   **Navigation (Routing):**
    -   [`go_router`](https://fluttergems.dev/packages/go_router/): A declarative routing solution officially recommended by the Flutter team.
-   **UI Enhancement & Utilities:**
    -   [`flutter_animate`](https://fluttergems.dev/packages/flutter_animate/): For adding complex animations to widgets in a simple, declarative way.
    -   [`cached_network_image`](https://fluttergems.dev/packages/cached_network_image/): For efficiently loading and caching images from the internet.
    -   [`google_fonts`](https://fluttergems.dev/packages/google_fonts/): For using fonts from the Google Fonts library.

## 📚 Reference & Inspiration

This refactor project was inspired by the original codebase developed by **TheAlphamerc**. The original application served as an excellent case study to demonstrate the evolution of Flutter app development.

-   **Original Repository:** [TheAlphamerc/flutter_smart_course](https://github.com/TheAlphamerc/flutter_smart_course.git)

## 🚀 Setup & Running the Project

Ensure you have the latest version of the [Flutter SDK](https://flutter.dev/docs/get-started/install) installed.

1.  **Clone This Repository**
    ```bash
    git clone [YOUR_REPOSITORY_URL]
    cd flutter_smart_course
    ```

2.  **Get Dependencies**
    ```bash
    flutter pub get
    ```

3.  **Generate Files for Hive**
    ```bash
    dart run build_runner build --delete-conflicting-outputs
    ```
    *Note: If you make changes to `course_model.dart`, you must run this command again.*

4.  **Run the App**
    ```bash
    flutter run
    ```
</details>

---

Made with ❤️ using Flutter.