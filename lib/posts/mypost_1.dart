import 'package:flutter/material.dart';
import 'package:uts_mobile/util/post_template.dart';

class MyPost1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PostTemplate(
      username: 'createdbySyarif',
      videoDescription: 'tiktok ui',
      numberOfLikes: '1.2M',
      numberOfComments: '1232',
      numberOfShares: '122',
      userPost: Container(
        color: Colors.deepPurple[300],
      ),
    );
  }
}
