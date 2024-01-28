import 'package:flutter/material.dart';

import '../constant/color.dart';
import 'custome_text.dart';

class MyRowButton extends StatelessWidget {
  final String? title;
  final VoidCallback onTap;
  const MyRowButton({
    super.key,
    required this.s10,
    this.title,
    required this.onTap,
  });

  final double s10;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: s10 * 1.6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          myHeadingText(context, title ?? 'Now playing', fs: s10 * 2.4),
          GestureDetector(
            onTap: onTap,
            child: TextButton(
                onPressed: () {},
                child: Row(
                  children: [
                    myHeadingText(context, 'See all',
                        fw: FontWeight.normal,
                        color: AppColor.yellow,
                        fs: s10 * 1.6),
                    SizedBox(width: s10 * .4),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: s10 * 1.6,
                    )
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
