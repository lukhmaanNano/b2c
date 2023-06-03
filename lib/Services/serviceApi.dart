import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../widgets/toaster.dart';

class ServiceSelectApi extends GetConnect {
  late int userId;
  String? service;
  Future<http.Response> serviceApi(BuildContext context) async {
  final prefs = await SharedPreferences.getInstance();
  userId = 1;
  service = 'http://213.136.72.226:5045/';
  final String _baseUrl = '${service}FP1502S3/';
  final ip = Uri.parse(_baseUrl);
  final headers = {
    'Accept': 'application/json',
    'Content-Type': 'application/json'
  };
  const json =
      '{"data": {"p6": "0","p8": "","p15": 1,"p16": 100,"p17": "BTCMainServiceID","p20": "1","p21": "1"}}';

  final response =
        await http.post(ip,headers: headers,body: json.toString());
  final data = jsonDecode(response.body);
  String val = ('${data['Output']['status']['message']}');
  if (response.statusCode == 200) {
    return response;
  }
  else {
    toaster(context, val);
    throw Exception('Invalid Otp');
  }

}
}