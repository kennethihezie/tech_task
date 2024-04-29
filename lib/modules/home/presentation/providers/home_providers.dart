import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:luvit/modules/home/presentation/viewmodel/home_viewmodel.dart';

final homeViewModel = ChangeNotifierProvider((ref) => HomeViewModel());