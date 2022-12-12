import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:google_fonts/google_fonts.dart';

import 'package:flutter_ui_challenges/core/data/models/route_model.dart'
    show DesignDeviceType;

import 'package:flutter_ui_challenges/core/presentation/widgets/custom_route_transitions.dart';

import '../widgets/background_icons_widget.dart';
import '../widgets/splash_shape_clippers.dart';
import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));

    //Navigation to Home Page    
    Future.delayed(const Duration(milliseconds: 1500), () {
      CustomRouteTransitions(
        context: context,
        child: const HomeScreen(),
      ).navigateTransitionOnLayout(DesignDeviceType.mobile, true);
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            ClipPath(
                clipper: SplashShapeClipperThin(),
                child: Container(
                  width: 400,
                  height: 690,
                  color: const Color(0xfffbd5d4),
                )),
            ClipPath(
                clipper: SplashShapeClipperMain(),
                child: Container(
                    padding: const EdgeInsets.only(left: 50, bottom: 150),
                    alignment: Alignment.centerLeft,
                    width: 400,
                    height: 700,
                    color: const Color(0xffd10b00),
                    child: Text(
                      'Food',
                      style: GoogleFonts.gluten(
                        fontSize: 80,
                        color: Colors.white,
                      ),
                    ))),
            ClipPath(
              clipper: SplashShapeClipperThin(),
              child: SizedBox(
                  width: 360,
                  height: 700,
                  child: BackgroundIcons(
                    iconColor: Colors.white.withOpacity(0.15),
                    minIconsPerColumn: 4,
                    numberIconsPerColumn: 3,
                    height: 700,
                    width: 360,
                  )),
            )
          ],
        ));
  }
}
