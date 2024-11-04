Hasil Screenshoot 
![image](https://github.com/user-attachments/assets/df3dac3e-7e3a-4e9d-938f-8d6d5da76c96)

Jelaskan maksud void async pada praktikum 1? 

Dalam bahasa pemrograman Dart, kata kunci async digunakan untuk menunjukkan bahwa suatu fungsi bersifat asinkron. 
Fungsi asinkron adalah fungsi yang memungkinkan eksekusi berjalan di latar belakang tanpa menghentikan eksekusi kode lainnya. 
Dengan kata lain, fungsi tersebut tidak diblokir, sehingga aktivitas program lain dapat terus dijalankan sambil menunggu fungsi asinkron menyelesaikan tugasnya.

Saat suatu fungsi dideklarasikan dengan void async, seperti dalam void main() async, ini berarti fungsi tersebut akan dijalankan secara asinkron namun tidak akan memberikan hasil apa pun (mengembalikan void). Hal ini memungkinkan penggunaan kata kunci await di dalam fungsi. await digunakan untuk menunggu hasil operasi asinkron lainnya sebelum melanjutkan ke baris kode berikutnya, sehingga kode lebih mudah dibaca dan dipahami karena terlihat seperti kode sinkron biasa.


Jelaskan fungsi dari anotasi @immutable dan @override ?

Anotasi @immutable dalam bahasa pemrograman Dart digunakan untuk menunjukkan bahwa suatu kelas bersifat immutable, 
artinya properti atau atribut yang dikandungnya tidak dapat diubah setelah objek dibuat. 
Penggunaan anotasi ini penting selama pengembangan aplikasi Flutter untuk memastikan bahwa widget atau objek yang dibuat bersifat konstan, 
sehingga menghindari perubahan status yang tidak disengaja yang dapat menyebabkan kesalahan. Dengan menandai kelas dengan @immutable, 
pengembang akan diperingatkan oleh pemeriksa kode statis (analyzer) jika ada upaya untuk mengubah properti setelah inisialisasi.

Sementara itu, anotasi @override digunakan untuk menunjukkan bahwa metode atau properti dalam suatu kelas 
mengesampingkan implementasi metode atau properti dengan nama yang sama dari superclass-nya. 
Anotasi ini berguna untuk memperjelas bahwa metode tersebut bukanlah definisi baru, melainkan pembaruan dari metode di superclass. 
Hal ini membantu mencegah kesalahan ketik atau perubahan yang tidak disengaja pada tanda tangan metode, yang dapat menyebabkan kesalahan. 
Dengan @override, pengembang dapat memastikan bahwa metode yang diterapkan cocok dengan metode superclass dan dapat dipanggil atau dimodifikasi sesuai kebutuhan.
