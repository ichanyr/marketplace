import 'dart:convert';
import 'api_model.dart';
import 'package:http/http.dart' as http;

class Get {
  final _baseUrl =
      'https://cat-fact.herokuapp.com/facts'; //Variabel _baseUrl adalah konstanta yang menyimpan URL dasar dari API yang Anda minta data.

  Future getData() async {
    // Metode getData() adalah fungsi asinkron yang melakukan permintaan API dan pengambilan data.
    try {
      final response = await http.get(Uri.parse(_baseUrl));
      // Di dalam blok try, permintaan HTTP GET dibuat ke _baseUrl menggunakan metode http.get().
      // Kata kunci await digunakan karena permintaan tersebut bersifat asinkron.

      if (response.statusCode == 200) {
        // kondisi yang memeriksa apakah respons memiliki kode status HTTP 200 (OK). Jika iya, itu berarti permintaan berhasil.

        print(response.body);
        //  //mencetak isi tubuh respons ke konsol. Ini berguna untuk melihat data JSON yang diterima dari server.
        List<dynamic> jsonEncode = json.decode(response.body);
        // Tubuh respons JSON kemudian didekode menggunakan json.decode(response.body) untuk mengonversinya menjadi daftar objek dinamis.
        List<Api> api = jsonEncode.map((e) => Api.fromJson(e)).toList();
        // Data JSON yang sudah didekode dihubungkan menjadi daftar objek Api menggunakan fungsi .map() dan konstruktor Api.fromJson(). Hasilnya disimpan dalam daftar api.
        return api;
        // Daftar api dikembalikan sebagai hasil dari fungsi getData().
      }
    } catch (e) {
      print(e.toString());
      // Jika terjadi pengecualian saat membuat permintaan HTTP atau memproses data, hal tersebut ditangkap oleh blok catch.
      //Pesan kesalahan dicetak ke konsol menggunakan print(e.toString());.
    }
  }
}
