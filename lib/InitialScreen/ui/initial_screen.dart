import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobooking/Auth/SignUp/ui/sign_up_screen.dart';
import 'package:mobooking/constant/color.dart';
import 'package:mobooking/widgets/custome_text.dart';
import 'package:mobooking/widgets/my_button.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  _InitialScreenState createState() => _InitialScreenState();
}

int page = 0;

class _InitialScreenState extends State<InitialScreen> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    // print(height);

    // final double weight = MediaQuery.of(context).size.width;
    // final h = height / 844;
    // final w = weight / 390;
    // print(height);
    final controller = PageController(
      initialPage: 0,
    );
    double s10 = height / 84.2;

    // print(s10 * 4);
    // print(w);
    // print(MediaQuery.of(context).size.height);
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Image.asset('assets/Sign in/Frame.png'),
        // leadingWidth: ,
        actions: [
          ActionChip(
            // padding: EdgeInsets.zero,

            // color: MaterialStateProperty.all(Colors.amber),
            onPressed: () {
              showModalBottomSheet(
                backgroundColor: Colors.transparent,
                context: context,
                builder: (context) => ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(s10 * 3.2),
                      topRight: Radius.circular(s10 * 3.2)),
                  child: Scaffold(
                    backgroundColor: AppColor.geyblack,
                    body: Padding(
                      padding: EdgeInsets.all(s10 * 1.6),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // SizedBox(height: s10),
                          myHeadingText(context, 'Choose language'),
                          SizedBox(height: s10 * 1),
                          myHeadingText(
                              context, 'Which language do you want to use?',
                              fs: s10 * 1.4, fw: FontWeight.w300),
                          SizedBox(height: s10 * 3.2),
                          MyCheckBox(
                            color: AppColor.yellow,
                            s10: s10,
                            onTap: () {},
                            title: 'English',
                          ),
                          Divider(
                            color: AppColor.grey,
                          ),
                          MyCheckBox(
                            // color: AppColor.yellow,
                            s10: s10,
                            onTap: () {}, title: 'বাংলা',
                          ),
                          Spacer(),
                          MyButton(
                            title: 'User English',
                            backgroundColor: AppColor.yellow,
                            onTap: () {},
                            s10: s10,
                          ),
                          SizedBox(height: s10 * 3.2),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
            label: Text('English'),
            // backgroundColor: AppColor.black,
            elevation: 0,
            avatar: Icon(Icons.language),
          ),
          SizedBox(
            width: s10 * 1.6,
          )
        ],
      ),
      body: Column(
        children: [
          // SizedBox.expand(),
          // SizedBox(height: kToolbarHeight),

          // SizedBox(height: s10 * 6),
          // Expanded(flex: 1, child: SizedBox.shrink()),
          Expanded(
              child: PageView.builder(
            controller: controller,
            // pageSnapping: true,
            onPageChanged: (value) {
              page = value;
              setState(() {});
            },
            itemCount: 5,
            itemBuilder: (context, index) => Column(
              // mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: s10 * 5,
                      right: s10 * 5,
                      top: s10 * 4,
                      bottom: s10 * 4,
                    ),
                    child: SizedBox(
                      height: MediaQuery.of(context).size.width,
                      width: MediaQuery.of(context).size.width,
                      child: Image.network(
                        'https://m.media-amazon.com/images/M/MV5BZGQ1NjQyNDMtNzFlZS00ZGIzLTliMWUtNGJkMGMzNTBjNDg0XkEyXkFqcGdeQXVyMTE1NDI5MDQx._V1_.jpg',
                        fit: BoxFit.cover,
                        alignment: Alignment.bottomCenter,
                      ),
                    ),
                  ),
                ),
                // SizedBox(height: 40),
                Text(
                  'MBooking hello!',
                  style: GoogleFonts.nunitoSans(
                      fontWeight: FontWeight.bold, fontSize: s10 * 3.2),
                ),
                Text(
                  'Enjoy your favorite movies',
                  style: GoogleFonts.nunitoSans(
                      fontWeight: FontWeight.normal, fontSize: s10 * 1.6),
                ),
              ],
            ),
          )),
          DotsIndicator(
            dotsCount: 5,
            position: page,
            decorator: DotsDecorator(activeColor: AppColor.yellow),
          ),
          SizedBox(height: s10 * 4.6),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: s10 * 1.6),
            child: MyButton(
              title: 'Sign in',
              backgroundColor: AppColor.yellow,
              onTap: () {},
              s10: s10,
            ),
          ),
          SizedBox(height: s10 * 1.6),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: s10 * 1.6),
            child: MyButton(
              // backgroundColor: AppColor.yellow,
              title: 'Sign up',
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => SignUpScreen(),
                ));
              },
              s10: s10,
              // backgroundColor: AppColor.grey,
            ),
          ),
          SizedBox(height: s10 * 3),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: s10 * 4),
            child: Text(
              'By sign in or sign up, you agree to our Terms of Service\n and Privacy Policy',
              textAlign: TextAlign.center,
              style: GoogleFonts.nunitoSans(
                  // letterSpacing: ,
                  fontSize: s10 * 1.2,
                  fontWeight: FontWeight.normal),
            ),
          ),
          SizedBox(height: s10 * 3.2),
        ],
      ),
    );
  }
}

