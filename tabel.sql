CREATE TABLE IF NOT EXISTS `tbl_arahpengiriman` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_arah` varchar(255) DEFAULT NULL,
  `Created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
CREATE TABLE IF NOT EXISTS `tbl_kategori` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Kode_Kategori` varchar(255) NOT NULL,
  `Nama_Kategori` varchar(255) NOT NULL,
  `aktif` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
CREATE TABLE IF NOT EXISTS `tbl_supplier` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_supplier` varchar(255) DEFAULT NULL,
  `tempo` int(11) DEFAULT NULL,
  `contact_person` varchar(255) DEFAULT NULL,
  `no_telepon` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `alamat_lengkap` varchar(255) DEFAULT NULL,
  `kota` varchar(255) DEFAULT NULL,
  `npwp` varchar(255) DEFAULT NULL,
  `Aktif` tinyint(1) DEFAULT '0',
  `Created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
CREATE TABLE IF NOT EXISTS `tbl_tipemotor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_motor` varchar(255) NOT NULL,
  `Aktif` tinyint(1) DEFAULT '0',
  `Created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
CREATE TABLE IF NOT EXISTS `tbl_lokasi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_area` varchar(255) NOT NULL,
  `nama_area` varchar(255) NOT NULL,
  `Nama_Lokasi` varchar(255) NOT NULL,
  `Alamat` varchar(255) DEFAULT NULL,
  `Jenis_lokasi` enum('Gudang','Toko') NOT NULL,
  `Aktif` tinyint(1) DEFAULT '0',
  `Created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
CREATE TABLE IF NOT EXISTS `tbl_merek` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_Merek` varchar(255) NOT NULL,
  `Nama_Merek` varchar(255) NOT NULL,
  `aktif` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
CREATE TABLE IF NOT EXISTS `tbl_mobilpengiriman` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jenis_mobil` varchar(255) DEFAULT NULL,
  `Nomor_plat` varchar(255) DEFAULT NULL,
  `ketarangan` varchar(255) DEFAULT NULL,
  `aktif` tinyint(1) DEFAULT '1',
  `Created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
CREATE TABLE IF NOT EXISTS `tbl_periode` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `namaPeriode` varchar(255) DEFAULT NULL,
  `Tahun` varchar(255) DEFAULT NULL,
  `Bulan` varchar(255) DEFAULT NULL,
  `Tanggal_mulai` datetime DEFAULT NULL,
  `Tanggal_selesai` datetime DEFAULT NULL,
  `aktif` tinyint(1) DEFAULT '1',
  `Created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
CREATE TABLE IF NOT EXISTS `tbl_lokasi_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lokasi_id` int(11) DEFAULT NULL,
  `kode_posisi` varchar(255) NOT NULL,
  `deskripsi` varchar(255) DEFAULT NULL,
  `Aktif` tinyint(1) DEFAULT '0',
  `Created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `lokasi_id` (`lokasi_id`),
  CONSTRAINT `tbl_lokasi_detail_ibfk_1` FOREIGN KEY (`lokasi_id`) REFERENCES `tbl_lokasi` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `tbl_area_kirim` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_kabupaten` varchar(255) DEFAULT NULL,
  `kabupaten` varchar(255) DEFAULT NULL,
  `kode_kecamatan` varchar(255) DEFAULT NULL,
  `kecamatan` varchar(255) DEFAULT NULL,
  `kode_desa` varchar(255) DEFAULT NULL,
  `desa` varchar(255) DEFAULT NULL,
  `jarak` decimal(10,0) DEFAULT NULL,
  `potongan_kirim` int(11) DEFAULT NULL,
  `biaya_kirim_perkm` int(11) DEFAULT NULL,
  `Aktif` tinyint(1) DEFAULT '0',
  `Created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
CREATE TABLE IF NOT EXISTS `tbl_golongan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_golongan` varchar(255) DEFAULT NULL,
  `harga_jual_index` int(11) DEFAULT NULL,
  `Aktif` tinyint(1) DEFAULT '0',
  `Created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
CREATE TABLE IF NOT EXISTS `tbl_jenistransaksi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_transaksi` varchar(50) DEFAULT NULL,
  `Created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
CREATE TABLE IF NOT EXISTS `tbl_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_permission` varchar(255) DEFAULT NULL,
  `Aktif` tinyint(1) DEFAULT '0',
  `Created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
CREATE TABLE IF NOT EXISTS `tbl_roles` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_role` varchar(255) DEFAULT NULL,
  `Aktif` tinyint(1) DEFAULT '0',
  `Created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Pengeluaran data tidak dipilih.

-- membuang struktur untuk table db_sukadayagroup.tbl_role_permissions
CREATE TABLE IF NOT EXISTS `tbl_role_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `permission_id` int(11) DEFAULT NULL,
  `Aktif` tinyint(1) DEFAULT '0',
  `Created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `role_id` (`role_id`),
  KEY `permission_id` (`permission_id`),
  CONSTRAINT `tbl_role_permissions_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `tbl_roles` (`Id`),
  CONSTRAINT `tbl_role_permissions_ibfk_2` FOREIGN KEY (`permission_id`) REFERENCES `tbl_permissions` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
CREATE TABLE IF NOT EXISTS `tbl_bank` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_bank` varchar(255) DEFAULT NULL,
  `nama_bank` varchar(255) DEFAULT NULL,
  `no_rekening` varchar(255) DEFAULT NULL,
  `akun_id` int(11) DEFAULT NULL,
  `Aktif` tinyint(1) DEFAULT '0',
  `Created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
CREATE TABLE IF NOT EXISTS `tbl_bg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bank_id` int(11) DEFAULT NULL,
  `no_bg` varchar(255) DEFAULT NULL,
  `tanggal_terbit` datetime DEFAULT NULL,
  `tanggal_jatuh_tempo` datetime DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `Created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `bank_id` (`bank_id`),
  CONSTRAINT `tbl_bg_ibfk_1` FOREIGN KEY (`bank_id`) REFERENCES `tbl_bank` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `tbl_barcode` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `produk_id` int(11) DEFAULT NULL,
  `barcode` varchar(255) DEFAULT NULL,
  `Nama Barang` varchar(255) DEFAULT NULL,
  `Qty` int(11) DEFAULT NULL,
  `Harga` int(11) DEFAULT NULL,
  `Status` varchar(255) DEFAULT NULL,
  `Created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `produk_id` (`produk_id`),
  CONSTRAINT `tbl_barcode_ibfk_1` FOREIGN KEY (`produk_id`) REFERENCES `tbl_produk` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- membuang struktur untuk table db_sukadayagroup.tbl_akun
CREATE TABLE IF NOT EXISTS `tbl_akun` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nomor_akun` varchar(255) DEFAULT NULL,
  `nama_akun` varchar(255) DEFAULT NULL,
  `deskripsi` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `Tipe_akun` enum('Aset','Liabilitas','Equity','Pendapatan','Pengeluaran') DEFAULT NULL,
  `Created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  CONSTRAINT `tbl_akun_ibfk_1` FOREIGN KEY (`parent_id`) REFERENCES `tbl_akun` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
