# UTS_Daspro_DearNathan_KomB
MINT: Mini Interactive Teller

MINT adalah program Pascal sederhana yang menirukan pengalaman memakai ATM, mulai dari memasukkan PIN, menarik uang, mengecek saldo, menyetor uang, dan melakukan simulasi bunga tabungan yang keseluruhan jalan di layar terminal.

Daftar Anggota Kelompok:
1. Nathan Althaafa Rizq (261401103), Kom B, Lab 4
2. Putri Khairunnisa (261401086), Kom B, Lab 4
3. Tiara Aulia Setiawan (261401120), Kom B, Lab 4

Fitur-fitur utama program:
1. if else: Memastikan PIN yang diinput itu benar. Jika salah dapat diulangi sebanyak tiga kali, lebih dari itu maka kartu PIN akan terblokir.
2. case of: Dari pilihan 0-4 user dapat menentukan apa langkah selanjutnya dari mesin atm ini (1 : Cek Saldo, 2 : Menyetor Tunai, 3 : Menarik Tunai, 4 : Simulasi Bunga Tabungan, 0 : Menu ATM selesai digunakan).
Jika pilihan tidak ada di antara list tersebut, maka program akan mengulang menggunakan repeat until.
3. repeat until: Setelah selesai menggunakan dan memilih angka 0, maka program selesai dijalankan.
4. for to do: Digunakan untuk simulasi bunga tabungan, karena nanti akan diulang sebanyak berapa lama menabung dalam tahunan.
5. continue: Dari case of nomor 2 dan 3, jika nominal lebih kecil sama dengan 0, maka program selanjutnya akan dilewati dan langsung kembali ke menu utama.
[UPDATE]
6. delay: delay maksudnya untuk menunggu selama berapa milidetik, contoh: delay(100) itu dia menunggu selama 100 menit
7. textcolor: mengganti warna text sebelum menulis text tersebut
