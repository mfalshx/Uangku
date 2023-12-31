import 'package:flutter/material.dart';
import 'package:catatankeuangan/laporan.dart';

enum MenuItem { laporan, about }

class AboutUs extends StatefulWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  Widget buildText(BuildContext context) => ExpansionTile(
        title: Text('Penggunaan Aplikasi',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400)),
        children: <Widget>[
          ListTile(
            title: Text(
                'Berikut adalah langkah-langkah penggunaan Aplikasi Catatan Keuangan'),
          ),
          ListTile(
            title: Text('1. Klik button add di sebelah kanan bawah pada home'),
            visualDensity: VisualDensity(vertical: -4),
          ),
          ListTile(
            title: Text(
                '2. Lakukan input pengeluaran dan pemasukkan yang telah dilakukan'),
            visualDensity: VisualDensity(vertical: -4),
          ),
          ListTile(
            title:
                Text('3. Klik simpan, maka data akan tersimpan pada history'),
            visualDensity: VisualDensity(vertical: -4),
          ),
          ListTile(
            title: Text(
                '4. Untuk mengetahui pemakaian uang tiap bulan dapat di cek pada menu laporan lalu memilih bulan yang diinginkan'),
            visualDensity: VisualDensity(vertical: 4),
          ),
        ],
      );

  Widget buildTextKelompok(BuildContext context) => ExpansionTile(
        title: Text('Deskripsi',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400)),
        children: <Widget>[
          ListTile(
            title: Text('Aplikasi Mobile'),
          ),
          ListTile(
            title: Text('- Rifaldi (2006136)'),
            visualDensity: VisualDensity(vertical: -4),
          ),
        ],
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("About Us"),
          elevation: 5.0,
          actions: [
            PopupMenuButton(
                onSelected: (value) {
                  if (value == MenuItem.laporan) {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => LaporanPerBulan(),
                    ));
                  } else if (value == MenuItem.about) {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => AboutUs(),
                    ));
                  }
                },
                itemBuilder: ((context) => [
                      const PopupMenuItem(
                          value: MenuItem.laporan, child: Text("Laporan")),
                      const PopupMenuItem(
                          value: MenuItem.about, child: Text("About"))
                    ]))
          ],
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: <Widget>[
                Image.asset(
                  'images/aboutgambar.png',
                  width: 200.0,
                  height: 200.0,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 40.0),
                ),
                Text('Aplikasi UANGKU',
                    style:
                        TextStyle(fontSize: 24.0, fontWeight: FontWeight.w700)),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(24),
                      child: Text(
                        'Aplikasi UANGKU membuat pengelolaan keuangan pribadi dengan sangat mudah! Anda dapat dengan mudah mencatat transaksi pengeluaran dan pemasukan keuangan pribadi Anda, menghasilkan laporan keuangan, meninjau data keuangan harian dan bulanan Anda dan mengetahui sisa saldo dengan mudah melalui history Aplikasi Catatan Keuangan.',
                        style: TextStyle(fontSize: 18),
                        maxLines: 50,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding:
                      EdgeInsets.only(right: 12, left: 12, top: 6, bottom: 2),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                        side: BorderSide(color: Colors.lightBlue, width: 1.5)),
                    child: SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      child: Column(
                        children: [
                          buildText(context),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 12, left: 12, bottom: 12),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                        side: BorderSide(color: Colors.lightBlue, width: 1.5)),
                    child: SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      child: Column(
                        children: [
                          buildTextKelompok(context),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 36, bottom: 16),
                  child: Text(
                    'Copyright © 2023 - 2006136 Muhammad Rifaldi',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.blueGrey),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
