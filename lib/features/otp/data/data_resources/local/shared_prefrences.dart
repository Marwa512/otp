import 'package:shared_preferences/shared_preferences.dart';
class SharedPreferencesProvider {


Future<void> setOtp({
  required String value,
}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString("otp", value);
  }
   Future<String?> getOtp() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('otp');
  }
  Future<void> clearCache() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('otp');
  }
}
