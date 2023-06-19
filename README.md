
# Hamdani-TAPVisual 

Di buat untuk memenuhi tugas akhir mata kuliah Pemrograman Visual 2, Semester 4.

### Saat ini sudah sampai:
 - [x] Form login
	 - [x] validasi level
		- [x] need rework
	 - [x] validasi status
 - [ ] Form menu siswa
	 - [ ] Form lain akan ditambahkan seiring berjalannya waktu
 - [ ] Form menu guru
	 - [ ] Form lain akan ditambahkan seiring berjalannya waktu
 - [ ] form menu admin
  	 - [x] Form Kelas **PARTIALLY**
		- [x] Create **UNTESTED**
		- [x] Read
		- [x] Update **BROKEN**
		- [x] Delete **UNTESTED**
	 - [ ] Form lain akan ditambahkan seiring berjalannya waktu

### Struktur file/folder
>**root**
>>file initial commit\
>>**folder per level user**\
>>**folder per form**
>>>file per form

### Fungsi form
*daftar ini belum selesai
|Nama Form|Fungsi  |
|---------|--------|
|`frConnection`|	Tempat penyimpanan semua komponen `Zeos` dan `ADO/Data Access`|
|`frLogin`|	Form untuk login, use unit `frConnection`|
|`frDataDiri`|bagian dari `gfrSiswa`-> `ffrDataDiri` **ON HOLD**|
|`frAdmin`|bagian dari `gfrAdmin`, berfungsi sebagai panel administrasi untuk user `admin`|
|`frKelasAdmin`|bagian dari `gfrAdmin`-> `ffrKelas`, berfungsi sebagai form CRUD data kelas untuk user `admin`|

### Konvensi Penamaan
*daftar ini belum selesai
|nama komponen/file|prefiks|
|------------------|-------|
|**file dfm/associated pascal file**|Pas|
|**Folder grup form**|gfr|
|**Folder form**|ffr|
|form|fr|
|ZConnection|Z|
|ZQuery|Zq|
|DBGrid|Db|
|DataSource|Ds|
|Edit|edt|
|MaskEdit|msk|
|Button|btn|
|ComboBox|cbx|
|Memo|mm|

### Akses baca/tulis
|level user|tabel akses|hal akses|
|--|--|--|
|`admin`|semua tabel termasuk tabel `user` |read/write|
|`guru`|semua tabel kecuali tabel `hubungan` dan `ortu`|read/write|
|`siswa`| tabel `siswa`, `riwayat_poin`, dan `kelas`|read|

### Dependencies
*daftar ini belum selesai
|Nama|Keterangan|
|--|--|
|Zeos|Koneksi database|



>Genuinely asking, why Delphi 7?# Hakase-Hamdani