CREATE TABLE IF NOT EXISTS `tbl_jenisbayar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_pembayaran` varchar(50) DEFAULT NULL,
  `jenis_pembayaran` enum('tunai','transfer','BG','Qris','EDC') DEFAULT NULL,
  `nama_pembayaran` varchar(50) DEFAULT NULL,
  `akun_id` int(11) DEFAULT NULL,
  `Created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `akun_id` (`akun_id`),
  CONSTRAINT `tbl_jenisbayar_ibfk_1` FOREIGN KEY (`akun_id`) REFERENCES `tbl_akun` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `tbl_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `golongan_id` int(11) DEFAULT NULL,
  `kode_customer` varchar(255) DEFAULT NULL,
  `Nama_Customer` varchar(255) DEFAULT NULL,
  `no_telepon` varchar(255) DEFAULT NULL,
  `nopol_kendaraan` varchar(255) DEFAULT NULL,
  `TipeMotor_id` int(11) DEFAULT NULL,
  `Alamat_tinggal` varchar(255) DEFAULT NULL,
  `alamat_kirim` varchar(255) DEFAULT NULL,
  `Tanggal_lahir` datetime DEFAULT NULL,
  `Plafon_piutang` int(11) DEFAULT NULL,
  `tempo` int(11) DEFAULT NULL,
  `Sisa_Point` decimal(10,0) DEFAULT NULL,
  `Aktif` tinyint(1) DEFAULT '0',
  `Created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `golongan_id` (`golongan_id`),
  KEY `TipeMotor_id` (`TipeMotor_id`),
  CONSTRAINT `tbl_customer_ibfk_1` FOREIGN KEY (`golongan_id`) REFERENCES `tbl_golongan` (`id`),
  CONSTRAINT `tbl_customer_ibfk_2` FOREIGN KEY (`TipeMotor_id`) REFERENCES `tbl_tipemotor` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Pengeluaran data tidak dipilih.

-- membuang struktur untuk table db_sukadayagroup.tbl_detailpromo
CREATE TABLE IF NOT EXISTS `tbl_detailpromo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `promo_id` int(11) DEFAULT NULL,
  `produk_id` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `harga_jual` int(11) DEFAULT NULL,
  `persentase_diskon` decimal(10,2) DEFAULT NULL,
  `potongan_diskon` decimal(10,2) DEFAULT NULL,
  `Harga_jual_netto` int(11) DEFAULT NULL,
  `point` decimal(10,2) DEFAULT NULL,
  `Created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `promo_id` (`promo_id`),
  KEY `produk_id` (`produk_id`),
  CONSTRAINT `tbl_detailpromo_ibfk_1` FOREIGN KEY (`promo_id`) REFERENCES `tbl_promo` (`id`),
  CONSTRAINT `tbl_detailpromo_ibfk_2` FOREIGN KEY (`produk_id`) REFERENCES `tbl_produk` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Pengeluaran data tidak dipilih.

-- membuang struktur untuk table db_sukadayagroup.tbl_golongan

-- Pengeluaran data tidak dipilih.

-- membuang struktur untuk table db_sukadayagroup.tbl_jenisbayar

-- Pengeluaran data tidak dipilih.

-- membuang struktur untuk table db_sukadayagroup.tbl_jenispembayarantransaksi
CREATE TABLE IF NOT EXISTS `tbl_jenispembayarantransaksi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jenisBayar_id` int(11) DEFAULT NULL,
  `jenisTransaksi_id` int(11) DEFAULT NULL,
  `Created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `jenisBayar_id` (`jenisBayar_id`),
  KEY `jenisTransaksi_id` (`jenisTransaksi_id`),
  CONSTRAINT `tbl_jenispembayarantransaksi_ibfk_1` FOREIGN KEY (`jenisBayar_id`) REFERENCES `tbl_jenisbayar` (`id`),
  CONSTRAINT `tbl_jenispembayarantransaksi_ibfk_2` FOREIGN KEY (`jenisTransaksi_id`) REFERENCES `tbl_jenistransaksi` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Pengeluaran data tidak dipilih.

-- membuang struktur untuk table db_sukadayagroup.tbl_jenistransaksi

-- Pengeluaran data tidak dipilih.

-- membuang struktur untuk table db_sukadayagroup.tbl_karyawan
CREATE TABLE IF NOT EXISTS `tbl_karyawan` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `lokasi_id` int(11) DEFAULT NULL,
  `kode_karyawan` varchar(255) DEFAULT NULL,
  `user_admin_id` int(11) DEFAULT NULL,
  `nama_karyawan` varchar(255) DEFAULT NULL,
  `jabatan` varchar(255) DEFAULT NULL,
  `no_telepon` varchar(255) DEFAULT NULL,
  `target_penjualan` int(11) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `Aktif` tinyint(1) DEFAULT '0',
  `Created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`),
  KEY `lokasi_id` (`lokasi_id`),
  KEY `user_admin_id` (`user_admin_id`),
  CONSTRAINT `tbl_karyawan_ibfk_1` FOREIGN KEY (`lokasi_id`) REFERENCES `tbl_lokasi` (`id`),
  CONSTRAINT `tbl_karyawan_user_id` FOREIGN KEY (`user_admin_id`) REFERENCES `admin_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Pengeluaran data tidak dipilih.

-- membuang struktur untuk table db_sukadayagroup.tbl_kategori

-- Pengeluaran data tidak dipilih.

-- membuang struktur untuk table db_sukadayagroup.tbl_komisi_produk
CREATE TABLE IF NOT EXISTS `tbl_komisi_produk` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `produk_id` int(11) DEFAULT NULL,
  `tipe_komisi` enum('grosir','retail') NOT NULL,
  `metode_komisi` enum('persen','fixed') NOT NULL,
  `nilai_komisi` decimal(10,2) DEFAULT NULL,
  `Aktif` tinyint(1) DEFAULT '0',
  `Created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `produk_id` (`produk_id`),
  CONSTRAINT `tbl_komisi_produk_ibfk_1` FOREIGN KEY (`produk_id`) REFERENCES `tbl_produk` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Pengeluaran data tidak dipilih.

