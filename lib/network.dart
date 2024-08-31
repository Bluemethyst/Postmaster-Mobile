import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:postmaster_mobile/json_data.dart';

Future<TrackingResponseData> getData(String trackingNumber) async {
  var url = Uri.parse(
      'https://postmaster-proxy.bluemethyst.workers.dev/track?tracking_reference=$trackingNumber');
  var response = await http.get(url);
  if (response.statusCode == 200) {
    var responseBody = json.decode(response.body) as Map<String, dynamic>;
    return TrackingResponseData.fromJson(responseBody);
  } else {
    return TrackingResponseData(
        statusCode: response.statusCode,
        messageId: response.statusCode.toString(),
        success: false,
        results: List.empty());
  }
}
