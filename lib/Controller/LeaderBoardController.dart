import 'dart:convert';
import 'package:artificial_test/Network/GetNetworkRequest.dart';
import 'package:artificial_test/Views/Widgets/ShowSnackBar.dart';
import 'package:artificial_test/resources/Color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

fetchLeaderBoard(BuildContext context) async {
  String URL = dotenv.get("URL");

  List result = await GetRequest(URL);

  if (result[0] == 'Completed') {
    http.Response response = result[1];
    if (response.statusCode == 200) {
      var jsonData = json.decode(response.body);
      ShowSnackBar(context, 'Data Fetched Successfully', green);
      return jsonData['data']['host_daily']['all'];
    } else {
      debugPrint('result false');
      ShowSnackBar(context, 'Something Went Wrong', red);
    }
  } else {
    debugPrint('result false');
    ShowSnackBar(context, 'Check Internet Connection', red);
  }
  return [];
}
