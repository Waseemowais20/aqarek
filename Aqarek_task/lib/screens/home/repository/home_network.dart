import 'dart:convert';

import 'package:aqarek_task/constants/constants.dart';
import 'package:aqarek_task/screens/home/models/home_components_model.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class HomeNetwork {
  // get all home components from server side
  Future<HomeComponentsModel> getHomeComponents() async {
    HomeComponentsModel homeComponentsModel = HomeComponentsModel();
    String url = '${Constants.baseUrl}/ords/aqarek/property/home?deviceId';
    var response = await http.get(
      Uri.parse(url),
      headers: {
        'Content-Type': 'application/json',
        'clientId': '31',
        'langId': 'ar',
        'sharedKey': 'Ftjj#-ddtrum5261_gfRdCXooO#165?*234sEEd'
      },
    );

    if (response.statusCode == 200) {
      print('Status code is 200');
      homeComponentsModel = homeComponentsModelFromJson(utf8.decode(response.bodyBytes));
    }

    return homeComponentsModel;
  }
}

HomeNetwork homeNetwork = HomeNetwork();
