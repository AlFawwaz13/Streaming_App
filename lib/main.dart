import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:streaming_app/main_navigation.dart';
import 'package:streaming_app/theme_control/theme_provider.dart';
import 'package:streaming_app/theme_control/theme_manager.dart';

void main() => runApp(ChangeNotifierProvider(create: (context) => ThemeProvider(),
child: const MyApp(),));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "Control Navigation Test",
          theme: Provider.of<ThemeProvider>(context).themeData,
          home: NavigationControl(),
        );
      },
    );
    return const Placeholder();
  }
}
