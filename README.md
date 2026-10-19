<div align="center">

<img src="assets/banner.svg" alt="Banner MINT: Mini Interactive Teller, simulasi ATM berbasis Pascal" width="100%">

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
0. Keluar
================================
Pilih menu:
```

<br>

## Menu dan aturan

| Menu | Fungsi | Aturan |
|:----:|--------|--------|
| 1 | Cek Saldo | Saldo awal Rp500.000 |
| 2 | Setor Tunai | Nominal harus lebih dari 0 |
| 3 | Tarik Tunai | Harus kelipatan Rp50.000 dan tidak melebihi saldo |
| 4 | Simulasi Bunga Tabungan | Bunga 5% per tahun, dihitung per tahun |
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
| `for to do` | Simulasi bunga per tahun, dan loading bar |
| `continue` | Melewati sisa perintah dan kembali ke menu jika nominal atau tahun kurang dari atau sama dengan 0 |
| `textcolor` | Memberi warna pada teks |
| `delay` | Menjeda program untuk efek loading |

<br>

<div align="center">

## Anggota kelompok

| No | Nama | NIM | Kelas |
|:--:|------|-----|-------|
| 1 | Nathan Althaafa Rizq | 261401103 | Kom B, Lab 4 |
| 2 | Putri Khairunnisa | 261401086 | Kom B, Lab 4 |
| 3 | Tiara Aulia Setiawan | 261401120 | Kom B, Lab 4 |

<br>

<div align="center">

Dibuat dengan Pascal oleh Kelompok Kom B, Lab 4.

<p align="center">
  <img src="assets/copyright.svg" alt="© DearNathan" height="40">
</p>

</div>
