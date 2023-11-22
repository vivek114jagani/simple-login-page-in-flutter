import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PageData {
  final String title;
  final String subtitle;
  final Widget image;

  PageData({
    required this.title,
    required this.subtitle,
    required this.image,
  });
}

List<PageData> pageData = [
  PageData(
    title: "Explore the\nworld easily",
    subtitle: "To your desire",
    image: SvgPicture.asset("Assets/Images/page_1.svg"),
  ),
  PageData(
    title: "Reach the\nunknown spot",
    subtitle: "To your destination",
    image: SvgPicture.asset("Assets/Images/page_2.svg"),
  ),
  PageData(
    title: "Make connects\nwith explora",
    subtitle: "To your dream trip",
    image: SvgPicture.asset("Assets/Images/page_3.svg"),
  ),
];
