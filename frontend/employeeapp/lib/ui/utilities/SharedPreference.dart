import 'package:employee/configs/Constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceSupport {
  static const String apiTokenPref="apiToken";
  Future<SharedPreferences> prefs = SharedPreferences.getInstance();

  Future<String> getApiToken() async {

    prefs.then((SharedPreferences prefs) {
      API_TOKEN = prefs.getString(apiTokenPref) ?? "NA";
    });

    return API_TOKEN;
  }
}
