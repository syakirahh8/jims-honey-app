import 'package:flutter/material.dart';
import 'package:jims_honey/data/onboarding_data.dart';
// import 'package:jims_honey/data/products_data.dart';
// import 'package:jims_honey/models/onboarding_model.dart';
import 'package:jims_honey/utils/const.dart';
import 'package:jims_honey/views/onboarding/components/boarding_content.dart';

class Body extends StatefulWidget {

  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: PageView.builder(
                controller: _pageController,
                onPageChanged: (value) {
                  // maksud dari kode ini adalah untuk memberi tahu
                  // setiap kali ada perubahan di satu objek/halaman
                  // yang di trigger oleh adanya interaksi oleh pengguna
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: onBoardingData.length,
                itemBuilder: (context, index) => OnboardingContent(
                  title: onBoardingData[index].title,
                  text: onBoardingData[index].text,
                  image: onBoardingData[index].image,
                ),
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  onBoardingData.length,
                  (index) => _dotsIndicator(index: index),                  
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30, right: 30, bottom: 50),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primaryColor
                  ),
                  onPressed: () {
                    if (currentPage == onBoardingData.length - 1) {
                      Navigator.pushNamed(context, '/login');
                    } else {
                      _pageController.animateToPage(
                        currentPage + 1,
                        duration: animationDuration,
                        curve: Curves.ease                      
                      );
                    }
                  },
                  child: Text(
                    currentPage == onBoardingData.length - 1 ? "Get Started" : "Next",
                    style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  AnimatedContainer _dotsIndicator({required int index}) {
    return AnimatedContainer(
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: currentPage == index ? primaryColor : secondaryColor
      ),
      width: currentPage == index ? 20 : 7,
      height: 6,
      duration: animationDuration,
    );
  }
}