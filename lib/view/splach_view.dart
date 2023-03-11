import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:home/logo_devs.dart';
import 'package:home/view/control_view.dart';
import 'package:home/view/login/login_view.dart';
import '../constants.dart';
import '../onBording/OnBordingView.dart';

class SplachView extends StatefulWidget {
  const  SplachView({super.key});

  @override
  State<SplachView> createState() => _SplachViewState();
}

class _SplachViewState extends State<SplachView>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation? fadingAnimation;
  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));
    fadingAnimation =
        Tween<double>(begin: .2, end: 1).animate(animationController!);

    animationController?.repeat(reverse: true);
    goToNextView();
  }

  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: LogoSdev(
        nameDevloper: "Taleb Mohammed Said",
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: h * 0.2,
            ),
            Container(
              height: w * 0.3,
              width: w * 0.3,
              child: Image.asset("assets/loka_logo3.jpg"),
            ),
            SizedBox(
              height: h * 0.15,
            ),
            AnimatedBuilder(
              animation: fadingAnimation!,
              builder: (context, __) => Opacity(
                opacity: fadingAnimation!.value,
                child: Column(
                  children: [
                    Text(
                      "LOKA",
                      style: TextStyle(
                          color: oneColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 35),
                    ),
                    SizedBox(
                      height: h * 0.005,
                    ),
                    Text(
                      "MAKE YOUR LIFE EASY",
                      style: TextStyle(
                        color: threeColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void goToNextView() {
    Future.delayed(Duration(seconds: 6), () {
      Get.to(() => ControllView(),
          transition: Transition.rightToLeft,
          duration: Duration(milliseconds: 500));
    });
  }
}
