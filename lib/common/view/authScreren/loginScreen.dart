import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:uber/common/widget/assetsGen.dart';
import 'package:uber/constant/utils/colors.dart';
import 'package:uber/constant/utils/textStyles.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController mobileNumberController = TextEditingController();
  String selectedCountryCode = '+62';
  bool loginButtonPressed = false;
  List loginButtonData = [
    [const AssetGen().google.svg(height: 3.h), 'Google'],
    [const AssetGen().apple.svg(height: 3.h), 'Apple'],
    [const AssetGen().facebook.svg(height: 3.h), 'Facebook'],
    [const AssetGen().mail.svg(height: 3.h), 'Mail'],
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 3.h, vertical: 2.h),
        children: [
          SizedBox(
            height: 1.h,
          ),
          Text(
            ' Enter Your Mobile Number',
            style: AppTextStyles.body18,
          ),
          SizedBox(
            height: 1.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {},
                child: Container(
                  height: 6.h,
                  width: 20.w,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.sp),
                    color: grey,
                    border: Border.all(color: grey),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    ));
  }
}
