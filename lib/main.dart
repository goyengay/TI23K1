import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(title: 'Quiz App', home: HomePage()));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> items = [
      {
        'title': 'No. 1',
        'text':
            'Dart adalah bahasa pemrograman yang dikembangkan oleh Google dan memiliki peran untuk menulis logika (kode) aplikasi, seperti fungsi, variabel, dan struktur data. sedangkan Flutter adalah framework UI yang digunakan untuk membangun antarmuka pengguna yang menarik dan responsif menggunakan kode Dart tersebut. ',
      },
      {
        'title': 'No. 2',
        'text':
            'Sejarah Flutter bermula pada tahun 2015 ketika Google memperkenalkan proyek bernama "Sky" yang bertujuan untuk menciptakan framework UI yang dapat berjalan pada 120 frame per detik di perangkat Android. Pada tahun 2017, Google secara resmi meluncurkan Flutter versi 1.0, menandai awal dari perjalanan Flutter sebagai framework pengembangan aplikasi lintas platform yang populer. Sejak itu, Flutter terus berkembang dengan penambahan fitur-fitur baru dan peningkatan performa, menjadikannya salah satu pilihan utama bagi pengembang aplikasi mobile dan web di seluruh dunia. ',
      },
      {
        'title': 'No. 3',
        'text':
            'Komponen Layout utama di Flutter antara lain: \n 1. Container = memberikan styling, padding, margin, dan batasan dimensi. \n 2. Padding = menambahkan ruang kosong di sekeliling widget di dalamnya (child). \n 3. Row dan Column = menyusun daftar widget secara horizontal dan secara vertikal.\n 4. Stack = menumpuk beberapa widget satu di atas yang lain.\n 5. Expanded dan Flexible = Memaksa widget anak untuk mengisi semua ruang yang tersisa dan memungkinkan widget anak untuk mengambil ruang seperlunya, tetapi tetap mengontrol bagaimana ruang yang tersisa di distribusikan jika ada batasan.\n 6. ListView = menampilkan daftar widget yang dapat digulir secara vertikal atau horizontal.\n 7. GridView = menampilkan widget dalam tata letak grid yang dapat digulir.\n 8. Scaffold = menyediakan struktur dasar untuk tata letak aplikasi, termasuk AppBar, Drawer, dan BottomNavigationBar. ',
      },
      {
        'title': 'No. 4',
        'text':
            'Elemen Child pada List :\n 1. ListTile \n 2. Text \n 3. Card \n 4. Image.network/Image.asset \n 5. Row/Column \n 6. Container \n 7. Divider \n  ',
      },
      {
        'title': 'No. 5',
        'text':
            'Poin - Poin Kunci dalam merancang Desain Aplikasi Mobile :\n 1. Prioritaskan Mobile-First dan Ukuran Layar.\n 2. Kemudahan Penggunaan Jari(Fingertip-Friendly).\n 3. Performa dan Efisiensi.\n 4. Konsistensi Platform.\n 5. Navigasi Sederhana dan Intuitif.\n 6. Konteks Penggunaan.\n 7. Tipografi yang Jelas dan Terbaca.\n 8. Umpan Balik Visual.\n 9. Aksesibilitas.\n 10. Pengujian Pengguna dan Iterasi.\n ',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[800],
        leading: Icon(Icons.home, color: Colors.white),
        title: Center(
          child: Text(
            'QUIZ',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        actions: [Icon(Icons.search, color: Colors.white)],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Mata Kuliah Mobile Programming - TI23K1',
              style: TextStyle(fontSize: 18),
            ),
          ),
          const Divider(),

          const Text(' NAMA : Safaattulloh'),
          const Text(' NIM : 202311039'),
          const Text(' Kelas : TI23K1'),

          const Divider(),

          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(items[index]['title']!),
                  subtitle: Text(items[index]['text']!),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
