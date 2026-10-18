program MINT;

uses crt;

const
PIN_BENAR = 1234;
MAKS_PERCOBAAN = 3;
BUNGA_PERSEN = 5;
KELIPATAN_TARIK = 50000;

var
pin, percobaan, pilih, tahun, i, k : integer;
saldo, nominal : longint;
pinBenar : boolean;
saldoSim : real;

begin
clrscr;
writeln;
textcolor(lightcyan);
writeln('=================================');
textcolor(yellow);
writeln('         M I N I   B A N K');
textcolor(lightgreen);
writeln('      Mini Interactive Teller');
textcolor(lightcyan);
writeln('=================================');
writeln;
textcolor(white);
write('Memuat sistem ');
textcolor(lightgreen);
for k := 1 to 20 do
begin
    write(#219);
    delay(100);
end;
writeln;
writeln;
textcolor(yellow);
writeln('Selesai! Membuka Mini Bank...');
delay(800);

clrscr;
saldo := 500000;
pinBenar := false;
percobaan := 0;

textcolor(lightcyan);
writeln('=================================');
textcolor(yellow);
writeln('       SELAMAT DATANG DI');
textcolor(lightgreen);
writeln('           MINI BANK');
textcolor(lightcyan);
writeln('=================================');

while percobaan < MAKS_PERCOBAAN do
begin
    textcolor(white);
    write('Masukkan PIN: ');
    textcolor(lightcyan);
    readln(pin);

    if pin = PIN_BENAR then
    begin
    pinBenar := true;
    break;
    end
    else
    begin
    percobaan := percobaan + 1;
    textcolor(lightred);
    writeln('PIN salah. Sisa percobaan: ', MAKS_PERCOBAAN - percobaan);
    end;
end;

if not pinBenar then
begin
    textcolor(lightred);
    writeln('Kartu diblokir. Silakan hubungi bank.');
end
else
begin
    writeln;
    textcolor(yellow);
    write('Memverifikasi PIN ');
    textcolor(lightgreen);
    for k := 1 to 15 do
    begin
    write(#219);
    delay(120);
    end;
    writeln;
    delay(300);
    clrscr;

    writeln;
    textcolor(lightgreen);
    writeln('Login berhasil.');

    repeat
    writeln;
    textcolor(lightcyan);
    writeln('======== MENU MINI BANK ========');
    textcolor(lightgreen);   writeln('1. Cek Saldo');
    textcolor(yellow);       writeln('2. Setor Tunai');
    textcolor(lightmagenta); writeln('3. Tarik Tunai');
    textcolor(lightblue);    writeln('4. Simulasi Bunga Tabungan');
    textcolor(lightred);     writeln('0. Keluar');
    textcolor(lightcyan);
    writeln('================================');
    textcolor(white);
    write('Pilih menu: ');
    textcolor(lightcyan);
    readln(pilih);

    case pilih of
        1: begin
            clrscr;
            textcolor(yellow);
            writeln('Saldo Anda: Rp', saldo);
            delay(2000);
        end;

        2: begin
            clrscr;
            textcolor(white);
            write('Nominal setor: Rp');
            textcolor(lightcyan);
            readln(nominal);
            if nominal <= 0 then
            begin
            textcolor(lightred);
            writeln('Nominal harus lebih dari 0.');
            continue;
            end;
            saldo := saldo + nominal;
            textcolor(lightgreen);
            writeln('Setor berhasil. Saldo sekarang: Rp', saldo);
            delay(1000);
        end;

        3: begin
            clrscr;
            textcolor(white);
            write('Nominal tarik: Rp');
            textcolor(lightcyan);
            readln(nominal);
            if nominal <= 0 then
            begin
            textcolor(lightred);
            writeln('Nominal harus lebih dari 0.');
            continue;
            end;
            if nominal mod KELIPATAN_TARIK <> 0 then
            begin
            textcolor(lightred);
            writeln('Penarikan harus kelipatan Rp', KELIPATAN_TARIK, '.');
            end
            else if nominal > saldo then
            begin
            textcolor(lightred);
            writeln('Saldo tidak cukup.');
            end
            else
            begin
            saldo := saldo - nominal;
            textcolor(lightgreen);
            writeln('Tarik berhasil. Saldo sekarang: Rp', saldo);
            end;
            delay(2000);
        end;

        4: begin
            clrscr;
            textcolor(white);
            write('Lama menabung (tahun): ');
            textcolor(lightcyan);
            readln(tahun);
            if tahun <= 0 then
            begin
            textcolor(lightred);
            writeln('Lama menabung harus lebih dari 0 Tahun.');
            continue;
            end;
            saldoSim := saldo;
            textcolor(lightmagenta);
            writeln('Bunga ', BUNGA_PERSEN, '% per tahun:');
            textcolor(lightgreen);
            for i := 1 to tahun do
            begin
               saldoSim := saldoSim + saldoSim * BUNGA_PERSEN / 100;
            writeln('  Tahun ke-', i, ' : Rp', saldoSim:0:0);
            end;
            delay(2000);
        end;

        0: begin
            textcolor(lightmagenta);
            writeln('Terima kasih telah menggunakan Mini Bank.');
        end;
    else
        textcolor(lightred);
        writeln('Menu tidak valid. Pilih 0 sampai 4.');
    end;
    until pilih = 0;
end;

textcolor(lightgray);
end.