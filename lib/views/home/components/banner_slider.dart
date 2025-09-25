import 'package:flutter/material.dart';
import 'package:jims_honey/utils/const.dart';

class BannerSlider extends StatelessWidget {
  const BannerSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: 200),
      child: PageView(
        children: [
          _BannerImage(asset: 'assets/images/banner-jh2.jpg'),
          _BannerImage(asset: 'assets/images/banner-jh1.jpg'),
          _BannerImage(asset: 'assets/images/banner-jh3.jpg'),
        ],
      ),
    );
  }
}

class _BannerImage extends StatelessWidget {
  final String asset;

  const _BannerImage({required this.asset});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(defaultPadding),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16), // atur sesuai selera
        child: Image.asset(
          asset,
          fit: BoxFit.cover,
          width: double.infinity,
        ),
      ),
    );
  }
}
