import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../widgets/toaster.dart';

class SubServiceApi extends GetConnect {
  RxList<dynamic> subServiceData = <dynamic>[].obs;
  late int userId;
  String? service;
  Future<http.Response> subServiceApi(BuildContext context, int mainServiceIDPK) async {
    final prefs = await SharedPreferences.getInstance();
    userId = 1;
    service = 'http://213.136.72.226:5045/';

    final String _baseUrl = '${service}FP1499S3/';
    final ip = Uri.parse(_baseUrl);
    final headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json'
    };
    final json =
        '{"data": {"p8": "0","p10": $mainServiceIDPK,"p14": "","p37": 1,"p38": 100,"p39": "BTCSubServiceID","p42": "1","p43": "1"}}';

    final response =
    await http.post(ip,headers: headers,body: json.toString());
    final data = jsonDecode(response.body);
    String val = ('${data['Output']['status']['message']}');
    if (response.statusCode == 200) {
      final value = (data['Output']['data']);
      subServiceData.assignAll(value);
      return response;
    }
    else {
      toaster(context, val);
      throw Exception('Invalid Otp');
    }

  }
}