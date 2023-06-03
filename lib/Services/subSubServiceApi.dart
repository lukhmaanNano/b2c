
import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../widgets/toaster.dart';

class SubSubServiceApi extends GetConnect {
  RxList<dynamic> subSubServiceData = <dynamic>[].obs;
  late int userId;
  String? service ;
  Future<http.Response> subSubServiceApi(BuildContext context, subServiceID) async {
    final prefs = await SharedPreferences.getInstance();
    userId = 1;
    service = 'http://213.136.72.226:5045/';

    final String _baseUrl = '${service}FP1496S3/';
    final ip = Uri.parse(_baseUrl);
    final headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json'
    };
    final json = '{"data": {"p9": "0","p11": $subServiceID,"p14": "","p35": 1,"p36": 100,"p37": "BTCSSServiceID","p40": "1","p41": "1"}}';

    final response = await http.post(ip,headers:headers,body:json.toString());
    final data = jsonDecode(response.body);
    String val = ('${data['Output']['status']['message']}');
    if (response.statusCode == 200) {
      final value = (data['Output']['data']);
      subSubServiceData.assignAll(value);
      return response;
    }
    else {
      toaster(context, val);
      throw Exception('Invalid Otp');
    }
  }

}