-- HAPUS TABEL LAMA DULU
DROP TABLE IF EXISTS parameter_trapesium;

-- BUAT TABEL BARU — TANPA TITIK DESIMAL
CREATE TABLE parameter_trapesium (
  id INT PRIMARY KEY AUTO_INCREMENT,
  kategori VARCHAR(20),
  b_bawah INT,
  b_atas INT,
  fungsi VARCHAR(50)
);

-- MASUKKAN DATA
INSERT INTO parameter_trapesium (kategori, b_bawah, b_atas, fungsi)
VALUES
('Bayi',    0,   5,   '1'),
('Bayi',    5,   5,   'trapesium_down_bayi'),
('Bayi',    5, 150,   '0'),
('Anak',    6,  11,   '1'),
('Anak',   11,  11,   'trapesium_down_anak'),
('Anak',   11, 150,   '0'),
('Remaja', 10,  19,   '1'),
('Remaja', 19,  19,   'trapesium_down_remaja'),
('Remaja', 19, 150,   '0'),
('Pemuda', 15,  24,   '1'),
('Pemuda', 24,  24,   'trapesium_down_pemuda'),
('Pemuda', 24, 150,   '0'),
('Dewasa', 20,  65,   '1'),
('Dewasa', 65,  65,   'trapesium_down_dewasa'),
('Dewasa', 65, 150,   '0'),
('Lansia', 65, 150,   '1');

-- TAMPILKAN HASIL
SELECT
  kategori AS Kategori,
  b_bawah AS `B Bawah`,
  b_atas AS `B Atas`,
  fungsi AS Fungsi
FROM parameter_trapesium;