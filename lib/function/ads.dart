import 'package:flutter/material.dart';

class WatchPromotions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Google Promotions'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('Loading Promos....'),
      ),
    );
  }
}

