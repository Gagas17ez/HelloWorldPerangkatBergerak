import '../model/apiWisata.dart';
import 'package:http/http.dart' as http;

Future<List<Wisata>> fetchWisata() async {
  String link = "http://192.168.100.16/DATAU/ndatau.php";
  final response = await http.get(Uri.parse(link));
  return wisataFromJson(response.body);
}
