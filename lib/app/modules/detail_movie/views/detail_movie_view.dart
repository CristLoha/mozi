import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/detail_movie_controller.dart';

class DetailMovieView extends GetView<DetailMovieController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DetailMovieView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'DetailMovieView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
