import 'package:shared_preferences/shared_preferences.dart';

class ProfileLocalData {
  late SharedPreferences profileData;
  static const String _profile = "PROFILE";

  Future<void> setProfile(
   { required String name,
    required String date,
    required String email,
    required String phone,
    required String image,}
  ) async {
    final SharedPreferences profileData = await SharedPreferences.getInstance();
    await profileData.setStringList(_profile, [
      name,
      email,
      phone,
      date,
      image,
    ]);
  }

  Future<List<String>?> getProfile() async {
    final SharedPreferences profileData = await SharedPreferences.getInstance();
    return profileData.getStringList(_profile);
  }
}