-- membuang struktur untuk table db_sukadayagroup.tbl_limit_stok
CREATE TABLE IF NOT EXISTS `tbl_limit_stok` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `produk_id` int(11) DEFAULT NULL,
  `Lead_time` decimal(10,2) DEFAULT NULL,
  `jual_per_hari` decimal(10,2) DEFAULT NULL,
  `Min_order` decimal(10,2) DEFAULT NULL,
  `Maks_order` decimal(10,2) DEFAULT NULL,
  `average_order` decimal(10,2) DEFAULT NULL,
  `limit_stok` decimal(10,2) DEFAULT NULL,
  `Kelas_produk` enum('fast moving','slow moving','dead moving') NOT NULL,
  `Aktif` tinyint(1) DEFAULT '0',
  `Created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `produk_id` (`produk_id`),
  CONSTRAINT `tbl_limit_stok_ibfk_1` FOREIGN KEY (`produk_id`) REFERENCES `tbl_produk` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Pengeluaran data tidak dipilih.

-- membuang struktur untuk table db_sukadayagroup.tbl_log_sinkronisasi

-- Pengeluaran data tidak dipilih.

-- membuang struktur untuk table db_sukadayagroup.tbl_lokasi

-- Pengeluaran data tidak dipilih.

-- membuang struktur untuk table db_sukadayagroup.tbl_merek


-- Pengeluaran data tidak dipilih.

-- membuang struktur untuk table db_sukadayagroup.tbl_permissions

-- Pengeluaran data tidak dipilih.

-- membuang struktur untuk table db_sukadayagroup.tbl_penukaranpointpromo
CREATE TABLE IF NOT EXISTS `tbl_penukaranpointpromo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `golongan_id` int(11) DEFAULT NULL,
  `promo_id` int(11) DEFAULT NULL,
  `jumlahPoint` decimal(10,0) DEFAULT NULL,
  `deskripsi` varchar(255) DEFAULT NULL,
  `aktif` tinyint(1) DEFAULT '1',
  `Created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `golongan_id` (`golongan_id`),
  KEY `promo_id` (`promo_id`),
  CONSTRAINT `tbl_penukaranpointpromo_ibfk_1` FOREIGN KEY (`golongan_id`) REFERENCES `tbl_golongan` (`id`),
  CONSTRAINT `tbl_penukaranpointpromo_ibfk_2` FOREIGN KEY (`promo_id`) REFERENCES `tbl_promo` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Pengeluaran data tidak dipilih.

-- membuang struktur untuk table db_sukadayagroup.tbl_penyusutan
CREATE TABLE IF NOT EXISTS `tbl_penyusutan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `akun_id` int(11) DEFAULT NULL,
  `Tanggal` datetime DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `saldo_terakumulasi` int(11) DEFAULT NULL,
  `Created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `akun_id` (`akun_id`),
  CONSTRAINT `tbl_penyusutan_ibfk_1` FOREIGN KEY (`akun_id`) REFERENCES `tbl_akun` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Pengeluaran data tidak dipilih.

-- membuang struktur untuk table db_sukadayagroup.tbl_periode

-- Pengeluaran data tidak dipilih.

-- membuang struktur untuk table db_sukadayagroup.tbl_prive
CREATE TABLE IF NOT EXISTS `tbl_prive` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Tanggal` datetime DEFAULT NULL,
  `deskripsi` varchar(255) DEFAULT NULL,
  `jenisBayar_id` int(11) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `akun_id` int(11) DEFAULT NULL,
  `Created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `jenisBayar_id` (`jenisBayar_id`),
  KEY `akun_id` (`akun_id`),
  CONSTRAINT `tbl_prive_ibfk_1` FOREIGN KEY (`jenisBayar_id`) REFERENCES `tbl_jenisbayar` (`id`),
  CONSTRAINT `tbl_prive_ibfk_2` FOREIGN KEY (`akun_id`) REFERENCES `tbl_akun` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Pengeluaran data tidak dipilih.

-- membuang struktur untuk table db_sukadayagroup.tbl_produk
CREATE TABLE IF NOT EXISTS `tbl_produk` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Kode_Barang` varchar(255) NOT NULL,
  `barcode` varchar(255) DEFAULT NULL,
  `nama_barang` varchar(255) NOT NULL,
  `kategori_id` int(11) DEFAULT NULL,
  `subkategori_id` int(11) DEFAULT NULL,
  `merek_id` int(11) DEFAULT NULL,
  `satuan_id` int(11) DEFAULT NULL,
  `deskripsi_barang` varchar(255) DEFAULT NULL,
  `Dijual` enum('dijual','tidak dijual') NOT NULL,
  `HPP` int(11) DEFAULT NULL,
  `HJ1` int(11) DEFAULT NULL,
  `HJ2` int(11) DEFAULT NULL,
  `HJ3` int(11) DEFAULT NULL,
  `hj4` int(11) DEFAULT NULL,
  `hj5` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `limit_stok` int(11) DEFAULT NULL,
  `total_stok` int(11) DEFAULT NULL,
  `url_foto` varchar(255) DEFAULT NULL,
  `Pajak` tinyint(1) DEFAULT '0',
  `Jasa` tinyint(1) DEFAULT '0',
  `Konsinyasi` tinyint(1) DEFAULT '0',
  `point` tinyint(1) DEFAULT '0',
  `Aktif` tinyint(1) DEFAULT '0',
  `Created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `kategori_id` (`kategori_id`),
  KEY `subkategori_id` (`subkategori_id`),
  KEY `merek_id` (`merek_id`),
  KEY `satuan_id` (`satuan_id`),
  FULLTEXT KEY `nama_barang` (`nama_barang`),
  CONSTRAINT `tbl_produk_ibfk_1` FOREIGN KEY (`kategori_id`) REFERENCES `tbl_kategori` (`id`),
  CONSTRAINT `tbl_produk_ibfk_2` FOREIGN KEY (`subkategori_id`) REFERENCES `tbl_subkategori` (`id`),
  CONSTRAINT `tbl_produk_ibfk_3` FOREIGN KEY (`merek_id`) REFERENCES `tbl_merek` (`id`),
  CONSTRAINT `tbl_produk_ibfk_4` FOREIGN KEY (`satuan_id`) REFERENCES `tbl_satuan` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Pengeluaran data tidak dipilih.

-- membuang struktur untuk table db_sukadayagroup.tbl_produkpointratio
CREATE TABLE IF NOT EXISTS `tbl_produkpointratio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `produk_id` int(11) DEFAULT NULL,
  `golongan_id` int(11) DEFAULT NULL,
  `point_ratio` decimal(10,0) DEFAULT NULL,
  `Aktif` tinyint(1) DEFAULT '1',
  `Created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `produk_id` (`produk_id`),
  KEY `golongan_id` (`golongan_id`),
  CONSTRAINT `tbl_produkpointratio_ibfk_1` FOREIGN KEY (`produk_id`) REFERENCES `tbl_produk` (`id`),
  CONSTRAINT `tbl_produkpointratio_ibfk_2` FOREIGN KEY (`golongan_id`) REFERENCES `tbl_golongan` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Pengeluaran data tidak dipilih.

-- membuang struktur untuk table db_sukadayagroup.tbl_produk_tipemotor
CREATE TABLE IF NOT EXISTS `tbl_produk_tipemotor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `produk_id` int(11) DEFAULT NULL,
  `tipeMotor_id` int(11) DEFAULT NULL,
  `Aktif` tinyint(1) DEFAULT '0',
  `Created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `produk_id` (`produk_id`),
  KEY `tipeMotor_id` (`tipeMotor_id`),
  CONSTRAINT `tbl_produk_tipemotor_ibfk_1` FOREIGN KEY (`produk_id`) REFERENCES `tbl_produk` (`id`),
  CONSTRAINT `tbl_produk_tipemotor_ibfk_2` FOREIGN KEY (`tipeMotor_id`) REFERENCES `tbl_tipemotor` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Pengeluaran data tidak dipilih.

-- membuang struktur untuk table db_sukadayagroup.tbl_promo
CREATE TABLE IF NOT EXISTS `tbl_promo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_voucher` varchar(255) DEFAULT NULL,
  `Nama_promo` varchar(255) DEFAULT NULL,
  `jenis_promo` varchar(50) DEFAULT NULL,
  `periode_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `golongan` int(11) DEFAULT NULL,
  `Aktif` tinyint(1) DEFAULT '1',
  `Created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `periode_id` (`periode_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `tbl_promo_ibfk_1` FOREIGN KEY (`periode_id`) REFERENCES `tbl_periode` (`id`),
  CONSTRAINT `tbl_promo_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `admin_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Pengeluaran data tidak dipilih.

-- membuang struktur untuk table db_sukadayagroup.tbl_roles


-- Pengeluaran data tidak dipilih.

-- membuang struktur untuk table db_sukadayagroup.tbl_satuan
CREATE TABLE IF NOT EXISTS `tbl_satuan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Nama_satuan` varchar(255) NOT NULL,
  `qty` int(11) NOT NULL,
  `satuan_konversi` int(11) DEFAULT NULL,
  `aktif` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `satuan_konversi` (`satuan_konversi`),
  CONSTRAINT `tbl_satuan_ibfk_1` FOREIGN KEY (`satuan_konversi`) REFERENCES `tbl_satuan` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Pengeluaran data tidak dipilih.

-- membuang struktur untuk table db_sukadayagroup.tbl_satuan_produk
CREATE TABLE IF NOT EXISTS `tbl_satuan_produk` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `produk_id` int(11) DEFAULT NULL,
  `Satuan_id` int(11) DEFAULT NULL,
  `hpp` int(11) NOT NULL,
  `hj1` int(11) NOT NULL,
  `Aktif` tinyint(1) DEFAULT '0',
  `Created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `produk_id` (`produk_id`),
  KEY `Satuan_id` (`Satuan_id`),
  CONSTRAINT `tbl_satuan_produk_ibfk_1` FOREIGN KEY (`produk_id`) REFERENCES `tbl_produk` (`id`),
  CONSTRAINT `tbl_satuan_produk_ibfk_2` FOREIGN KEY (`Satuan_id`) REFERENCES `tbl_satuan` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Pengeluaran data tidak dipilih.

-- membuang struktur untuk table db_sukadayagroup.tbl_stok_lokasi
CREATE TABLE IF NOT EXISTS `tbl_stok_lokasi` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Produk_id` int(11) DEFAULT NULL,
  `Lokasi_id` int(11) DEFAULT NULL,
  `lokasi_detail_id` int(11) DEFAULT NULL,
  `Stok` int(11) DEFAULT NULL,
  `Aktif` tinyint(1) DEFAULT '0',
  `Created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`),
  KEY `Produk_id` (`Produk_id`),
  KEY `Lokasi_id` (`Lokasi_id`),
  KEY `lokasi_detail_id` (`lokasi_detail_id`),
  CONSTRAINT `tbl_stok_lokasi_ibfk_1` FOREIGN KEY (`Produk_id`) REFERENCES `tbl_produk` (`id`),
  CONSTRAINT `tbl_stok_lokasi_ibfk_2` FOREIGN KEY (`Lokasi_id`) REFERENCES `tbl_lokasi` (`id`),
  CONSTRAINT `tbl_stok_lokasi_ibfk_3` FOREIGN KEY (`lokasi_detail_id`) REFERENCES `tbl_lokasi_detail` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Pengeluaran data tidak dipilih.

