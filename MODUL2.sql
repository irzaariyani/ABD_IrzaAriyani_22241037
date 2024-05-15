-- Nama : Irza Ariyani
-- NIM : 22241037
-- MODUL 2 Database
Use martundikma

-- Use

-- NILAI LITERAL

-- menggunakan SELECT statement untuk nilai literal
SELECT 77 AS nomor_punggung;

-- menampilkan nilai literal beberapa tipe data
SELECT 77 AS angka, true AS nilai_logika, 'DQLAB' as Teks;

-- NULL 

-- menampilkan NUL
SELECT NULL AS kosong;

-- OPERATOR MATEMATIKA
SELECT 
5%2 AS sisa_bagi,
5/2 AS hasil_bagi_1,
5 DIV 2 AS hasil_bagi_2;

-- perhitungan matematika
SELECT 
4*2 AS  hasil_kali,
(4*8)%7 AS sisa_bagi_1,
(4*8)%7 MOD 7 AS sisa_2;
(4*8)/7 AS hasil_bagi;

SELECT * FROM tr_penjualan_dqlab;

-- Ekspresi matematika
-- Menampilkan hasil kali dari kolom qty dan harga
SELECT qty*harga AS total
FROM tr_penjualan_dqlab;

 
-- OPERATOR PERBANDINGAN
-- Menampilkan hasil perbandingan nilai literal
SELECT 
5=5,
4<>4,
5<>4,
5!=5,
5!=4,
5>4;

-- Operator perbandingan latihan
SELECT 
1= true,
1= false,
5>=5,
5.2=5.20000,
NULL=1
NULL=NULL;


-- Latihan
SELECT qty<=3 FROM tr_penjualan_dqlab;

-- FUNGSI
SELECT POW(3,2), ROUND(3.14), round(3.54),
round(3.155,1), round(3.155,2), floor(4.28),
floor(4.78), ceiling(4.39), ceiling(4.55);

-- Fungsi Tanggal
SELECT NOW(),
year(now()),
date(now()),
datediff(now(), '2004-02-07'),
day(2004-02-07);

-- Latihan
SELECT NOW(),
datediff('2022-07-23', now()),
year('2022-07-23'),
month('2022-07-2'),
day('2022-07-23'),
year(now());

-- Menampilkan selisih transaksi dengan tanggal saat ini
SELECT datediff(now(), tgl_transaksi) AS selisih_hari
FROM
tr_penjualan_dqlab;

-- WHERE statement 
-- Mengambil nama produk dan quantity yang lebih dari 3
SELECT 
    nama_produk,qty
FROM
   tr_penjualan_dqlab tpd 
WHERE 
   qty > 3;
  
-- Mengambil nama_produk, qty,yang qty > 3, dan transaksi bulan 6
SELECT  
   nama_produk, qty
FROM
   tr_penjualan_dqlab
WHERE
    qty > 3 AND 
    month(tgl_transaksi)=6;
   
-- Mengambil nama_produk.qty,dengan nama tertentu
SELECT 
   nama_produk, qty
FROM
   tr_penjualan_dqlab 
WHERE 
   nama_produk = "flashdisk DQlab 32 GB";
  
-- LIKE
-- Mengambil nama produk yang berawalan huruf "f"
SELECT nama_produk
FROM tr_penjualan_dqlab tpd 
WHERE nama_produk LIKE 'F%';

-- Latihan mandiri
SELECT nama_produk FROM tr_penjualan_dqlab WHERE nama_produk LIKE '_a%';
SELECT nama_produk FROM ms_produk_dqlab WHERE nama_produk LIKE '%t%';
SELECT nama_produk FROM ms_produk_dqlab WHERE nama_produk LIKE '%un%';

-- Menampilkan nama produk dari table penjualan yang berawalan huruf 'f' dan qty
SELECT nama_produk FROM tr_penjualan_dqlab WHERE nama_produk LIKE 'f%' or qty > 2;




