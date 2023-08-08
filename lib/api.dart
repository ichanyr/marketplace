import 'package:flutter/material.dart';
import 'api_model.dart';
import 'get.dart';

void main() {
  runApp(ApiScreen());
}

class ApiScreen extends StatefulWidget {
  @override
  State<ApiScreen> createState() => _ApiScreenState();
}

class _ApiScreenState extends State<ApiScreen> {
  List<Api> listApi = [];
  // mendefinisikan variabel listApi yang akan digunakan untuk menyimpan data yang diambil dari API.
  Get get = Get();
  // membuat instans dari kelas Get yang digunakan untuk mengambil data dari API.

  getData() async {
    // fungsi asinkron yang akan mengambil data dari API menggunakan instans get yang telah dibuat sebelumnya.
    try {
      // Di dalam blok try, data dari API diambil menggunakan metode get.getData().
      //Jika berhasil, data tersebut disimpan dalam variabel listApi.

      listApi = await get.getData();
      print('Data retrieved successfully: ${listApi.length} items');
      // mencetak pesan ke konsol bahwa data telah berhasil diambil dari API.

      setState(() {});
      // digunakan untuk memperbarui state aplikasi setelah data telah berhasil diambil. Hal ini akan memicu pembaruan tampilan aplikasi.
    } catch (error) {
      // Blok catch menangkap dan mencetak pesan error jika terjadi masalah saat mengambil data dari API.
      print('Error fetching data: $error');
    }
  }

  @override
  void initState() {
    getData();
    super.initState();
    // Di dalam metode initState(), kita memanggil fungsi getData() saat state pertama kali dibuat.
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('API'),
        centerTitle: true,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          final api = listApi[index];
          // mengambil data dari daftar listApi pada indeks tertentu dan menyimpannya dalam variabel api.
          return Container(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Text: ${api.text}'),
                Text('Type: ${api.type}'),
                Text('User: ${api.user}'),
                Text('Source: ${api.source}'),
                Text('Created At: ${api.createdAt}'),
                Text('Updated At: ${api.updatedAt}'),
              ],
            ),
          );
        },
        separatorBuilder: (context, index) {
          return Divider();
        },
        itemCount: listApi.length,
        //  menentukan jumlah item dalam daftar.
      ),
    );
  }
}
