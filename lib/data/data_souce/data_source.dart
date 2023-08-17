import 'package:fl/api_helper/api_helper.dart';

class DataSource {
  getFact(factNumber) async {
    final request = await ApiHelper.getApiHelper(factNumber.toString());
    return request;
  }

  getRandomFactMath() async {
    final request = await ApiHelper.getApiHelper('random/math');
    return request;
  }

  getRandomFactYear() async {
    final request = await ApiHelper.getApiHelper('random/year');
    return request;
  }
}
