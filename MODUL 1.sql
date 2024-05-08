-- NAMA : irza ariyani
-- NIM :22241037
-- MODUL 1

-- Akses Database
USE mart_undikma;


-- SELECT : Mengambil 1 kolom Table
SELECT nama_produk FROM ms_produk_dqlab;

-- SELECT : mengambil lebih dar 1 kolom
SELECT nama_produk, harga FROM ms_produk_dqlab;

-- SELECT : Mengambil semua kolom
SELECT * FROM ms_produk_dqlab;


-- LATIHAN
-- Ambil kode produk, nama produk,dari table ms_produk_dqlab 
SELECT kode_produk, nama_produk FROM ms_produk_dqlab;



-- Ambil semua kolomdari tabel penjualan
SELECT * FROM tr_penjualan_dqlab;

-- PREFIX dan ALIAS 
-- frefix

-- ambil nama produk dengan frefix
SELECT mart_undikma.ms_produk_dqlab.nama_produk FROM ms_produk_dqlab;


-- ambil nama produk dengan prefix database -tabel;
SELECT mart_undikma.ms_produk_dqlab.nama_produk FROM ms_produk_dqlab;

-- ALIAS

-- Alias pada kolom dengan as
SELECT nama_produk as np FROM ms_produk_dqlab;
-- Alias pada kolom tanpa AS
SELECT nama_produk np FROM ms_produk_dqlab;


-- Alias pada tabel dengan AS
SELECT nama_produk np FROM ms_produk_dqlab as msd;
-- Alias pada tabel tanpa as
SELECT nama_produk np FROM ms_produk_dqlab msd;



-- penggunaan alias dan frefix
SELECT mpd.nama_produk np FROM ms_produk_dqlab mpd;


-- CASE 1
SELECT nama_pelanggan, alamat FROM ms_pelanggan_dqlab;
-- CASE 2
SELECT nama_produk, harga FROM ms_produk_dqlab;




