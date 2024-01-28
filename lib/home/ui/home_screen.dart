import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobooking/constant/color.dart';
import 'package:mobooking/widgets/custome_text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final double s10 = MediaQuery.of(context).size.height / 84.2;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: false,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            myHeadingText(context, 'Hi, Goutom 👋🏻',
                fs: s10 * 1.8, fw: FontWeight.normal),
            myHeadingText(context, 'Welcome back',
                fs: s10 * 2.6, fw: FontWeight.bold),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications,
                color: AppColor.grey,
                size: s10 * 3,
              )),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(s10 * 1.6),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                  hintText: 'Search',
                  prefixIcon: Icon(
                    CupertinoIcons.search,
                  ),
                  filled: true,
                  fillColor: AppColor.geyblack,
                  border: OutlineInputBorder(borderSide: BorderSide.none)),
            ),
          ],
        ),
      ),
    );
  }
}
