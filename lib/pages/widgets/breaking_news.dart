import 'package:admob_flutter/admob_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../ad_manager.dart';
import '../web.dart';

class BreakingNew extends StatefulWidget {
  BreakingNew({Key key}) : super(key: key);

  @override
  _BreakingNewState createState() => _BreakingNewState();
}

class _BreakingNewState extends State<BreakingNew> {
  final ams = AdManager();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: Column(
        children: <Widget>[
          AdmobBanner(
            adUnitId: ams.bannerAdUnitId(),
            adSize: AdmobBannerSize.FULL_BANNER,
          ),
          SizedBox(height: 10),
          Center(
            child: Text(
              'Top Breaking News Websites',
              style: GoogleFonts.aBeeZee(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
          SizedBox(height: 10),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WebView(
                                      selectedUrl: 'https://news.yahoo.com/',
                                      title: 'Yahoo! News',
                                    )));
                      },
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.transparent,
                              backgroundImage:
                                  AssetImage('assets/logos/yahoo2.png'),
                            ),
                            SizedBox(height: 6),
                            Text(
                              'Yahoo!',
                              style: GoogleFonts.righteous(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WebView(
                                      selectedUrl:
                                          'https://news.google.com/topstories',
                                      title: 'Google News',
                                    )));
                      },
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.transparent,
                              backgroundImage:
                                  AssetImage('assets/logos/google.jpg'),
                            ),
                            SizedBox(height: 6),
                            Text(
                              'Google',
                              style: GoogleFonts.righteous(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WebView(
                                      selectedUrl:
                                          'http://www.huffingtonpost.com/',
                                      title: 'HuffingtonPost',
                                    )));
                      },
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            CircleAvatar(
                              backgroundColor: Colors.transparent,
                              radius: 30,
                              backgroundImage:
                                  AssetImage('assets/logos/huff.jpg'),
                            ),
                            SizedBox(height: 6),
                            Text(
                              'HuffingtonPost',
                              style: GoogleFonts.righteous(fontSize: 11),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WebView(
                                      selectedUrl: 'http://www.cnn.com/',
                                      title: 'CNN',
                                    )));
                      },
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.transparent,
                              backgroundImage:
                                  AssetImage('assets/logos/cnn.png'),
                            ),
                            SizedBox(height: 6),
                            Text(
                              'CNN',
                              style: GoogleFonts.righteous(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WebView(
                                      selectedUrl: 'http://www.nytimes.com/',
                                      title: 'New York Times',
                                    )));
                      },
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.transparent,
                              backgroundImage:
                                  AssetImage('assets/logos/new.png'),
                            ),
                            SizedBox(height: 6),
                            Text(
                              'NewYork Times',
                              style: GoogleFonts.righteous(fontSize: 11),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 12, bottom: 12),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WebView(
                                      selectedUrl: 'http://www.foxnews.com/',
                                      title: 'Fox News',
                                    )));
                      },
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.transparent,
                              backgroundImage:
                                  AssetImage('assets/logos/fox.png'),
                            ),
                            SizedBox(height: 6),
                            Text(
                              'Fox News',
                              style: GoogleFonts.righteous(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 12, bottom: 12),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WebView(
                                      selectedUrl: 'http://www.nbcnews.com/',
                                      title: 'NBC News',
                                    )));
                      },
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.transparent,
                              backgroundImage:
                                  AssetImage('assets/logos/nbc.png'),
                            ),
                            SizedBox(height: 6),
                            Text(
                              'NBC News',
                              style: GoogleFonts.righteous(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 12, bottom: 12),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WebView(
                                      selectedUrl:
                                          'http://www.dailymail.co.uk/',
                                      title: 'Mail Online',
                                    )));
                      },
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.transparent,
                              backgroundImage:
                                  AssetImage('assets/logos/mail1.png'),
                            ),
                            SizedBox(height: 6),
                            Text(
                              'Mail Online',
                              style: GoogleFonts.righteous(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 7),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WebView(
                                      selectedUrl:
                                          'http://www.washingtonpost.com/',
                                      title: 'Washington Post',
                                    )));
                      },
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.transparent,
                              backgroundImage:
                                  AssetImage('assets/logos/wp.png'),
                            ),
                            SizedBox(height: 6),
                            Text(
                              'Washington Post',
                              style: GoogleFonts.righteous(fontSize: 11),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WebView(
                                      selectedUrl:
                                          'http://www.theguardian.com/',
                                      title: 'The Guardian',
                                    )));
                      },
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.transparent,
                              backgroundImage:
                                  AssetImage('assets/logos/guar.jpg'),
                            ),
                            SizedBox(height: 6),
                            Text(
                              'TheGuardian',
                              style: GoogleFonts.righteous(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WebView(
                                      selectedUrl: 'http://www.wsj.com/',
                                      title: 'WSJ',
                                    )));
                      },
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.transparent,
                              backgroundImage:
                                  AssetImage('assets/logos/wsj.jpg'),
                            ),
                            SizedBox(height: 6),
                            Text(
                              'WSJ',
                              style: GoogleFonts.righteous(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WebView(
                                      selectedUrl: 'http://www.abcnews.go.com/',
                                      title: 'ABC News',
                                    )));
                      },
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            CircleAvatar(
                              radius: 30,
                              backgroundImage:
                                  AssetImage('assets/logos/abc.png'),
                            ),
                            SizedBox(height: 6),
                            Text(
                              'ABC News',
                              style: GoogleFonts.righteous(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 7),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WebView(
                                      selectedUrl: 'http://news.bbc.co.uk/',
                                      title: 'BBC News',
                                    )));
                      },
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.transparent,
                              backgroundImage:
                                  AssetImage('assets/logos/bbc.png'),
                            ),
                            SizedBox(height: 6),
                            Text(
                              'BBC News',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.righteous(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WebView(
                                      selectedUrl: 'http://www.usatoday.com/',
                                      title: 'USA Today',
                                    )));
                      },
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.transparent,
                              backgroundImage:
                                  AssetImage('assets/logos/usa.png'),
                            ),
                            SizedBox(height: 6),
                            Text(
                              'USA Today',
                              style: GoogleFonts.righteous(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WebView(
                                      selectedUrl: 'http://www.latimes.com/',
                                      title: 'LA Times',
                                    )));
                      },
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.transparent,
                              backgroundImage:
                                  AssetImage('assets/logos/la.png'),
                            ),
                            SizedBox(height: 6),
                            Text(
                              'LA Times',
                              style: GoogleFonts.righteous(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 50),
        ],
      )),
    );
  }
}
