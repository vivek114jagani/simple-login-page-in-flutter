// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:login_page_app/Screen/PageViewData/page_data.dart';
import 'package:login_page_app/Screen/log_in_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageViewScreen extends StatefulWidget {
  const PageViewScreen({super.key});

  @override
  State<PageViewScreen> createState() => _PageViewScreenState();
}

class _PageViewScreenState extends State<PageViewScreen> {
  final PageController _pageController = PageController();
  int _pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Expanded(
              child: PageViewBuilderWidget(),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SmoothPageIndicator(
                    controller: _pageController,
                    count: pageData.length,
                    effect: const WormEffect(
                      activeDotColor: Color(0xFF2F2E41),
                      dotColor: Color(0xFF6C63FF),
                      dotHeight: 6,
                      dotWidth: 16,
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: Colors.black,
                      shape: const CircleBorder(),
                      minimumSize: const Size(50, 50),
                    ),
                    onPressed: () {
                      setState(() {
                        if (_pageIndex == 2) {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const LogInPage(),
                              ),
                              (route) => false);
                        } else {
                          _pageController.nextPage(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeInOut);
                        }
                      });
                    },
                    child: const Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  PageView PageViewBuilderWidget() {
    return PageView.builder(
      controller: _pageController,
      itemCount: pageData.length,
      itemBuilder: (context, index) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            pageData[index].image,
            const SizedBox(height: 50),
            Text(
              pageData[index].title,
              style: const TextStyle(
                fontSize: 36,
                fontFamily: "Montserrat",
                color: Colors.black,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              pageData[index].subtitle,
              style: const TextStyle(
                fontSize: 25,
                fontFamily: "Montserrat",
                color: Colors.black,
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        );
      },
      onPageChanged: (value) {
        _pageIndex = value;
        setState(() {});
      },
    );
  }
}
