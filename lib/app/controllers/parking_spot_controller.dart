import 'package:get/get.dart';

import 'package:parking_spot/app/models/parking_spot_list_model.dart';

import '../models/parking_spot_model.dart';
import '../services/parking_spot_service.dart';

class ParkingSpotController extends GetxController {

  ParkingSpotService parkingSpotService = ParkingSpotService();
  var isLoading = false.obs;
  var listParkingSpotObs = <ParkingSpotModel>[].obs;
  var ParkingSpotObs = ParkingSpotModel;

  static ParkingSpotController get parkingSpotController => Get.find();

  Future<dynamic> listParkingSpot()  async {
    isLoading.value = true;
    var list = await parkingSpotService.fetchListParkingSpot();
    listParkingSpotObs.value = list.listParkingSpotModel;
    isLoading.value = false;
    update();
    return listParkingSpotObs;
  }
  //
  // Future<dynamic> post(dynamic objeto)  async {
  //   isLoading.value = true;
  //   var list = await parkingSpotService.fetchPostGarage(objeto);
  //   ParkingSpotObs = list as Type ;
  //   isLoading.value = false;
  //   update();
  //   return ParkingSpotObs;
  // }
  //
  // Future<dynamic> postGarage()  async {
  //   isLoading.value = true;
  //   var list = await cotacaoService.fetchListGarage();
  //   listGarageObs.value = list.listGarages;
  //   isLoading.value = false;
  //   update();
  //   return listCurrenciesObs;
  // }


}