-- membuang struktur untuk table db_sukadayagroup.tbl_subkategori
CREATE TABLE IF NOT EXISTS `tbl_subkategori` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Kode_SubKategori` varchar(255) NOT NULL,
  `kategori_id` int(11) DEFAULT NULL,
  `nama_kategorii` varchar(255) NOT NULL,
  `aktif` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `kategori_id` (`kategori_id`),
  CONSTRAINT `tbl_subkategori_ibfk_1` FOREIGN KEY (`kategori_id`) REFERENCES `tbl_kategori` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Pengeluaran data tidak dipilih.

-- membuang struktur untuk table db_sukadayagroup.tbl_subtitusi_barang
CREATE TABLE IF NOT EXISTS `tbl_subtitusi_barang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `produk_id` int(11) DEFAULT NULL,
  `produk_subtitusi_id` int(11) DEFAULT NULL,
  `Aktif` tinyint(1) DEFAULT '0',
  `Created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `produk_id` (`produk_id`),
  KEY `produk_subtitusi_id` (`produk_subtitusi_id`),
  CONSTRAINT `tbl_subtitusi_barang_ibfk_1` FOREIGN KEY (`produk_id`) REFERENCES `tbl_produk` (`id`),
  CONSTRAINT `tbl_subtitusi_barang_ibfk_2` FOREIGN KEY (`produk_subtitusi_id`) REFERENCES `tbl_produk` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Pengeluaran data tidak dipilih.

-- membuang struktur untuk table db_sukadayagroup.tbl_supplier

-- Pengeluaran data tidak dipilih.

-- membuang struktur untuk table db_sukadayagroup.tbl_transaksibiayapembelian
CREATE TABLE IF NOT EXISTS `tbl_transaksibiayapembelian` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transaksiPembelian_id` int(11) DEFAULT NULL,
  `jenis_biaya` varchar(255) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `Created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `transaksiPembelian_id` (`transaksiPembelian_id`),
  CONSTRAINT `tbl_transaksibiayapembelian_ibfk_1` FOREIGN KEY (`transaksiPembelian_id`) REFERENCES `tbl_transaksipembelian` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Pengeluaran data tidak dipilih.

-- membuang struktur untuk table db_sukadayagroup.tbl_transaksijurnalumum
CREATE TABLE IF NOT EXISTS `tbl_transaksijurnalumum` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `toko` int(11) DEFAULT NULL,
  `deskripsi` varchar(255) DEFAULT NULL,
  `Tanggal` datetime DEFAULT NULL,
  `jenisTransaksi_id` int(11) DEFAULT NULL,
  `tabel_id` int(11) DEFAULT NULL,
  `rekonsiliasi` enum('n','c','y') DEFAULT 'n',
  `Created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `toko` (`toko`),
  KEY `jenisTransaksi_id` (`jenisTransaksi_id`),
  CONSTRAINT `tbl_transaksijurnalumum_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `admin_users` (`id`),
  CONSTRAINT `tbl_transaksijurnalumum_ibfk_2` FOREIGN KEY (`toko`) REFERENCES `tbl_lokasi` (`id`),
  CONSTRAINT `tbl_transaksijurnalumum_ibfk_3` FOREIGN KEY (`jenisTransaksi_id`) REFERENCES `tbl_jenistransaksi` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Pengeluaran data tidak dipilih.

-- membuang struktur untuk table db_sukadayagroup.tbl_transaksijurnalumumsplit
CREATE TABLE IF NOT EXISTS `tbl_transaksijurnalumumsplit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transaksiJurnalUmum_id` int(11) DEFAULT NULL,
  `toko` int(11) DEFAULT NULL,
  `akun_id` int(11) DEFAULT NULL,
  `value_num` bigint(20) DEFAULT NULL,
  `Created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `transaksiJurnalUmum_id` (`transaksiJurnalUmum_id`),
  KEY `toko` (`toko`),
  KEY `akun_id` (`akun_id`),
  CONSTRAINT `tbl_transaksijurnalumumsplit_ibfk_1` FOREIGN KEY (`transaksiJurnalUmum_id`) REFERENCES `tbl_transaksijurnalumum` (`id`),
  CONSTRAINT `tbl_transaksijurnalumumsplit_ibfk_2` FOREIGN KEY (`toko`) REFERENCES `tbl_lokasi` (`id`),
  CONSTRAINT `tbl_transaksijurnalumumsplit_ibfk_3` FOREIGN KEY (`akun_id`) REFERENCES `tbl_akun` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Pengeluaran data tidak dipilih.

-- membuang struktur untuk table db_sukadayagroup.tbl_transaksikonsinyasi
CREATE TABLE IF NOT EXISTS `tbl_transaksikonsinyasi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `kode_faktur` varchar(100) DEFAULT NULL,
  `lokasi_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `diskon_global` int(11) NOT NULL,
  `Total_biaya` int(11) NOT NULL,
  `tanggal` datetime NOT NULL,
  `transaksipo_id` int(11) NOT NULL,
  `biaya` enum('kirim','muat','bongkar','service') DEFAULT NULL,
  `keterangan` varchar(100) DEFAULT NULL,
  `subtotal` int(11) NOT NULL,
  `diskon_perbarang` int(11) NOT NULL,
  `ppn` int(11) NOT NULL,
  `total_tagihan` int(11) NOT NULL,
  `status` enum('Draft','Dikirim','Diterima','dibatalkan') DEFAULT NULL,
  `Created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `lokasi_id` (`lokasi_id`),
  KEY `supplier_id` (`supplier_id`),
  KEY `transaksipo_id` (`transaksipo_id`),
  CONSTRAINT `tbl_transaksikonsinyasi_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `admin_users` (`id`),
  CONSTRAINT `tbl_transaksikonsinyasi_ibfk_2` FOREIGN KEY (`lokasi_id`) REFERENCES `tbl_lokasi` (`id`),
  CONSTRAINT `tbl_transaksikonsinyasi_ibfk_3` FOREIGN KEY (`supplier_id`) REFERENCES `tbl_supplier` (`Id`),
  CONSTRAINT `tbl_transaksikonsinyasi_ibfk_4` FOREIGN KEY (`transaksipo_id`) REFERENCES `tbl_transaksipo` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Pengeluaran data tidak dipilih.

-- membuang struktur untuk table db_sukadayagroup.tbl_transaksikonsinyasidetail
CREATE TABLE IF NOT EXISTS `tbl_transaksikonsinyasidetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transaksikonsinyasi_id` int(11) NOT NULL,
  `produk_id` int(11) NOT NULL,
  `satuan_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `harga_beli` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `stok_akhir` int(11) NOT NULL,
  `Created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `transaksikonsinyasi_id` (`transaksikonsinyasi_id`),
  KEY `produk_id` (`produk_id`),
  KEY `satuan_id` (`satuan_id`),
  CONSTRAINT `tbl_transaksikonsinyasidetail_ibfk_1` FOREIGN KEY (`transaksikonsinyasi_id`) REFERENCES `tbl_transaksikonsinyasi` (`id`),
  CONSTRAINT `tbl_transaksikonsinyasidetail_ibfk_2` FOREIGN KEY (`produk_id`) REFERENCES `tbl_produk` (`id`),
  CONSTRAINT `tbl_transaksikonsinyasidetail_ibfk_3` FOREIGN KEY (`satuan_id`) REFERENCES `tbl_satuan` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Pengeluaran data tidak dipilih.

