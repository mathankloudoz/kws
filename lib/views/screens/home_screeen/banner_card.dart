import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class BannerCard extends StatelessWidget {
  const BannerCard({super.key});
  final String bannerImage = 'assets/banner/post_images.jpg';
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return FadeInUp(
      duration: Duration(seconds: 2),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          height: size.height * 0.16,
          width: double.infinity,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  bannerImage,
                  height: size.height * 0.15,
                  width: double.infinity,
                  scale: 1.0,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
