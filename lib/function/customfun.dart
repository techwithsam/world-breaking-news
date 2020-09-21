import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:streaming_shared_preferences/streaming_shared_preferences.dart';

class CustomFunction {
  showToast({dynamic message}) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red[900],
        textColor: Colors.white,
        fontSize: 16);
  }

  saveStaticInfo({String name, email, imgUrl}) async {
    final prefs = await StreamingSharedPreferences.instance;
    prefs.setString('name', name);
    prefs.setString('email', email);
    prefs.setString('imageUrl', imgUrl);
    print('$name - name ^****'
        ' $email - email *********'
        ' $imgUrl - imageurl ***************');
  }

  Future<int> checkInternetConnection() async {
    var result = await Connectivity().checkConnectivity();
    if (result == ConnectivityResult.none) {
      return 0;
    } else if (result == ConnectivityResult.mobile) {
      return 1;
    } else if (result == ConnectivityResult.wifi) {
      return 1;
    } else {
      return 0;
    }
  }
}

class AnimatedNavigate extends PageRouteBuilder {}