-- membuang struktur untuk table db_sukadayagroup.tbl_transaksikonsinyasiretur
CREATE TABLE IF NOT EXISTS `tbl_transaksikonsinyasiretur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `kode_retur` varchar(100) DEFAULT NULL,
  `eks_kode_Retur` varchar(100) DEFAULT NULL,
  `supplier_id` int(11) NOT NULL,
  `no_nota` varchar(100) DEFAULT NULL,
  `tanggal` datetime NOT NULL,
  `keterangan` varchar(100) DEFAULT NULL,
  `Total` int(11) NOT NULL,
  `status` enum('Draft','Dikirim','Diterima','dibatalkan') DEFAULT NULL,
  `Created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `supplier_id` (`supplier_id`),
  CONSTRAINT `tbl_transaksikonsinyasiretur_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `admin_users` (`id`),
  CONSTRAINT `tbl_transaksikonsinyasiretur_ibfk_2` FOREIGN KEY (`supplier_id`) REFERENCES `tbl_supplier` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Pengeluaran data tidak dipilih.

-- membuang struktur untuk table db_sukadayagroup.tbl_transaksikonsinyasireturdetail
CREATE TABLE IF NOT EXISTS `tbl_transaksikonsinyasireturdetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transaksikonsinyasiRetur_id` int(11) NOT NULL,
  `produk_id` int(11) NOT NULL,
  `satuan_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `harga_beli` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `Status` enum('diganti','tidak diganti') DEFAULT NULL,
  `stok_akhir` int(11) NOT NULL,
  `Created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `transaksikonsinyasiRetur_id` (`transaksikonsinyasiRetur_id`),
  KEY `produk_id` (`produk_id`),
  KEY `satuan_id` (`satuan_id`),
  CONSTRAINT `tbl_transaksikonsinyasireturdetail_ibfk_1` FOREIGN KEY (`transaksikonsinyasiRetur_id`) REFERENCES `tbl_transaksikonsinyasiretur` (`id`),
  CONSTRAINT `tbl_transaksikonsinyasireturdetail_ibfk_2` FOREIGN KEY (`produk_id`) REFERENCES `tbl_produk` (`id`),
  CONSTRAINT `tbl_transaksikonsinyasireturdetail_ibfk_3` FOREIGN KEY (`satuan_id`) REFERENCES `tbl_satuan` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Pengeluaran data tidak dipilih.

-- membuang struktur untuk table db_sukadayagroup.tbl_transaksipembelian
CREATE TABLE IF NOT EXISTS `tbl_transaksipembelian` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `kode_faktur` varchar(255) DEFAULT NULL,
  `lokasi_id` int(11) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `diskon_global` int(11) DEFAULT NULL,
  `jatuh_tempo` datetime DEFAULT NULL,
  `term` varchar(50) DEFAULT NULL,
  `Total_biaya` int(11) DEFAULT NULL,
  `tanggal` datetime DEFAULT NULL,
  `transaksipo_id` int(11) DEFAULT NULL,
  `biaya` enum('kirim','muat','bongkar','service') DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `subtotal` int(11) DEFAULT NULL,
  `diskon_perbarang` int(11) DEFAULT NULL,
  `ppn` int(11) DEFAULT NULL,
  `total_tagihan` int(11) DEFAULT NULL,
  `jenisBayar_id` int(11) DEFAULT NULL,
  `status` enum('Draft','Dikirim','Diterima','dibatalkan') DEFAULT NULL,
  `Created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `lokasi_id` (`lokasi_id`),
  KEY `supplier_id` (`supplier_id`),
  KEY `transaksipo_id` (`transaksipo_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `tbl_tranasksipembelian_ibfk_4` FOREIGN KEY (`user_id`) REFERENCES `admin_users` (`id`),
  CONSTRAINT `tbl_transaksipembelian_ibfk_1` FOREIGN KEY (`lokasi_id`) REFERENCES `tbl_lokasi` (`id`),
  CONSTRAINT `tbl_transaksipembelian_ibfk_2` FOREIGN KEY (`supplier_id`) REFERENCES `tbl_supplier` (`Id`),
  CONSTRAINT `tbl_transaksipembelian_ibfk_3` FOREIGN KEY (`transaksipo_id`) REFERENCES `tbl_transaksipo` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Pengeluaran data tidak dipilih.

-- membuang struktur untuk table db_sukadayagroup.tbl_transaksipembeliandetail
CREATE TABLE IF NOT EXISTS `tbl_transaksipembeliandetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transaksipembelian_id` int(11) NOT NULL,
  `produk_id` int(11) NOT NULL,
  `satuan_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `harga_beli` int(11) NOT NULL,
  `sub_total` int(11) NOT NULL,
  `diskon` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `stok_akhir` int(11) NOT NULL,
  `Created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `transaksipembelian_id` (`transaksipembelian_id`),
  KEY `produk_id` (`produk_id`),
  KEY `satuan_id` (`satuan_id`),
  CONSTRAINT `tbl_transaksipembeliandetail_ibfk_1` FOREIGN KEY (`transaksipembelian_id`) REFERENCES `tbl_transaksipembelian` (`id`),
  CONSTRAINT `tbl_transaksipembeliandetail_ibfk_2` FOREIGN KEY (`produk_id`) REFERENCES `tbl_produk` (`id`),
  CONSTRAINT `tbl_transaksipembeliandetail_ibfk_3` FOREIGN KEY (`satuan_id`) REFERENCES `tbl_satuan` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Pengeluaran data tidak dipilih.

-- membuang struktur untuk table db_sukadayagroup.tbl_transaksipembelianretur
CREATE TABLE IF NOT EXISTS `tbl_transaksipembelianretur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `kode_retur` varchar(50) DEFAULT NULL,
  `eks_nomor_faktur` varchar(100) DEFAULT NULL,
  `tanggal` datetime NOT NULL,
  `jenis_bayar` enum('potong nota','dp','tunai') DEFAULT NULL,
  `supplier_id` int(11) NOT NULL,
  `no_nota` varchar(100) DEFAULT NULL,
  `ppn` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `Created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `supplier_id` (`supplier_id`),
  CONSTRAINT `tbl_transaksipembelianretur_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `admin_users` (`id`),
  CONSTRAINT `tbl_transaksipembelianretur_ibfk_2` FOREIGN KEY (`supplier_id`) REFERENCES `tbl_supplier` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Pengeluaran data tidak dipilih.

-- membuang struktur untuk table db_sukadayagroup.tbl_transaksipembelianreturdetail
CREATE TABLE IF NOT EXISTS `tbl_transaksipembelianreturdetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transaksipembelianretur_id` int(11) NOT NULL,
  `produk_id` int(11) NOT NULL,
  `satuan_id` int(11) NOT NULL,
  `hargabeli` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `status` enum('diganti','tidak diganti') DEFAULT NULL,
  `stok_akhir` int(11) NOT NULL,
  `Created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `transaksipembelianretur_id` (`transaksipembelianretur_id`),
  KEY `produk_id` (`produk_id`),
  KEY `satuan_id` (`satuan_id`),
  CONSTRAINT `tbl_transaksipembelianreturdetail_ibfk_1` FOREIGN KEY (`transaksipembelianretur_id`) REFERENCES `tbl_transaksipembelianretur` (`id`),
  CONSTRAINT `tbl_transaksipembelianreturdetail_ibfk_2` FOREIGN KEY (`produk_id`) REFERENCES `tbl_produk` (`id`),
  CONSTRAINT `tbl_transaksipembelianreturdetail_ibfk_3` FOREIGN KEY (`satuan_id`) REFERENCES `tbl_satuan` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Pengeluaran data tidak dipilih.

-- membuang struktur untuk table db_sukadayagroup.tbl_transaksipengiriman
CREATE TABLE IF NOT EXISTS `tbl_transaksipengiriman` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sopir_id` int(11) DEFAULT NULL,
  `kenek_id` int(11) DEFAULT NULL,
  `mobil_id` int(11) DEFAULT NULL,
  `Tanggal` date DEFAULT NULL,
  `jam_berangkat` datetime DEFAULT NULL,
  `jam_kembali` datetime DEFAULT NULL,
  `arah_id` int(11) DEFAULT NULL,
  `Created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `sopir_id` (`sopir_id`),
  KEY `kenek_id` (`kenek_id`),
  KEY `mobil_id` (`mobil_id`),
  KEY `arah_id` (`arah_id`),
  CONSTRAINT `tbl_transaksipengiriman_ibfk_1` FOREIGN KEY (`sopir_id`) REFERENCES `tbl_karyawan` (`Id`),
  CONSTRAINT `tbl_transaksipengiriman_ibfk_2` FOREIGN KEY (`kenek_id`) REFERENCES `tbl_karyawan` (`Id`),
  CONSTRAINT `tbl_transaksipengiriman_ibfk_3` FOREIGN KEY (`mobil_id`) REFERENCES `tbl_mobilpengiriman` (`id`),
  CONSTRAINT `tbl_transaksipengiriman_ibfk_4` FOREIGN KEY (`arah_id`) REFERENCES `tbl_arahpengiriman` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Pengeluaran data tidak dipilih.

-- membuang struktur untuk table db_sukadayagroup.tbl_transaksipengirimandetail
CREATE TABLE IF NOT EXISTS `tbl_transaksipengirimandetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transaksiPengiriman_id` int(11) DEFAULT NULL,
  `transaksiPenjualan_id` int(11) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `Created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `transaksiPengiriman_id` (`transaksiPengiriman_id`),
  KEY `transaksiPenjualan_id` (`transaksiPenjualan_id`),
  CONSTRAINT `tbl_transaksipengirimandetail_ibfk_1` FOREIGN KEY (`transaksiPengiriman_id`) REFERENCES `tbl_transaksipengiriman` (`id`),
  CONSTRAINT `tbl_transaksipengirimandetail_ibfk_2` FOREIGN KEY (`transaksiPenjualan_id`) REFERENCES `tbl_transaksipenjualan` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Pengeluaran data tidak dipilih.

-- membuang struktur untuk table db_sukadayagroup.tbl_transaksipenjualan
CREATE TABLE IF NOT EXISTS `tbl_transaksipenjualan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `sales` int(11) NOT NULL,
  `Toko` int(11) NOT NULL,
  `sales_order_id` int(11) NOT NULL,
  `kode_faktur` varchar(100) DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `term` int(11) DEFAULT NULL,
  `tanggal` datetime DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `transaksiPenjualanRetur_id` int(11) DEFAULT NULL,
  `subtotal` int(11) DEFAULT NULL,
  `kode_ongkir` int(11) DEFAULT NULL,
  `Ongkir` int(11) DEFAULT NULL,
  `Alamat_kirim` varchar(255) DEFAULT NULL,
  `surat_jalan` varchar(255) DEFAULT NULL,
  `diskon_global` int(11) DEFAULT NULL,
  `diskon_perbarang` int(11) DEFAULT NULL,
  `potongan_retur` int(11) DEFAULT NULL,
  `ppn` int(11) DEFAULT NULL,
  `total_tagihan` int(11) DEFAULT NULL,
  `Total_hpp` int(11) DEFAULT NULL,
  `jenisBayar_id` int(11) DEFAULT NULL,
  `jenis_penjualan` enum('ecer','grosir','khusus') DEFAULT NULL,
  `status` enum('Draft','Dikirim','Diterima','dibatalkan') DEFAULT NULL,
  `Created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `sales` (`sales`),
  KEY `Toko` (`Toko`),
  KEY `sales_order_id` (`sales_order_id`),
  KEY `customer_id` (`customer_id`),
  KEY `transaksiPenjualanRetur_id` (`transaksiPenjualanRetur_id`),
  KEY `kode_ongkir` (`kode_ongkir`),
  KEY `jenisBayar_id` (`jenisBayar_id`),
  CONSTRAINT `tbl_transaksipenjualan_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `admin_users` (`id`),
  CONSTRAINT `tbl_transaksipenjualan_ibfk_2` FOREIGN KEY (`sales`) REFERENCES `tbl_karyawan` (`Id`),
  CONSTRAINT `tbl_transaksipenjualan_ibfk_3` FOREIGN KEY (`Toko`) REFERENCES `tbl_lokasi` (`id`),
  CONSTRAINT `tbl_transaksipenjualan_ibfk_4` FOREIGN KEY (`sales_order_id`) REFERENCES `tbl_transaksisalesorder` (`id`),
  CONSTRAINT `tbl_transaksipenjualan_ibfk_5` FOREIGN KEY (`customer_id`) REFERENCES `tbl_customer` (`id`),
  CONSTRAINT `tbl_transaksipenjualan_ibfk_6` FOREIGN KEY (`transaksiPenjualanRetur_id`) REFERENCES `tbl_transaksipenjualanretur` (`id`),
  CONSTRAINT `tbl_transaksipenjualan_ibfk_7` FOREIGN KEY (`kode_ongkir`) REFERENCES `tbl_area_kirim` (`id`),
  CONSTRAINT `tbl_transaksipenjualan_ibfk_8` FOREIGN KEY (`jenisBayar_id`) REFERENCES `tbl_jenisbayar` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Pengeluaran data tidak dipilih.

-- membuang struktur untuk table db_sukadayagroup.tbl_transaksipenjualandetail
CREATE TABLE IF NOT EXISTS `tbl_transaksipenjualandetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transaksiPenjualan_id` int(11) NOT NULL,
  `gudang` int(11) NOT NULL,
  `produk_id` int(11) NOT NULL,
  `satuan_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `hpp` int(11) NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL,
  `diskon` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `Total_hpp` int(11) NOT NULL,
  `stok_akhir` int(11) NOT NULL,
  `Created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `transaksiPenjualan_id` (`transaksiPenjualan_id`),
  KEY `gudang` (`gudang`),
  KEY `produk_id` (`produk_id`),
  KEY `satuan_id` (`satuan_id`),
  CONSTRAINT `tbl_transaksipenjualandetail_ibfk_1` FOREIGN KEY (`transaksiPenjualan_id`) REFERENCES `tbl_transaksipenjualan` (`id`),
  CONSTRAINT `tbl_transaksipenjualandetail_ibfk_2` FOREIGN KEY (`gudang`) REFERENCES `tbl_lokasi` (`id`),
  CONSTRAINT `tbl_transaksipenjualandetail_ibfk_3` FOREIGN KEY (`produk_id`) REFERENCES `tbl_produk` (`id`),
  CONSTRAINT `tbl_transaksipenjualandetail_ibfk_4` FOREIGN KEY (`satuan_id`) REFERENCES `tbl_satuan` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Pengeluaran data tidak dipilih.

-- membuang struktur untuk table db_sukadayagroup.tbl_transaksipenjualanretur
CREATE TABLE IF NOT EXISTS `tbl_transaksipenjualanretur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `kode_retur` varchar(50) DEFAULT NULL,
  `eks_nomor_faktur` varchar(100) DEFAULT NULL,
  `tanggal` datetime DEFAULT NULL,
  `jenis_bayar` enum('potong nota','dp','tunai') DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `ppn` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `Status` enum('diganti','tidak diganti') DEFAULT NULL,
  `Created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `tbl_transaksipenjualanretur_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `admin_users` (`id`),
  CONSTRAINT `tbl_transaksipenjualanretur_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `tbl_customer` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Pengeluaran data tidak dipilih.

-- membuang struktur untuk table db_sukadayagroup.tbl_transaksipenjualanreturdetail
CREATE TABLE IF NOT EXISTS `tbl_transaksipenjualanreturdetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transaksiPenjualanRetur_id` int(11) DEFAULT NULL,
  `produk_id` int(11) DEFAULT NULL,
  `satuan_id` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `harga_jual` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `stok_akhir` int(11) DEFAULT NULL,
  `Created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `transaksiPenjualanRetur_id` (`transaksiPenjualanRetur_id`),
  KEY `produk_id` (`produk_id`),
  KEY `satuan_id` (`satuan_id`),
  CONSTRAINT `tbl_transaksipenjualanreturdetail_ibfk_1` FOREIGN KEY (`transaksiPenjualanRetur_id`) REFERENCES `tbl_transaksipenjualanretur` (`id`),
  CONSTRAINT `tbl_transaksipenjualanreturdetail_ibfk_2` FOREIGN KEY (`produk_id`) REFERENCES `tbl_produk` (`id`),
  CONSTRAINT `tbl_transaksipenjualanreturdetail_ibfk_3` FOREIGN KEY (`satuan_id`) REFERENCES `tbl_satuan` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Pengeluaran data tidak dipilih.

-- membuang struktur untuk table db_sukadayagroup.tbl_transaksipenyesuaianstok
CREATE TABLE IF NOT EXISTS `tbl_transaksipenyesuaianstok` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `produk_id` int(11) DEFAULT NULL,
  `Tanggal` datetime DEFAULT NULL,
  `jenis_penyesuaian` enum('penambahan','pengurangan') DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `stok_akhir` int(11) DEFAULT NULL,
  `Created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `produk_id` (`produk_id`),
  CONSTRAINT `tbl_transaksipenyesuaianstok_ibfk_1` FOREIGN KEY (`produk_id`) REFERENCES `tbl_produk` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Pengeluaran data tidak dipilih.

-- membuang struktur untuk table db_sukadayagroup.tbl_transaksipiutang
CREATE TABLE IF NOT EXISTS `tbl_transaksipiutang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `TransaksiPenjualan_id` int(11) NOT NULL,
  `Tanggal` datetime NOT NULL,
  `Total_Tagihan_awal` int(11) NOT NULL,
  `Sisa_tagihan` int(11) NOT NULL,
  `jatuh_tempo` datetime DEFAULT NULL,
  `Created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `TransaksiPenjualan_id` (`TransaksiPenjualan_id`),
  CONSTRAINT `tbl_transaksipiutang_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `admin_users` (`id`),
  CONSTRAINT `tbl_transaksipiutang_ibfk_2` FOREIGN KEY (`TransaksiPenjualan_id`) REFERENCES `tbl_transaksipenjualan` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Pengeluaran data tidak dipilih.

-- membuang struktur untuk table db_sukadayagroup.tbl_transaksipiutangpembayaran
CREATE TABLE IF NOT EXISTS `tbl_transaksipiutangpembayaran` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `transaksiPiutang_id` int(11) NOT NULL,
  `tanggal_pembayaran` datetime NOT NULL,
  `jenisBayar_id` int(11) NOT NULL,
  `bg_id` int(11) DEFAULT NULL,
  `jumlah_pembayaran` int(11) NOT NULL,
  `Created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `transaksiPiutang_id` (`transaksiPiutang_id`),
  KEY `jenisBayar_id` (`jenisBayar_id`),
  KEY `bg_id` (`bg_id`),
  CONSTRAINT `tbl_transaksipiutangpembayaran_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `admin_users` (`id`),
  CONSTRAINT `tbl_transaksipiutangpembayaran_ibfk_2` FOREIGN KEY (`transaksiPiutang_id`) REFERENCES `tbl_transaksipiutang` (`id`),
  CONSTRAINT `tbl_transaksipiutangpembayaran_ibfk_3` FOREIGN KEY (`jenisBayar_id`) REFERENCES `tbl_jenisbayar` (`id`),
  CONSTRAINT `tbl_transaksipiutangpembayaran_ibfk_4` FOREIGN KEY (`bg_id`) REFERENCES `tbl_bg` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Pengeluaran data tidak dipilih.

-- membuang struktur untuk table db_sukadayagroup.tbl_transaksipo
CREATE TABLE IF NOT EXISTS `tbl_transaksipo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `nomor_po` varchar(255) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `term` varchar(50) DEFAULT NULL,
  `tempo` int(11) DEFAULT NULL,
  `tanggal` datetime DEFAULT NULL,
  `biaya` enum('kirim','muat','bongkar','service') DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `subtotal` int(11) DEFAULT NULL,
  `diskon_global` int(11) DEFAULT NULL,
  `diskon_perbarang` int(11) DEFAULT NULL,
  `ppn` int(11) DEFAULT NULL,
  `total_tagihan` int(11) DEFAULT NULL,
  `status` enum('Draft','Dikirim','Diterima','dibatalkan') DEFAULT NULL,
  `Created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `supplier_id` (`supplier_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `tbl_transaksipo_ibfk_1` FOREIGN KEY (`supplier_id`) REFERENCES `tbl_supplier` (`Id`),
  CONSTRAINT `tbl_transaksipo_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `admin_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Pengeluaran data tidak dipilih.

-- membuang struktur untuk table db_sukadayagroup.tbl_transaksipodetail
CREATE TABLE IF NOT EXISTS `tbl_transaksipodetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transaksipo_id` int(11) DEFAULT NULL,
  `produk_id` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `satuan` varchar(255) DEFAULT NULL,
  `diskon` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `Created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `transaksipo_id` (`transaksipo_id`),
  KEY `produk_id` (`produk_id`),
  CONSTRAINT `tbl_transaksipodetail_ibfk_1` FOREIGN KEY (`transaksipo_id`) REFERENCES `tbl_transaksipo` (`id`),
  CONSTRAINT `tbl_transaksipodetail_ibfk_2` FOREIGN KEY (`produk_id`) REFERENCES `tbl_produk` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Pengeluaran data tidak dipilih.

-- membuang struktur untuk table db_sukadayagroup.tbl_transaksipointcustomer
CREATE TABLE IF NOT EXISTS `tbl_transaksipointcustomer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `transaksiPenjualan_id` int(11) DEFAULT NULL,
  `tanggal` datetime DEFAULT NULL,
  `jenis_transaksi` enum('Point dari Pembelian','Point dari Bonus','Penukaran Point') DEFAULT NULL,
  `jumlah` decimal(10,0) DEFAULT NULL,
  `Sisa_Point` decimal(10,0) DEFAULT NULL,
  `Created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`),
  KEY `transaksiPenjualan_id` (`transaksiPenjualan_id`),
  CONSTRAINT `tbl_transaksipointcustomer_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `tbl_customer` (`id`),
  CONSTRAINT `tbl_transaksipointcustomer_ibfk_2` FOREIGN KEY (`transaksiPenjualan_id`) REFERENCES `tbl_transaksipenjualan` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Pengeluaran data tidak dipilih.

-- membuang struktur untuk table db_sukadayagroup.tbl_transaksisalesorder
CREATE TABLE IF NOT EXISTS `tbl_transaksisalesorder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Toko` int(11) DEFAULT NULL,
  `sales_order_id` int(11) DEFAULT NULL,
  `kode_faktur` varchar(255) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `term` int(11) DEFAULT NULL,
  `tanggal` datetime DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `transaksiPenjualanRetur_id` int(11) DEFAULT NULL,
  `subtotal` int(11) DEFAULT NULL,
  `kode_ongkir` int(11) DEFAULT NULL,
  `Ongkir` int(11) DEFAULT NULL,
  `Alamat_kirim` varchar(255) DEFAULT NULL,
  `surat_jalan` varchar(255) DEFAULT NULL,
  `diskon_global` int(11) DEFAULT NULL,
  `diskon_perbarang` int(11) DEFAULT NULL,
  `potongan_retur` int(11) DEFAULT NULL,
  `ppn` int(11) DEFAULT NULL,
  `total_tagihan` int(11) DEFAULT NULL,
  `jenisBayar_id` int(11) DEFAULT NULL,
  `jenis_penjualan` enum('ecer','grosir','khusus') DEFAULT NULL,
  `status` enum('Draft','Dikirim','Diterima','dibatalkan') DEFAULT NULL,
  `Created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `Toko` (`Toko`),
  KEY `sales_order_id` (`sales_order_id`),
  KEY `customer_id` (`customer_id`),
  KEY `transaksiPenjualanRetur_id` (`transaksiPenjualanRetur_id`),
  KEY `kode_ongkir` (`kode_ongkir`),
  KEY `jenisBayar_id` (`jenisBayar_id`),
  CONSTRAINT `tbl_transaksisalesorder_ibfk_1` FOREIGN KEY (`Toko`) REFERENCES `tbl_lokasi` (`id`),
  CONSTRAINT `tbl_transaksisalesorder_ibfk_2` FOREIGN KEY (`sales_order_id`) REFERENCES `tbl_transaksisalesorder` (`id`),
  CONSTRAINT `tbl_transaksisalesorder_ibfk_3` FOREIGN KEY (`customer_id`) REFERENCES `tbl_customer` (`id`),
  CONSTRAINT `tbl_transaksisalesorder_ibfk_4` FOREIGN KEY (`transaksiPenjualanRetur_id`) REFERENCES `tbl_transaksipenjualanretur` (`id`),
  CONSTRAINT `tbl_transaksisalesorder_ibfk_5` FOREIGN KEY (`kode_ongkir`) REFERENCES `tbl_area_kirim` (`id`),
  CONSTRAINT `tbl_transaksisalesorder_ibfk_6` FOREIGN KEY (`jenisBayar_id`) REFERENCES `tbl_jenisbayar` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Pengeluaran data tidak dipilih.

-- membuang struktur untuk table db_sukadayagroup.tbl_transaksisalesorderdetail
CREATE TABLE IF NOT EXISTS `tbl_transaksisalesorderdetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transaksiSalesOrder_id` int(11) DEFAULT NULL,
  `gudang` int(11) DEFAULT NULL,
  `produk_id` int(11) DEFAULT NULL,
  `satuan_id` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `harga_jual` int(11) DEFAULT NULL,
  `subtotal` int(11) DEFAULT NULL,
  `diskon` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `Created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `transaksiSalesOrder_id` (`transaksiSalesOrder_id`),
  KEY `gudang` (`gudang`),
  KEY `produk_id` (`produk_id`),
  KEY `satuan_id` (`satuan_id`),
  CONSTRAINT `tbl_transaksisalesorderdetail_ibfk_1` FOREIGN KEY (`transaksiSalesOrder_id`) REFERENCES `tbl_transaksisalesorder` (`id`),
  CONSTRAINT `tbl_transaksisalesorderdetail_ibfk_2` FOREIGN KEY (`gudang`) REFERENCES `tbl_lokasi` (`id`),
  CONSTRAINT `tbl_transaksisalesorderdetail_ibfk_3` FOREIGN KEY (`produk_id`) REFERENCES `tbl_produk` (`id`),
  CONSTRAINT `tbl_transaksisalesorderdetail_ibfk_4` FOREIGN KEY (`satuan_id`) REFERENCES `tbl_satuan` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Pengeluaran data tidak dipilih.

-- membuang struktur untuk table db_sukadayagroup.tbl_transaksistokopname
CREATE TABLE IF NOT EXISTS `tbl_transaksistokopname` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Nomor` varchar(255) DEFAULT NULL,
  `Tanggal` datetime DEFAULT NULL,
  `produk_id` int(11) DEFAULT NULL,
  `Stok` int(11) DEFAULT NULL,
  `Fisik` int(11) DEFAULT NULL,
  `Selisih` int(11) DEFAULT NULL,
  `Created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `produk_id` (`produk_id`),
  CONSTRAINT `tbl_transaksistokopname_ibfk_1` FOREIGN KEY (`produk_id`) REFERENCES `tbl_produk` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Pengeluaran data tidak dipilih.

-- membuang struktur untuk table db_sukadayagroup.tbl_transaksiuangmukabeli
CREATE TABLE IF NOT EXISTS `tbl_transaksiuangmukabeli` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `jenis_transaksi` enum('UMB','Tanda_terima') DEFAULT NULL,
  `Tanggal` datetime DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `jenisBayar_id` int(11) DEFAULT NULL,
  `bg_id` int(11) DEFAULT NULL,
  `Jumlah` int(11) DEFAULT NULL,
  `Keterangan` varchar(255) DEFAULT NULL,
  `Created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `supplier_id` (`supplier_id`),
  KEY `jenisBayar_id` (`jenisBayar_id`),
  KEY `bg_id` (`bg_id`),
  CONSTRAINT `tbl_transaksiuangmukabeli_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `admin_users` (`id`),
  CONSTRAINT `tbl_transaksiuangmukabeli_ibfk_2` FOREIGN KEY (`supplier_id`) REFERENCES `tbl_supplier` (`Id`),
  CONSTRAINT `tbl_transaksiuangmukabeli_ibfk_3` FOREIGN KEY (`jenisBayar_id`) REFERENCES `tbl_jenisbayar` (`id`),
  CONSTRAINT `tbl_transaksiuangmukabeli_ibfk_4` FOREIGN KEY (`bg_id`) REFERENCES `tbl_bg` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Pengeluaran data tidak dipilih.

-- membuang struktur untuk table db_sukadayagroup.tbl_transaksiuangmukajual
CREATE TABLE IF NOT EXISTS `tbl_transaksiuangmukajual` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `jenis_transaksi` enum('UMB','Tanda_terima') DEFAULT NULL,
  `Tanggal` datetime DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `jenisBayar_id` int(11) DEFAULT NULL,
  `bg_id` int(11) DEFAULT NULL,
  `Jumlah` int(11) DEFAULT NULL,
  `Keterangan` varchar(255) DEFAULT NULL,
  `Created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `customer_id` (`customer_id`),
  KEY `jenisBayar_id` (`jenisBayar_id`),
  KEY `bg_id` (`bg_id`),
  CONSTRAINT `tbl_transaksiuangmukajual_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `admin_users` (`id`),
  CONSTRAINT `tbl_transaksiuangmukajual_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `tbl_customer` (`id`),
  CONSTRAINT `tbl_transaksiuangmukajual_ibfk_3` FOREIGN KEY (`jenisBayar_id`) REFERENCES `tbl_jenisbayar` (`id`),
  CONSTRAINT `tbl_transaksiuangmukajual_ibfk_4` FOREIGN KEY (`bg_id`) REFERENCES `tbl_bg` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Pengeluaran data tidak dipilih.

-- membuang struktur untuk table db_sukadayagroup.tbl_transaksiutang
CREATE TABLE IF NOT EXISTS `tbl_transaksiutang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `TransaksiPembelian_id` int(11) DEFAULT NULL,
  `Tanggal` datetime DEFAULT NULL,
  `Total_Tagihan_awal` int(11) DEFAULT NULL,
  `Sisa_tagihan` int(11) DEFAULT NULL,
  `jatuh_tempo` datetime DEFAULT NULL,
  `Created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `TransaksiPembelian_id` (`TransaksiPembelian_id`),
  CONSTRAINT `tbl_transaksiutang_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `admin_users` (`id`),
  CONSTRAINT `tbl_transaksiutang_ibfk_2` FOREIGN KEY (`TransaksiPembelian_id`) REFERENCES `tbl_transaksipembelian` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Pengeluaran data tidak dipilih.

-- membuang struktur untuk table db_sukadayagroup.tbl_transaksiutangpembayaran
CREATE TABLE IF NOT EXISTS `tbl_transaksiutangpembayaran` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `transaksiUtang_id` int(11) DEFAULT NULL,
  `tanggal_pembayaran` datetime DEFAULT NULL,
  `jenisBayar_id` int(11) DEFAULT NULL,
  `bg_id` int(11) DEFAULT NULL,
  `jumlah_pembayaran` int(11) DEFAULT NULL,
  `Created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `transaksiUtang_id` (`transaksiUtang_id`),
  KEY `jenisBayar_id` (`jenisBayar_id`),
  KEY `bg_id` (`bg_id`),
  CONSTRAINT `tbl_transaksiutangpembayaran_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `admin_users` (`id`),
  CONSTRAINT `tbl_transaksiutangpembayaran_ibfk_2` FOREIGN KEY (`transaksiUtang_id`) REFERENCES `tbl_transaksiutang` (`id`),
  CONSTRAINT `tbl_transaksiutangpembayaran_ibfk_3` FOREIGN KEY (`jenisBayar_id`) REFERENCES `tbl_jenisbayar` (`id`),
  CONSTRAINT `tbl_transaksiutangpembayaran_ibfk_4` FOREIGN KEY (`bg_id`) REFERENCES `tbl_bg` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Pengeluaran data tidak dipilih.

-- membuang struktur untuk table db_sukadayagroup.tbl_tutup_buku
CREATE TABLE IF NOT EXISTS `tbl_tutup_buku` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `akun_id` int(11) DEFAULT NULL,
  `periode_id` int(11) DEFAULT NULL,
  `tanggal` datetime DEFAULT NULL,
  `saldo` int(11) DEFAULT NULL,
  `Created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `akun_id` (`akun_id`),
  KEY `periode_id` (`periode_id`),
  CONSTRAINT `tbl_tutup_buku_ibfk_1` FOREIGN KEY (`akun_id`) REFERENCES `tbl_akun` (`id`),
  CONSTRAINT `tbl_tutup_buku_ibfk_2` FOREIGN KEY (`periode_id`) REFERENCES `tbl_periode` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Pengeluaran data tidak dipilih.

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
