import 'dart:ui';

import 'package:fitness/gen/assets.gen.dart';
import 'package:fitness/presentation/routes/routes.dart';
import 'package:fitness/presentation/theme/app_colors.dart';
import 'package:fitness/presentation/theme/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // image: DecorationImage(image: AssetImage(Assets.images.pexelsPixabay260352.path)),
          gradient: LinearGradient(
            colors: [AppColors.bluePrimaryShades[300]!, AppColors.primaryWhite],
            stops: [0, 0.4],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          )),
      width: MediaQuery
          .of(context)
          .size
          .width,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
            child: SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Gap(75),
                  Lottie.asset(Assets.json.girlRunningOnTreadmill),

                  Gap(20),
                  ClipRRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.2), // Semi-transparent white
                          borderRadius: BorderRadius.circular(10), // Rounded corners
                          border: Border.all(
                            color: Colors.white.withOpacity(0.3), // Subtle white border
                            width: 1.0,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                          child: Text(
                            // "FIT CONNECT",
                            "LOGIN",
                            style: AppTextStyles.textTheme.headlineMedium!.copyWith(
                              letterSpacing: 0.5,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                  Gap(20),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Email",
                          style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 15, fontWeight: FontWeight.w600
                          ),
                        ),
                        TextFormField(
                          style: GoogleFonts.poppins(
                              fontSize: 12
                          ),
                          cursorColor: Colors.black,
                          decoration: InputDecoration(
                              enabled: true,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black)
                              )
                          ),
                        ),

                        Gap(10),

                        Text(
                          "Password",
                          style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 15, fontWeight: FontWeight.w600
                          ),
                        ),
                        TextFormField(
                          style: GoogleFonts.poppins(
                              fontSize: 12
                          ),
                          cursorColor: Colors.black,
                          obscureText: true,
                          obscuringCharacter: "*",
                          decoration: InputDecoration(
                            suffixIcon: Icon(Icons.remove_red_eye_outlined, color: Colors.black, size: 15,),
                            suffixIconColor: Colors.black,
                            enabled: true,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black)
                            ),

                          ),
                        ),

                        Gap(5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "Forgot password?",
                              style: TextStyle(
                                  fontSize: 12,
                                  decoration: TextDecoration.underline
                              ),
                            )
                          ],
                        ),

                        Gap(25),

                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.symmetric(horizontal: 25),
                          child: MaterialButton(
                            onPressed: () {
                              GoRouter.of(context).pushReplacement(Routes.homeOwner);
                            },
                            padding: EdgeInsets.symmetric(vertical: 5),
                            color: AppColors.bluePrimaryShades[800],
                            child: Text("LOGIN", style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                letterSpacing: 0.7
                            ),),
                          ),
                        ),

                        Gap(5),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Don't have account?"),
                            Gap(3),
                            InkWell(
                                onTap: () {
                                  GoRouter.of(context).push(Routes.signup);
                                },
                                child: Text(
                                  "SIGNUP",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                    decoration: TextDecoration.underline
                                  ),
                                )
                            ),
                          ],
                        ),

                      ],
                    ),
                  )
                ],
              ),
            )
        ),
      ),
    );
  }
}
