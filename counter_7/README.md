Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya. 
Jawab : Stateless widget adalah widget statis yang seluruh konfigurai yang ada di dalamnya sudah di initialize dari awal, sehingga widgetnya tidak dapat diubah.Sedangkan stateful widget bersifat dinamis sehingga widget bisa diupdate kapanpun berdasarkan adanya perubahan data. Perbedaan dari kedua widget ini adalah stateless widget tidak perlu ada perubahan, sedangkan stateful widget dapat diubah tampilan, banyaknya jumlah baris, dan lain-lain.

Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya. Jawab : Beberapa widget yang saya gunakan adalah widget container, wrap, column,expanded dan scaffold.
 Fungsi :
- Container = Untuk membungkus child dari berbagai tipe dan juga bisa kita berikan value fitur contohnya seperti padding, color,alignment, dan lain-lain.
- Wrap = Untuk memberikan children yang bisa di susun ke bawah atau ke samping apabila widget telah berada di batas akhir dari parent widget nya.Dengan adanya ini pada widget wrap, tampilan aplikasi akan terlihat lebih rapi.
- Row = Untuk mengurutkan widget children yang ada di dalam widget Row ini dalam bentuk dari atas ke bawah atau berbaris sesuai dengan susunan dari children tersebut. 
- Column = Fungsinya mirip dengan widget Row namun susunannya menyamping sesuai dengan susunan dari children tersebut.
- Scaffold = Untuk membuat theme yang nantinya digunakan sebagai tampilan dasar android.
- Expanded = Untuk memberi suatu tempat yang nantinya akan ditempati oleh widget hingga keseluruhan tempat yang kosong selama tempat tersebut masih available untuk di isi oleh widget ini. 

Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
Jawab : fungsi dari setState()  adalah untuk notify framework bahwa ada objek yang berubah pada state lalu akan menyusun ulang widget tersebut. 
Variable yang akan terdampak adalah variable yang diganti di fungsi tersebut. 

Jelaskan perbedaan antara const dengan final.
Jawab : const digunakan untuk mendeklarasi variable yang sifatnya immutable dan juga nilainya bersifar constant serta harus sudah diketahui saat ingin kompilasi. Sedangkan final digunakan untuk men-deklarasi variable yang sifatnya immutable dan nilainya sudah atau belum diketahui saat ingin di kompilasi.

Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
Jawab : 
Pertama untuk membuat program, saya buka VSCode dan pilih opsi "Flutter : New Project" di bagian command palette
Kemudian untuk mengubah tampilan program flutter menjadi sesuai dengan disoal, saya membuat condition untuk mengubah warna tulisan "GENAP" dan "GANJIL". Selain itu saya ubah title home app tersebut menjadi "Program Counter" dan ubah tulisan "You have pushed the button this many times" menjadi tulisan "GANJIL" dan "GENAP". Terakhir, tambahkan tombol dengan tampilan "-" di bagian paling kiri. 
Lalu agar saat user memencet tombol "-" angka yang tampil akan berkurang, saya membuat fungsi "_decrementCounter()".
Untuk menambahkan button decrement atau "-", saya menambahkan padding dan container. 



