import 'package:flutter/material.dart';
import 'package:uts_mobile/posts/mypost_1.dart';
import 'package:uts_mobile/posts/mypost_2.dart';
import 'package:uts_mobile/posts/mypost_3.dart';
// ignore: unused_import
import 'package:uts_mobile/util/post_template.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var _controller;
    return Scaffold(
      body: PageView(
        controller: _controller,
        scrollDirection: Axis.vertical,
        children: [
          MyPost1(),
          MyPost2(),
          MyPost3(),
        ],
      ),
    );
  }
}
