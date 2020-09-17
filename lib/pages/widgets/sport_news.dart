import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../web.dart';

class Sportnews extends StatefulWidget {
  Sportnews({Key key}) : super(key: key);

  @override
  _SportnewsState createState() => _SportnewsState();
}

class _SportnewsState extends State<Sportnews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: Column(
        children: <Widget>[
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
                                      selectedUrl:
                                          'https://news.google.com/topics/CAAqJggKIiBDQkFTRWdvSUwyMHZNRFp1ZEdvU0FtVnVHZ0pPUnlnQVAB?hl',
                                      title: 'Google Sport News',
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
                              'Google \n Sport',
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
                                      selectedUrl: 'https://espn.com/',
                                      title: 'ESPN',
                                    )));
                      },
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.transparent,
                              backgroundImage:
                                  AssetImage('assets/logos/espn.jpg'),
                            ),
                            SizedBox(height: 6),
                            Text(
                              'ESPN',
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
                                          'https://www.reddit.com/r/sports/top/',
                                      title: 'Reddit Sport',
                                    )));
                      },
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.transparent,
                              backgroundImage:
                                  AssetImage('assets/logos/reddit.jpg'),
                            ),
                            SizedBox(height: 6),
                            Text(
                              'Reddit Sport',
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
                                      selectedUrl: 'https://sports.yahoo.com/',
                                      title: 'Yahoo Sport',
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
                              'Yahoo Sport',
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
                                      selectedUrl:
                                          'https://fivethirtyeight.com/sports/',
                                      title: 'FiveThirtyEight',
                                    )));
                      },
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.transparent,
                              backgroundImage:
                                  AssetImage('assets/logos/five.png'),
                            ),
                            SizedBox(height: 6),
                            Text(
                              'FiveThirty\nEight',
                              textAlign: TextAlign.center,
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
                                      selectedUrl: 'https://www.theringer.com/',
                                      title: 'The Ringer',
                                    )));
                      },
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.transparent,
                              backgroundImage:
                                  AssetImage('assets/logos/ringer.png'),
                            ),
                            SizedBox(height: 6),
                            Text(
                              'The Ringer',
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
                                      selectedUrl: 'https://www.sbnation.com/',
                                      title: 'SBNATION',
                                    )));
                      },
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.transparent,
                              backgroundImage:
                                  AssetImage('assets/logos/sb.png'),
                            ),
                            SizedBox(height: 6),
                            Text(
                              'SBNATION  ',
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
                                      selectedUrl: 'http://www.nbcsports.com/',
                                      title: 'NBC Sport',
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
                              'NBC Sport',
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
                                      selectedUrl: 'https://www.cbssports.com/',
                                      title: 'CBS Sport',
                                    )));
                      },
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.transparent,
                              backgroundImage:
                                  AssetImage('assets/logos/cbs.jpg'),
                            ),
                            SizedBox(height: 6),
                            Text(
                              'CBS Sport',
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
                                      selectedUrl: 'https://www.foxsports.com/',
                                      title: 'Fox Sport',
                                    )));
                      },
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.transparent,
                              backgroundImage:
                                  AssetImage('assets/logos/foxs.png'),
                            ),
                            SizedBox(height: 6),
                            Text(
                              'Fox Sport',
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
                                      selectedUrl: 'https://www.skysports.com/',
                                      title: 'Sky Sports',
                                    )));
                      },
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.transparent,
                              backgroundImage:
                                  AssetImage('assets/logos/sky.jpg'),
                            ),
                            SizedBox(height: 6),
                            Text(
                              'Sky Sports',
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
                                      selectedUrl: 'https://www.thesun.co.uk/sport/football/',
                                      title: 'The Sun',
                                    )));
                      },
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.transparent,
                              backgroundImage:
                                  AssetImage('assets/logos/sun.png'),
                            ),
                            SizedBox(height: 6),
                            Text(
                              'The Sun',
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
                                      selectedUrl: 'https://www.bbc.com/sport/football',
                                      title: 'BBC Sport',
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
                              'BBC Sport',
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
                                      selectedUrl: 'https://talksport.com/football/',
                                      title: 'Talk Sport',
                                    )));
                      },
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.transparent,
                              backgroundImage:
                                  AssetImage('assets/logos/talk.png'),
                            ),
                            SizedBox(height: 6),
                            Text(
                              'Talk Sport',
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
                                      selectedUrl: 'https://www.euronews.com/news/sport',
                                      title: 'Euro Sport',
                                    )));
                      },
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.transparent,
                              backgroundImage:
                                  AssetImage('assets/logos/euro.png'),
                            ),
                            SizedBox(height: 6),
                            Text(
                              'Euro Sports',
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
