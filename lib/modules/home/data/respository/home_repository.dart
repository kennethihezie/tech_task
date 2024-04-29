import 'package:luvit/common/di/locator.dart';
import 'package:luvit/modules/home/data/data_source/local_data_source.dart';
import 'package:luvit/modules/home/data/model/profile.dart';

class HomeRepository {
  final LocalDataSource _dataSource;
  HomeRepository({LocalDataSource? dataSource}): _dataSource = dataSource ?? locator.get();

  List<Profile> getLocalProfile(){
    return _dataSource.localData;
  }
}