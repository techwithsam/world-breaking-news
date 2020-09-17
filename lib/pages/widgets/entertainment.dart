import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../web.dart';

class EntertainmentNews extends StatefulWidget {
  EntertainmentNews({Key key}) : super(key: key);

  @override
  _EntertainmentNewsState createState() => _EntertainmentNewsState();
}

class _EntertainmentNewsState extends State<EntertainmentNews> {
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
                                          'https://www.pulse.ng/entertainment',
                                      title: 'Pulse ng',
                                    )));
                      },
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.transparent,
                              backgroundImage:
                                  AssetImage('assets/logos/pulse.jpg'),
                            ),
                            SizedBox(height: 6),
                            Text(
                              'Pulse ng',
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
                                          'https://www.legit.ng/entertainment/',
                                      title: 'Legit ng',
                                    )));
                      },
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.transparent,
                              backgroundImage:
                                  AssetImage('assets/logos/legit.png'),
                            ),
                            SizedBox(height: 6),
                            Text(
                              'Legit ng',
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
                                          'https://dailypost.ng/entertainment/',
                                      title: 'Dialy Post',
                                    )));
                      },
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.transparent,
                              backgroundImage:
                                  AssetImage('assets/logos/post.jpg'),
                            ),
                            SizedBox(height: 6),
                            Text(
                              'Dialy Post',
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
                                          'https://www.msn.com/en-us/entertainment',
                                      title: 'MSN',
                                    )));
                      },
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.transparent,
                              backgroundImage:
                                  AssetImage('assets/logos/msn.jpg'),
                            ),
                            SizedBox(height: 6),
                            Text(
                              'MSN',
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
                                          'https://www.eonline.com/news',
                                      title: 'eonline',
                                    )));
                      },
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.transparent,
                              backgroundImage: AssetImage('assets/logos/e.jpg'),
                            ),
                            SizedBox(height: 6),
                            Text(
                              'eonline',
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
                                      selectedUrl:
                                          'https://thenationonlineng.net/category/entertainment/',
                                      title: 'The Nation',
                                    )));
                      },
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.transparent,
                              backgroundImage:
                                  AssetImage('assets/logos/nation.png'),
                            ),
                            SizedBox(height: 6),
                            Text(
                              'The Nation',
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
                                          'https://www.nairaland.com/entertainment',
                                      title: 'Nairaland',
                                    )));
                      },
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.transparent,
                              backgroundImage:
                                  AssetImage('assets/logos/naira.png'),
                            ),
                            SizedBox(height: 6),
                            Text(
                              'Nairaland',
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
                                          'https://globalnews.ca/entertainment/',
                                      title: 'Global News',
                                    )));
                      },
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.transparent,
                              backgroundImage:
                                  AssetImage('assets/logos/glo.jpg'),
                            ),
                            SizedBox(height: 6),
                            Text(
                              'GLobal News',
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
                              selectedUrl: 'https://news.sky.com/entertainment',
                              title: 'Sky News',
                            ),
                          ),
                        );
                      },
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.transparent,
                              backgroundImage:
                                  AssetImage('assets/logos/sky.png'),
                            ),
                            SizedBox(height: 6),
                            Text(
                              'Sky News',
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
                                      selectedUrl:
                                          'https://www.dailymail.co.uk/usshowbiz/index.html',
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
                                  AssetImage('assets/logos/mail.jpg'),
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
                  Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WebView(
                                      selectedUrl:
                                          'https://news.google.com/topics/CAAqJggKIiBDQkFTRWdvSUwyMHZNREpxYW5RU0FtVnVHZ0pPUnlnQVAB?hl',
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
                              'Google News',
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
                                      selectedUrl: 'https://news.1app.online/',
                                      title: '1app News',
                                    )));
                      },
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.transparent,
                              backgroundImage:
                                  AssetImage('assets/logos/1app.png'),
                            ),
                            SizedBox(height: 6),
                            Text(
                              '1app News',
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
