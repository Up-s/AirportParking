import 'dart:convert';

import 'package:airport_parking/domain/model/open_airport.dart';
import 'package:airport_parking/util/result.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

class OpenApi {
  final http.Client client;

  OpenApi(this.client);

  final _url =
      'http://openapi.airport.co.kr/service/rest/AirportParking/airportparkingRT';
  final _key = dotenv.get('OpenApiKey');

  Future<Result<List<OpenAirport>>> fetch(String query) async {
    try {
      final response = await client.get(
          Uri.parse('$_url?schAirportCode=$query&serviceKey=$_key&_type=json'));
      Map<String, dynamic> jsonResponse = jsonDecode(response.body);
      Map<String, dynamic> tempResponse = jsonResponse['response'];
      Map<String, dynamic> body = tempResponse['body'];
      Map<String, dynamic> items = body['items'];

      if (items['item'] is Iterable) {
        Iterable item = items['item'];
        return Result.success(
            item.map((e) => OpenAirport.fromJson(e)).toList());
      } else {
        Map<String, dynamic> item = items['item'];
        return Result.success([OpenAirport.fromJson(item)]);
      }
    } catch (e) {
      return const Result.error('open api error');
    }
  }
}