class MyCheckBox extends StatelessWidget {
  const MyCheckBox({
    super.key,
    required this.s10,
    this.color,
    required this.onTap,
    required this.title,
  });

  final double s10;
  final Color? color;
  final VoidCallback onTap;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: s10),
      child: InkWell(
        onTap: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            myHeadingText(context, title, color: color, fs: s10 * 2),
            Container(
              height: s10 * 4,
              width: s10 * 4,
              decoration: BoxDecoration(
                  border: Border.all(width: s10 * .2),
                  shape: BoxShape.circle,
                  color: color ?? Colors.grey),
              child: Padding(
                padding: EdgeInsets.all(s10 * .2),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: s10 * .2),
                      shape: BoxShape.circle,
                      color: Colors.black),
                  child: Padding(
                    padding: EdgeInsets.all(s10 * .4),
                    child: CircleAvatar(
                      backgroundColor: color,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}


//CUSTOME APPBAR
/* 
SizedBox(
height: s10 * 3.6,
child: Padding(
  padding: EdgeInsets.symmetric(horizontal: s10 * 1.6),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Image.asset('assets/Sign in/Frame.png'),
      ActionChip(
        // padding: EdgeInsets.zero,

        // color: MaterialStateProperty.all(Colors.amber),
        onPressed: () {
          showModalBottomSheet(
            backgroundColor: Colors.transparent,
            context: context,
            builder: (context) => ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(s10 * 3.2),
                  topRight: Radius.circular(s10 * 3.2)),
              child: Scaffold(
                backgroundColor: AppColor.geyblack,
                body: Padding(
                  padding: EdgeInsets.all(s10 * 1.6),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // SizedBox(height: s10),
                      myHeadingText(context, 'Choose language'),
                      SizedBox(height: s10 * 1),
                      myHeadingText(context,
                          'Which language do you want to use?',
                          fs: s10 * 1.4, fw: FontWeight.w300),
                      SizedBox(height: s10 * 3.2),
                      MyCheckBox(
                        color: AppColor.yellow,
                        s10: s10,
                        onTap: () {},
                        title: 'English',
                      ),
                      Divider(
                        color: AppColor.grey,
                      ),
                      MyCheckBox(
                        // color: AppColor.yellow,
                        s10: s10,
                        onTap: () {}, title: 'বাংলা',
                      ),
                      Spacer(),
                      MyButton(
                        title: 'User English',
                        backgroundColor: AppColor.yellow,
                        onTap: () {},
                        s10: s10,
                      ),
                      SizedBox(height: s10 * 3.2),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
        label: Text('English'),
        // backgroundColor: AppColor.black,
        elevation: 0,
        avatar: Icon(Icons.language),
      )
    ],
  ),
)),
 */