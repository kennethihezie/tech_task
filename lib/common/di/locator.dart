import 'package:get_it/get_it.dart';
import 'package:luvit/modules/home/data/data_source/local_data_source.dart';
import 'package:luvit/modules/home/data/respository/home_repository.dart';
import 'package:luvit/modules/home/domain/usecase/get_local_profile_usecase.dart';

GetIt locator = GetIt.instance;

Future setUpLocator() async {
  locator.registerSingleton(LocalDataSource());
  locator.registerSingleton(HomeRepository());
  locator.registerSingleton(GetLocalProfileUseCase());
}
