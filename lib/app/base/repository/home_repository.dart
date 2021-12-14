import 'package:get/get.dart';
import '../../base/networking/_index.dart';

class HomeRepository {
  var _service = Get.put(HttpService());

  Future<Outcome> checkEmployee({required List data}) async {
    var body = '{"data": ${data}}';
    return await _service.httpPost(
        endPoint: 'http://127.0.0.1:5000/', withToken: false, body: body);
  }
}
