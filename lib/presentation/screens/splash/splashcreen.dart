import 'dart:async';

import 'package:fitness/data/data_sources/local/local_data.dart';
import 'package:fitness/gen/assets.gen.dart';
import 'package:fitness/presentation/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Splashcreen extends StatefulWidget {
  const Splashcreen({super.key});

  @override
  State<Splashcreen> createState() => _SplashcreenState();
}

class _SplashcreenState extends State<Splashcreen> {
  late SharedPreferences prefs;

  bool isFirstLaunch = true;

  @override
  void initState() {
    super.initState();
    startTimeout(3000);
  }

  startTimeout([int? milliseconds]) {
    var duration = Duration(seconds: 3);
    return Timer(duration, handleTimeout);
  }

  void handleTimeout() async {
    Future<String> id = PreferenceManager().getUserId();
    id.then(
      (value) {
        if (value == "") {
          GoRouter.of(context).go(Routes.login);
        } else {
          GoRouter.of(context).go(Routes.homeOwner);
        }
      },
    );
  }

  void _startNavigationTimer() {
    Future.delayed(Duration(milliseconds: 3000), () {
      if (mounted) {
        // context.read<AuthCubit>().getToken();
        GoRouter.of(context).go(Routes.login);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(Assets.json.manLiftingBarbell),
            Gap(20),
            Text(
              "FIT CONNECT",
              style: GoogleFonts.poppins(fontSize: 35, fontWeight: FontWeight.w700),
            )
          ],
        ),
      ),
    );
  }
}
