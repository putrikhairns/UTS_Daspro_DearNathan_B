<div align="center">

<img src="assets/banner.svg" alt="Banner MINT: Mini Interactive Teller, simulasi ATM berbasis Pascal" width="100%">

<br><br>

<img src="assets/icon.svg" alt="Ikon MINT: koin emas berhuruf M" width="110">

<br><br>

**Simulasi ATM sederhana yang berjalan penuh warna di terminal, ditulis dengan Pascal.**

<br>

![Bahasa](https://img.shields.io/badge/Bahasa-Pascal-0B5D4B?style=for-the-badge)
![Compiler](https://img.shields.io/badge/Compiler-Free%20Pascal-052E26?style=for-the-badge)
![Kelas](https://img.shields.io/badge/Kom%20B-Lab%204-19A97B?style=for-the-badge)
![UTS](https://img.shields.io/badge/UTS-Dasar%20Pemrograman-B8860B?style=for-the-badge)

</div>

<br>

## Tentang MINT

**MINT** (*Mini Interactive Teller*) menirukan pengalaman memakai mesin ATM: masuk dengan PIN, mengecek saldo, menyetor, menarik uang, melihat riwayat transaksi, dan mencoba simulasi bunga tabungan. Semuanya berjalan di layar terminal dengan tampilan berwarna dan layar pembuka bergaya loading bar.

Proyek ini dibuat untuk UTS mata kuliah **Dasar Pemrograman**, Program Studi Ilmu Komputer, Universitas Sumatera Utara.

<br>

## Tampilan program

Layar pembuka:

```text
=================================
         M I N I   B A N K
      Mini Interactive Teller
=================================

Memuat sistem ████████████████████

Selesai! Membuka Mini Bank...
```

Menu utama:

```text
======== MENU MINI BANK ========
1. Cek Saldo
2. Setor Tunai
3. Tarik Tunai
4. Simulasi Bunga Tabungan
5. Riwayat Transaksi
0. Keluar
================================
Pilih menu:
```

Riwayat transaksi:

```text
======= RIWAYAT TRANSAKSI =======
1. Setor  Rp100000   (Saldo: Rp600000)
2. Tarik  Rp50000   (Saldo: Rp550000)
=================================
```

<br>

## Menu dan aturan

| Menu | Fungsi | Aturan |
|:----:|--------|--------|
| 1 | Cek Saldo | Saldo awal Rp500.000 |
| 2 | Setor Tunai | Nominal harus lebih dari 0 |
| 3 | Tarik Tunai | Harus kelipatan Rp50.000 dan tidak melebihi saldo |
| 4 | Simulasi Bunga Tabungan | Bunga 5% per tahun, dihitung per tahun |
| 5 | Riwayat Transaksi | Menyimpan 10 transaksi terakhir |
| 0 | Keluar | Menutup program |

**Login:** PIN diberi 3 kali kesempatan. Jika salah 3 kali, kartu diblokir dan program berhenti.

<br>

## Konsep Pascal yang dipakai

| Konsep | Dipakai untuk |
|--------|---------------|
| `if else` | Memeriksa PIN, serta memeriksa nominal dan saldo saat menarik uang |
| `while` dan `break` | Mengulang input PIN sampai 3 kali, berhenti begitu PIN benar |
| `case of` | Memilih menu 0 sampai 5, dengan `else` untuk pilihan yang tidak valid |
| `repeat until` | Menampilkan menu terus-menerus sampai user memilih 0 |
| `for to do` | Simulasi bunga per tahun, loading bar, dan menampilkan daftar riwayat |
| `continue` | Melewati sisa perintah dan kembali ke menu jika nominal atau tahun kurang dari atau sama dengan 0 |
| `array` dan `procedure` | Menyimpan riwayat transaksi lewat prosedur `CatatRiwayat` |
| `textcolor` | Memberi warna pada teks |
| `delay` | Menjeda program untuk efek loading |

<br>

## Warna dan loading screen

Dua perintah ini berasal dari unit `crt` (`uses crt;`).

**`textcolor`** mengganti warna teks. Tulis sebelum `write` atau `writeln` yang ingin diwarnai.

```pascal
textcolor(magenta);
writeln('Dear Nathan');
```

Hasilnya, tulisan `Dear Nathan` tampil berwarna ungu. Di Pascal, warna ungu bernama `magenta`. Versi terangnya `lightmagenta`.

**`delay`** menunda program selama sekian **milidetik**. `delay(100)` berarti menunggu 0,1 detik, dan `delay(1000)` berarti menunggu 1 detik.

Loading bar dibuat dengan menggabungkan keduanya dalam perulangan:

```pascal
for k := 1 to 20 do
begin
  write(#219);
  delay(100);
end;
```

<br>

## Cara menjalankan

1. Pasang [Free Pascal](https://www.freepascal.org/download.html).
2. Compile programnya:

   ```bash
   fpc MINT.pas
   ```

3. Jalankan hasilnya:

   ```bash
   ./MINT        # Linux atau macOS
   MINT.exe      # Windows
   ```

Jika karakter blok pada loading bar tampil aneh di terminalmu, ganti `#219` dengan `'#'` pada kode.

<br>

## Struktur repositori

```text
.
├── MINT.pas          kode program utama
├── README.md         dokumentasi ini
└── assets/
    ├── banner.svg    banner di bagian atas README
    └── icon.svg      ikon proyek
```

<br>

## Anggota kelompok

| No | Nama | NIM | Kelas |
|:--:|------|-----|-------|
| 1 | Nathan Althaafa Rizq | 261401103 | Kom B, Lab 4 |
| 2 | Putri Khairunnisa | 261401086 | Kom B, Lab 4 |
| 3 | Tiara Aulia Setiawan | 261401120 | Kom B, Lab 4 |

<br>

<div align="center">

Dibuat dengan Pascal oleh Kelompok Kom B, Lab 4, Universitas Sumatera Utara.

</div>
