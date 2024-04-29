import 'package:luvit/common/di/locator.dart';
import 'package:luvit/common/usecase/usecase.dart';
import 'package:luvit/modules/home/data/model/profile.dart';
import 'package:luvit/modules/home/data/respository/home_repository.dart';

class GetLocalProfileUseCase extends UseCase<void, List<Profile>> {
  final HomeRepository _repository;
  GetLocalProfileUseCase({HomeRepository? repository}): _repository = repository ?? locator.get();

  @override
  List<Profile> invoke([void input]) {
    return _repository.getLocalProfile();
  }
}