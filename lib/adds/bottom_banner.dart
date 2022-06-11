import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

Widget bottomAdmob(String idads) {
  final BannerAd myBanner = BannerAd(
      size: AdSize.banner,
      adUnitId: idads,
      listener: BannerAdListener(),
      request: AdRequest());
  myBanner.load();

  final AdWidget adWidget = AdWidget(ad: myBanner);
  return Container(
    color: Color(0xff071e3d),
    height: 80,
    child: adWidget,
  );
}
