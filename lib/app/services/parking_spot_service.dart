import 'dart:convert';


import 'package:http/http.dart' as http;

import '../models/parking_spot_list_model.dart';


class ParkingSpotService{

  String urlGetListParkingSpot = "https://controle-vaga.herokuapp.com/parking-spot";
  String salvar = "https://controle-vaga.herokuapp.com/parking-spot";
  dynamic _response;
  ParkingSpotService(){
    _response="";
  }

  Future<ParkingSpotList> fetchListParkingSpot() async {
    _response = await http.get(Uri.parse(urlGetListParkingSpot));
    if (_response.statusCode == 200) {
      // Map<String, dynamic> retorno = json.decode(_response.body);
      // _response = await http.post(Uri.parse(urlGarage),body: jsonEncode(garage));
      List<dynamic> list = json.decode(_response.body);
      return ParkingSpotList.fromJson(list);
    } else {
      throw Exception('Failed to load cote');
    }
  }


  // Future<ListGarages> fetchListGarage() async {
  //
  //   _response = await http.get(Uri.parse(urlGarage));
  //   if (_response.statusCode == 200) {
  //
  //     List<dynamic> list = json.decode(_response.body);
  //     return ListGarages.fromJson(list) ;
  //   } else {
  //     throw Exception('Failed to load cote');
  //
  //   }
  //
  // }

  // Future<Garage> fetchPostGarage(Garage garage) async {
  //   _response = await http.post(Uri.parse(urlGarage),body: jsonEncode(garage));
  //   if (_response.statusCode == 200) {
  //     Map<String, dynamic> retorno = json.decode(_response.body);
  //     return Garage.fromJson(retorno) ;
  //   } else {
  //     throw Exception('Failed to load cote');
  //
  //   }

  // }




}







