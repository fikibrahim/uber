import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uber/common/view/authScreren/loginScreen.dart';
import 'package:uber/constant/utils/colors.dart';
import 'package:sizer/sizer.dart';
import 'package:uber/rider/controller/bottomNavBarRiderProvider/bottomNavBarRiderProvider.dart';
import 'package:uber/rider/view/bottomNavbar/bottomNavbarRider.dart';

void main() {
  runApp(const Uber());
}

class Uber extends StatefulWidget {
  const Uber({super.key});

  @override
  State<Uber> createState() => _UberState();
}

class _UberState extends State<Uber> {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, _, __) {
        return MultiProvider(
          providers: [
            ChangeNotifierProvider<BottomNavbarRiderProvider>(
              create: (_) => BottomNavbarRiderProvider(),
            )
          ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            theme:
                ThemeData(appBarTheme: AppBarTheme(color: white, elevation: 0)),
            home: const LoginScreen(),
          ),
        );
      },
    );
  }
}
