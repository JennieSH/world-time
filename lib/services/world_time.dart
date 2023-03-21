import 'package:http/http.dart';
import 'dart:convert';

class WorldTime {
  late String location;
  late String flag; // url for an asset flag icon
  late String url; // location url for endpoint
  late String time; // the time in that location

  WorldTime({required this.location, required this.flag, required this.url});

  Future<void> getTime() async {
    // make the request
    Response response =
        await get(Uri.parse('http://worldtimeapi.org/api/timezone/$url'));

    // get properties from data
    Map data = jsonDecode(response.body);
    String datetime = data['datetime'];
    String offset = data['utc_offset'].substring(1, 3);

    // create DateTime object
    DateTime now =
        DateTime.parse(datetime).add(Duration(hours: int.parse(offset)));

    // set the time property
    time = now.toString();
  }
}
