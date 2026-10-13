program MINT;
uses crt;
const
PIN_BENAR       = 1234;
MAKS_PERCOBAAN  = 3;
BUNGA_PERSEN    = 5;      
KELIPATAN_TARIK = 50000;

var
pin, percobaan, pilih, tahun, i : integer;
saldo, nominal                  : longint;
pinBenar                        : boolean;
saldoSim                        : real;

begin
clrscr;
saldo    := 500000;       
pinBenar := false;
percobaan := 0;

writeln('=================================');
writeln('        SELAMAT DATANG DI        ');
writeln('           MINI BANK             ');
writeln('=================================');

while percobaan < MAKS_PERCOBAAN do
begin
    write('Masukkan PIN: ');
    readln(pin);
    if pin = PIN_BENAR then
    begin
    pinBenar := true;
    break;                
    end
    else
    begin
    percobaan := percobaan + 1;
    writeln('PIN salah. Sisa percobaan: ', MAKS_PERCOBAAN - percobaan);
    end;
end;

if not pinBenar then
    writeln('Kartu diblokir. Silakan hubungi bank.')
else
begin
    writeln;
    writeln('Login berhasil.');

    repeat
    writeln;
    writeln('======== MENU MINI BANK ========');
    writeln('1. Cek Saldo');
    writeln('2. Setor Tunai');
    writeln('3. Tarik Tunai');
    writeln('4. Simulasi Bunga Tabungan');
    writeln('0. Keluar');
    writeln('================================');
    write('Pilih menu: ');
    readln(pilih);

    case pilih of
        1: begin
            writeln('Saldo Anda: Rp', saldo);
        end;

        2: begin
            write('Nominal setor: Rp');
            readln(nominal);
            if nominal <= 0 then
            begin
            writeln('Nominal harus lebih dari 0.');
            continue;       
            end;
            saldo := saldo + nominal;
            writeln('Setor berhasil. Saldo sekarang: Rp', saldo);
        end;

        3: begin
            write('Nominal tarik: Rp');
            readln(nominal);
            if nominal <= 0 then
            begin
            writeln('Nominal harus lebih dari 0.');
            continue;       
            end;
            if nominal mod KELIPATAN_TARIK <> 0 then
            writeln('Penarikan harus kelipatan Rp', KELIPATAN_TARIK, '.')
        else if nominal > saldo then
            writeln('Saldo tidak cukup.')
            else
            begin
            saldo := saldo - nominal;
            writeln('Tarik berhasil. Saldo sekarang: Rp', saldo);
            end;
        end;

        4: begin
            write('Lama menabung (tahun): ');
            readln(tahun);
            if tahun <= 0 then
            begin
            writeln('Lama menabung harus lebih dari 0 Tahun.');
            continue;
            end;
            saldoSim := saldo;
            writeln('Bunga ', BUNGA_PERSEN, '% per tahun:');
            for i := 1 to tahun do
            begin
               saldoSim := saldoSim + saldoSim * BUNGA_PERSEN / 100;
            writeln('  Tahun ke-', i, ' : Rp', saldoSim:0:0);
            end;
        end;

        0: writeln('Terima kasih telah menggunakan Mini Bank.');

    else
        writeln('Menu tidak valid. Pilih 0 sampai 4.');
        end;
    until pilih = 0;
    end;
end.
