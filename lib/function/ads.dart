import 'dart:math';

import 'package:firebase_admob/firebase_admob.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:world_breaking_news/function/appSettings.dart';

class WatchPromotions extends StatefulWidget {
  final MyAppSettings myAppSettings;
  WatchPromotions({@required this.myAppSettings});

  @override
  _WatchPromotionsState createState() => _WatchPromotionsState(
        myAppSettings: myAppSettings,
      );
}

class _WatchPromotionsState extends State<WatchPromotions> {
  final MyAppSettings myAppSettings;
  _WatchPromotionsState({@required this.myAppSettings});
  var _scaffoldKey = GlobalKey<ScaffoldState>();
  BannerAd myBanner;
  InterstitialAd myInterstitial;

  BannerAd buildBannerAd() {
    return BannerAd(
        adUnitId: BannerAd.testAdUnitId,
        size: AdSize.banner,
        listener: (MobileAdEvent event) {
          if (event == MobileAdEvent.loaded) {
            myBanner..show();
          }
        });
  }

  BannerAd buildLargeBannerAd() {
    return BannerAd(
        adUnitId: BannerAd.testAdUnitId,
        size: AdSize.largeBanner,
        listener: (MobileAdEvent event) {
          if (event == MobileAdEvent.loaded) {
            myBanner
              ..show(
                  anchorType: AnchorType.top,
                  anchorOffset: MediaQuery.of(context).size.height * 0.15);
          }
        });
  }

  InterstitialAd buildInterstitialAd() {
    return InterstitialAd(
      adUnitId: InterstitialAd.testAdUnitId,
      listener: (MobileAdEvent event) {
        if (event == MobileAdEvent.failedToLoad) {
          myInterstitial..load();
        } else if (event == MobileAdEvent.closed) {
          myInterstitial = buildInterstitialAd()..load();
        }
        print(event);
      },
    );
  }

  void showInterstitialAd() {
    myInterstitial..show();
  }

  void showRandomInterstitialAd() {
    Random r = new Random();
    bool value = r.nextBool();

    if (value == true) {
      myInterstitial..show();
    }
  }

  @override
  void initState() {
    myInterstitial = buildInterstitialAd()..load();
    FirebaseAdMob.instance.initialize(appId: FirebaseAdMob.testAppId);
    myBanner = buildBannerAd()..load();
    super.initState();
  }

  @override
  void dispose() {
    myInterstitial.dispose();
    myBanner.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        elevation: 0,
        title: Text('Google Promotions'),
        centerTitle: true,
      ),
      body: Center(
        child: MaterialButton(
          onPressed: () {
            showInterstitialAd();
            showRandomInterstitialAd();
          },
          child: Text('Load more promotion', style: GoogleFonts.aBeeZee(color: Colors.white)),
          color: Colors.orange,
        ),
      ),
    );
  }
}
