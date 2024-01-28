import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobooking/constant/color.dart';
import 'package:mobooking/local/movi_list.dart';
import 'package:mobooking/local/movies_list.dart';
import 'package:mobooking/widgets/custome_text.dart';

import '../../widgets/row_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<MoviesList> _movies_list =
      movie_list.map((e) => MoviesList.fromMap(e)).toList();
  final _pageController = PageController(initialPage: 2, viewportFraction: .8);
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
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: s10 * 1.6),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: Icon(
                  CupertinoIcons.search,
                ),
              ),
            ),
          ),
          SizedBox(height: s10 * 3.2),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  MyRowButton(s10: s10, onTap: () {}, title: 'Now Playing'),
                  SizedBox(height: s10 * 1.6),
                  SizedBox(
                      height: s10 * 50,
                      child: PageView.builder(
                        controller: _pageController,
                        itemBuilder: (context, index) => Column(
                          children: [
                            Expanded(
                                child: Padding(
                              padding:
                                  EdgeInsets.symmetric(horizontal: s10 * 1.6),
                              child: Image.network(
                                _movies_list[index].image.toString(),
                                fit: BoxFit.cover,
                                height: double.infinity,
                                width: double.infinity,
                                alignment: Alignment.bottomCenter,
                              ),
                            )),
                            Padding(
                              padding:
                                  EdgeInsets.symmetric(horizontal: s10 * 3.2),
                              child:
                                  _textCard(context, s10, _movies_list[index]),
                            ),
                          ],
                        ),
                        itemCount: _movies_list.length,
                      )),
                  // SizedBox(height: s10 * 3.2),
                  MyRowButton(s10: s10, onTap: () {}, title: 'Comming Soon'),
                  SizedBox(height: s10 * 1.6),
                  SizedBox(
                    height: s10 * 33,
                    // width: 200,
                    // width: double.infinity,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (context, index) => Container(
                        // height: s10 * ,
                        width: s10 * 15,
                        child: Padding(
                          padding: EdgeInsets.all(s10 * .5),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Image.network(
                                _movies_list[index].image.toString(),
                                fit: BoxFit.cover,

                                // height: double.infinity,
                                // width: double.infinity,
                                alignment: Alignment.bottomCenter,
                              ),
                              Expanded(
                                  child: Container(
                                      width: s10 * 15,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              width: .5,
                                              color: AppColor.yellow)),
                                      child: Center(child: Text('22')))),
                            ],
                          ),
                        ),
                      ),
                      itemCount: _movies_list.length,
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(width: s10 * 1.6);
                      },
                    ),
                  ),
                  SizedBox(height: s10 * 3.2),
                  MyRowButton(
                      s10: s10, onTap: () {}, title: 'Promo & Discount'),
                  SizedBox(height: s10 * 1.6),
                  SizedBox(height: s10 * 3.2),
                  MyRowButton(s10: s10, onTap: () {}, title: 'Movie news'),
                  SizedBox(height: s10 * 1.6),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Column _textCard(BuildContext context, double s10, MoviesList moviesList) {
    return Column(
      children: [
        myHeadingText(context, moviesList.title.toString(),
            fs: s10 * 2.4, textAline: TextAlign.center, ml: 1),
        myHeadingText(context, '2h29m • Action, adventure, sci-fi',
            color: AppColor.textColor, fs: s10 * 1.6, fw: FontWeight.normal),
        myHeadingText(context, '⭐︎ ${moviesList.rating} (1.222)',
            color: AppColor.textColor, fs: s10 * 1.6),
        // Text.rich(
        //   TextSpan(text: 'Goutom', children: [
        //     TextSpan(
        //         text: 'Goutom',
        //         children: [
        //           TextSpan(
        //               text: 'skskssk',
        //               style: TextStyle(color: Colors.red))
        //         ],
        //         style: TextStyle(color: Colors.green))
        //   ]),
        // )
        // RichText(text: TextSpan(text: 'adada'.))
      ],
    );
  }
}
