# DPU-Kerja-Praktek


## Dokumentasi

Clone project

```bash
  git clone [https://github.com/Haikalasad/DPU-Kerja-Praktik.git]
```

Pergi ke direktori project

```bash
  cd DPU-Kerja-Praktek
```

Install vendor

```bash
  composer update
```

Generate App key 
```bash
  php artisan key:generate
```
Copy .env.example menjadi .env

```bash
  cp .env.example .env
```

## Configurasi .env rubah yang diperlukan 
```bash
   buat database kosong di phpmyadmin dengan nama yang sama dengan DB_NAME pada .env
```

Jalankan migrasi dan seeder

```bash
  php artisan migrate --seed
```

Jalankan server

```bash
  php artisan serve
```

Note : User tetap bikin manual,kalau ingin merubah role nya langsung diubah ke admin dari database / section kode yang membedakan tampilan menu tergantung role dihilangkan

