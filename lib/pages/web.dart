import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:world_breaking_news/function/customfun.dart';

class WebViewSignUp extends StatelessWidget {
  final String title;
  final String selectedUrl;
  const WebViewSignUp({
    @required this.title,
    @required this.selectedUrl,
  });

  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      url: selectedUrl,
      // appBar: AppBar(
      //   title: Text(
      //     title,
      //     style: GoogleFonts.aBeeZee(color: Colors.white),
      //   ),
      //   elevation: 0,
      //   automaticallyImplyLeading: false,
      //   centerTitle: true,
      //   actions: <Widget>[],
      // ),
      withZoom: false,
      withLocalStorage: true,
      hidden: true,
      initialChild: Container(
        child: Center(
          child: SpinKitDoubleBounce(color: Colors.pink[900]),
        ),
      ),
    );
  }
}

class WebView extends StatefulWidget {
  final String title;
  final String selectedUrl;
  WebView({
    Key key,
    @required this.title,
    @required this.selectedUrl,
  }) : super(key: key);

  @override
  _WebViewState createState() =>
      _WebViewState(title: title, selectedUrl: selectedUrl);
}

class _WebViewState extends State<WebView> {
  final String title;
  final String selectedUrl;
  _WebViewState({
    @required this.title,
    @required this.selectedUrl,
  });

  bool internet = true;

  @override
  void initState() {
    super.initState();
    Future<int> a = CustomFunction().checkInternetConnection();
    a.then((value) {
      if (value == 0) {
        setState(() {
          internet = false;
        });
      } else {
        setState(() {
          internet = true;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async => true,
        child: (!internet
            ? Scaffold(
                body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'No Internet Connection, Please retry.',
                      style: GoogleFonts.aBeeZee(
                          fontStyle: FontStyle.italic,
                          color: Colors.red,
                          fontWeight: FontWeight.bold),
                    ),
                    //Image.asset('assets/lite.png', fit: BoxFit.cover,),
                    Padding(
                      padding: const EdgeInsets.all(50.0),
                      child: MaterialButton(
                        elevation: 6.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(55.0)),
                        ),
                        onPressed: () {
                          retry();
                        },
                        minWidth: double.infinity,
                        height: 50,
                        child: Text(
                          'Retry'.toUpperCase(),
                        ),
                        color: Colors.redAccent,
                        textColor: Colors.white,
                      ),
                    ),
                  ],
                ),
              ))
            : SafeArea(
                child: WebviewScaffold(
                  url: selectedUrl,
                  withZoom: false,
                  withLocalStorage: true,
                  hidden: true,
                  initialChild: Container(
                    child: Center(
                      child: SpinKitDoubleBounce(color: Colors.pink[900]),
                    ),
                  ),
                ),
              )));
  }

  retry() async {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) =>
                WebView(title: title, selectedUrl: selectedUrl)));
  }
}
