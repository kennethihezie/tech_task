import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:luvit/common/di/locator.dart';
import 'package:luvit/firebase_options.dart';
import 'package:luvit/modules/home/presentation/screens/home_screen.dart';
import 'package:luvit/widgets/app_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:luvit/widgets/nav_bar_widget.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  await setUpLocator();

  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Luvit',
      home: Scaffold(
        appBar: AppBarWidget.primaryAppBar(),
        backgroundColor: Colors.black,
        body: const HomeScreen(),
        bottomNavigationBar: const NavBarWidget(),
      ),
    );
  }
}
