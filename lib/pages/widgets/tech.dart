import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:world_breaking_news/pages/web.dart';

class TechnologyNews extends StatefulWidget {
  TechnologyNews({Key key}) : super(key: key);

  @override
  _TechnologyNewsState createState() => _TechnologyNewsState();
}

class _TechnologyNewsState extends State<TechnologyNews> {
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
                                          'https://news.google.com/topics/CAAqJggKIiBDQkFTRWdvSUwyMHZNRGRqTVhZU0FtVnVHZ0pPUnlnQVAB?hl',
                                      title: 'Google Tech',
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
                              'Google Tech',
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
                                      selectedUrl: 'https://techpadi.africa/',
                                      title: 'TechPadi',
                                    )));
                      },
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.transparent,
                              backgroundImage:
                                  AssetImage('assets/logos/padi.png'),
                            ),
                            SizedBox(height: 6),
                            Text(
                              'TechPadi',
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
                                          'https://acctgen1.hashnode.dev/',
                                      title: 'acctgen1 Blog',
                                    )));
                      },
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.transparent,
                              backgroundImage: AssetImage('assets/user.png'),
                            ),
                            SizedBox(height: 6),
                            Text(
                              'acctgen1 Blog',
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
                                          'https://medium.com/@acctgen1',
                                      title: 'Medium',
                                    )));
                      },
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.transparent,
                              backgroundImage: AssetImage('assets/medium.png'),
                            ),
                            SizedBox(height: 6),
                            Text(
                              'Medium',
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
                                      selectedUrl: 'https://stackoverflow.com/',
                                      title: 'stack overflow',
                                    )));
                      },
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.transparent,
                              backgroundImage: AssetImage('assets/stack.png'),
                            ),
                            SizedBox(height: 6),
                            Text(
                              'stack overflow',
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
                                          'https://www.bbc.com/news/technology',
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
                                      selectedUrl: 'https://www.cnet.com/news/',
                                      title: 'C|net',
                                    )));
                      },
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.transparent,
                              backgroundImage: AssetImage('assets/logos/c.png'),
                            ),
                            SizedBox(height: 6),
                            Text(
                              'c|net',
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
                                          'https://www.theverge.com/tech',
                                      title: 'The verge',
                                    )));
                      },
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.transparent,
                              backgroundImage:
                                  AssetImage('assets/logos/the.jpg'),
                            ),
                            SizedBox(height: 6),
                            Text(
                              'The verge',
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
                                  'https://www.wired.co.uk/topic/technology',
                              title: 'Wired',
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
                                  AssetImage('assets/logos/wired.png'),
                            ),
                            SizedBox(height: 6),
                            Text(
                              'Wired',
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
                                        'https://www.popularmechanics.com/technology/',
                                    title: 'Popular Mechanics',
                                  )),
                        );
                      },
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.transparent,
                              backgroundImage:
                                  AssetImage('assets/logos/popu.png'),
                            ),
                            SizedBox(height: 6),
                            Text(
                              'Popular Mechanics',
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
                                        'https://www.technewsworld.com/?',
                                    title: 'Tech News',
                                  )),
                        );
                      },
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.transparent,
                              backgroundImage:
                                  AssetImage('assets/logos/tech.png'),
                            ),
                            SizedBox(height: 6),
                            Text(
                              'Tech News',
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
                                          'https://edition.cnn.com/business/tech',
                                      title: 'CNN Tech',
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
                              'CNN Tech',
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
