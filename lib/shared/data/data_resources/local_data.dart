import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesProvider {
  late SharedPreferences prefs;
  static const String _language = "LANG";

  Future<void> setLanguage(String language) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(_language, language);
    
  }

  Future<String?> getLanguage() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(_language);
  }
  
 
}
