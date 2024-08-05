import 'package:injectable/injectable.dart';
import 'package:opt_page/core/usecase/use_case.dart';
import 'package:opt_page/features/profile/domain/repositories/profile_repo.dart';

import '../entities/profile_entity.dart';

@injectable
class GetProfileUsecase extends UseCase<ProfileEntity, NoParam> {
  final ProfileRepo profileRepo;

  GetProfileUsecase(this.profileRepo);

  @override
  Future<ProfileEntity> execute([NoParam? param]) {
    return profileRepo.getProfileData();
  }
}
