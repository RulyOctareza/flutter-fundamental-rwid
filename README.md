<p align="center">
  <img src="docs/preview/hero.svg" alt="Flutter RWID — ilustrasi aplikasi personal branding" width="100%">
</p>

<h1 align="center">Flutter RWID</h1>

<p align="center">
  <b>Aplikasi personal branding — tugas Flutter Fundamental RWID.</b><br>
  Auth · saved items · settings · ObjectBox
</p>

<p align="center">
  <a href="https://flutter.dev"><img alt="Flutter" src="https://img.shields.io/badge/Flutter-3.x-02569B?logo=flutter&logoColor=white"></a>
  <img alt="ObjectBox" src="https://img.shields.io/badge/Database-ObjectBox-2196F3">
</p>

---

## ✨ Preview

<p align="center">
  <img src="docs/preview/hero.png" alt="Mockup gelap Flutter RWID" width="90%">
</p>

<table align="center">
  <tr>
    <td><img src="image.png" alt="Homepage" width="220"></td>
    <td><img src="image-1.png" alt="Saved page" width="220"></td>
    <td><img src="image-2.png" alt="Settings" width="220"></td>
  </tr>
  <tr>
    <td align="center">Homepage</td>
    <td align="center">Saved</td>
    <td align="center">Settings</td>
  </tr>
</table>

---

## 📖 Tentang

Aplikasi yang dibuat untuk memenuhi tugas **Flutter Fundamental RWID** sekaligus media
personal branding. Pengguna bisa login, menyimpan item, dan mengatur preferensi; data
disimpan lokal dengan ObjectBox.

---

## 🌟 Fitur

- 🔐 **Auth** — alur login
- 📌 **Saved** — item tersimpan
- ⚙️ **Settings** — preferensi aplikasi
- 💾 **Penyimpanan lokal** ObjectBox
- 🖼️ **Pemilihan gambar** dengan `image_picker`

---

## 🛠️ Tech Stack

| Area | Pilihan |
|---|---|
| Framework | Flutter |
| Database | ObjectBox |
| Media | `image_picker` |
| Penyimpanan | `path_provider` |

---

## 🚀 Menjalankan

```bash
flutter pub get

# generate model ObjectBox
dart run build_runner build --delete-conflicting-outputs

flutter run
```

---

## 🧪 Testing

```bash
flutter analyze
flutter test
```
