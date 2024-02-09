import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:paquetes/classes/req_respones.dart';
//import 'package:paquetes/paquetes.dart' as paquetes;

void main(List<String> arguments) {
  final url = Uri.parse('https://reqres.in/api/users?page=2');
  http.get(url).then((res) {
    //print(res);
    //res.statusCode;
  final resReqRes = reqResponseRespuestaFromJson(res.body);

  
    // final body = jsonDecode(res.body);
    // print(body);
    // print('Page ${body['page']}');
    // print('Per Page ${body['per_page']}');
    // print('Id del tercer Elemento ${body['data'][2]['id']}');

  print('Page ${resReqRes.page}');
  print('Per Page ${resReqRes.perPage}');
  print('Id del tercer Elemento ${resReqRes.data[2].id}');
  });

}
