import 'package:get/get.dart';
import 'package:get_x_practice/ApiPath.dart';

class SampleAPITest extends GetConnect {

  Future<Response> getInfo() async {
    var information = await get(ApiPath.url);

    print(information.body["data"]["name"]);
  }

}