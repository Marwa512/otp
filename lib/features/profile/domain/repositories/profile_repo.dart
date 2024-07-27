import 'package:injectable/injectable.dart';

import '../entities/profile_entity.dart';

@module
abstract class ProfileRepo{
Future<ProfileEntity> getProfileData();
}