import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:world_breaking_news/function/customfun.dart';

class WebView extends StatefulWidget {
  final String title;
  final String selectedUrl;
  WebView({Key key, @required this.title, @required this.selectedUrl})
      : super(key: key);

  @override
  _WebViewState createState() =>
      _WebViewState(title: title, selectedUrl: selectedUrl);
}

class _WebViewState extends State<WebView> {
  final String title;
  final String selectedUrl;
  _WebViewState({@required this.title, @required this.selectedUrl});

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
    return SafeArea(
        child: (!internet
            ? Scaffold(
                appBar: AppBar(
                  title: Text(
                    '$title',
                    style: GoogleFonts.righteous(),
                  ),
                  centerTitle: true,
                  elevation: 0,
                ),
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
                      Padding(
                        padding: const EdgeInsets.all(30),
                        child: MaterialButton(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(55.0)),
                          ),
                          onPressed: () {
                            retry();
                          },
                          minWidth: double.infinity,
                          height: 50,
                          child: Text(
                            'Retry'.toUpperCase(),
                          ),
                          color: Colors.blue[900],
                          textColor: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ))
            : SafeArea(
                child: WebviewScaffold(
                  appBar: AppBar(
                    title: Text(
                      '$title',
                      style: GoogleFonts.righteous(),
                    ),
                    centerTitle: true,
                    elevation: 0,
                    actions: <Widget>[
                      IconButton(
                          icon: Icon(Icons.refresh),
                          onPressed: () {
                            retry();
                          }),
                    ],
                  ),
                  url: selectedUrl,
                  withZoom: false,
                  withLocalStorage: true,
                  hidden: true,
                  initialChild: Container(
                    child: Center(
                      child: SpinKitThreeBounce(color: Colors.blue[900]),
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

class WebView1 extends StatefulWidget {
  final String selectedUrl;
  WebView1({Key key, @required this.selectedUrl}) : super(key: key);

  @override
  _WebView1State createState() => _WebView1State(selectedUrl: selectedUrl);
}

class _WebView1State extends State<WebView> {
  final String selectedUrl;
  _WebView1State({@required this.selectedUrl});

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
    return SafeArea(
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
                      child: SpinKitThreeBounce(color: Color(0xff0f356d)),
                    ),
                  ),
                ),
              )));
  }

  retry() async {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => WebView1(selectedUrl: selectedUrl)));
  }
}
