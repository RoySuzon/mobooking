import 'package:flutter/material.dart';
import 'package:mobooking/constant/color.dart';
import 'package:mobooking/widgets/custome_text.dart';
import 'package:mobooking/widgets/my_button.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    double s10 = height / 84.2;
    return Scaffold(
      appBar: AppBar(
        title: myHeadingText(context, 'Sign Up', fs: s10 * 2),
      ),
      body: Column(
        children: [
          TextFormField(),
          SizedBox(height: s10 * 3.2),
          MyButton(
            title: 'Continue',
            backgroundColor: AppColor.yellow,
            onTap: () {},
            s10: s10,
          ),
          Spacer(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: Container(
                  height: s10 * .1,
                  color: AppColor.white,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: s10 * 2),
                child:
                    myHeadingText(context, 'Or continue with', fs: s10 * 1.6),
              ),
              Expanded(
                child: Container(
                  height: s10 * .1,
                  color: AppColor.grey,
                ),
              )
            ],
          ),
          SizedBox(height: s10 * 1.6),
          MyButton(
            textColor: AppColor.white,
            title: 'Continue',
            icon: Icon(Icons.tiktok),
            backgroundColor: AppColor.geyblack,
            onTap: () {},
            s10: s10,
          ),
          SizedBox(
            height: s10 * 1.6,
          ),
          MyButton(
            textColor: AppColor.white,
            title: 'Continue',
            icon: Icon(Icons.facebook),
            backgroundColor: AppColor.geyblack,
            onTap: () {},
            s10: s10,
          ),
          SizedBox(height: s10 * 4),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: s10 * 2,
            ),
            child: myHeadingText(
                ls: s10 * .05,
                fw: FontWeight.normal,
                context,
                textAline: TextAlign.center,
                'By sign in or sign up, you agree to our Terms of Service and Privacy Policy',
                fs: s10 * 1.2),
          ),
          SizedBox(height: s10 * 3.2),
        ],
      ),
    );
  }
}
