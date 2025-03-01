import 'dart:ui';

import 'package:fitness/presentation/routes/routes.dart';
import 'package:fitness/presentation/theme/app_colors.dart';
import 'package:fitness/presentation/theme/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
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
                  Gap(50),
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
                            "SIGNUP",
                            style: AppTextStyles.textTheme.headlineMedium!.copyWith(
                              letterSpacing: 0.5,
                              color: Colors.white
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
                          "Gym Name",
                          style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 12, fontWeight: FontWeight.w600
                          ),
                        ),
                        TextFormField(
                          style: GoogleFonts.poppins(
                              fontSize: 12
                          ),
                          cursorColor: Colors.black,
                          decoration: InputDecoration(
                              enabled: true,
                              filled: true,
                              fillColor: Colors.transparent,
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
                          "Owner Name",
                          style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 12, fontWeight: FontWeight.w600
                          ),
                        ),
                        TextFormField(
                          style: GoogleFonts.poppins(
                              fontSize: 12
                          ),
                          cursorColor: Colors.black,
                          decoration: InputDecoration(
                            suffixIconColor: Colors.black,
                            enabled: true,
                            filled: true,
                            fillColor: Colors.transparent,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black)
                            ),

                          ),
                        ),

                        Gap(10),

                        Text(
                          "Establishment",
                          style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 12, fontWeight: FontWeight.w600
                          ),
                        ),
                        TextFormField(
                          style: GoogleFonts.poppins(
                              fontSize: 12
                          ),
                          readOnly: true,
                          cursorColor: Colors.black,
                          obscureText: true,
                          obscuringCharacter: "*",
                          decoration: InputDecoration(
                            suffixIcon: Icon(Icons.calendar_month_rounded, color: Colors.black, size: 15,),
                            suffixIconColor: Colors.black,
                            enabled: true,
                            filled: true,
                            fillColor: Colors.transparent,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black)
                            ),

                          ),
                        ),

                        Gap(10),

                        Text(
                          "Address",
                          style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 12, fontWeight: FontWeight.w600
                          ),
                        ),
                        TextFormField(
                          style: GoogleFonts.poppins(
                              fontSize: 12
                          ),
                          maxLines: 3,
                          cursorColor: Colors.black,
                          decoration: InputDecoration(
                            enabled: true,
                            filled: true,
                            fillColor: Colors.transparent,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black)
                            ),

                          ),
                        ),

                        Gap(10),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "State",
                                      style: GoogleFonts.poppins(
                                          color: Colors.black,
                                          fontSize: 12, fontWeight: FontWeight.w600
                                      ),
                                    ),
                                    TextFormField(
                                      style: GoogleFonts.poppins(
                                          fontSize: 12
                                      ),
                                      cursorColor: Colors.black,
                                      readOnly: true,
                                      decoration: InputDecoration(
                                        suffixIcon: Icon(Icons.keyboard_arrow_down_sharp, color: Colors.black, size: 15,),
                                        suffixIconColor: Colors.black,
                                        enabled: true,
                                        filled: true,
                                        fillColor: Colors.transparent,
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(color: Colors.black),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color: Colors.black)
                                        ),

                                      ),
                                    ),
                                  ],
                                )
                            ),
                            Gap(10),
                            Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "City",
                                      style: GoogleFonts.poppins(
                                          color: Colors.black,
                                          fontSize: 12, fontWeight: FontWeight.w600
                                      ),
                                    ),
                                    TextFormField(
                                      style: GoogleFonts.poppins(
                                          fontSize: 12
                                      ),
                                      cursorColor: Colors.black,
                                      decoration: InputDecoration(
                                        enabled: true,
                                        filled: true,
                                        fillColor: Colors.transparent,
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(color: Colors.black),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color: Colors.black)
                                        ),

                                      ),
                                    ),
                                  ],
                                )
                            )
                          ],
                        ),

                        Gap(10),

                        Text(
                          "Email",
                          style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 12, fontWeight: FontWeight.w600
                          ),
                        ),
                        TextFormField(
                          style: GoogleFonts.poppins(
                              fontSize: 12
                          ),
                          keyboardType: TextInputType.emailAddress,
                          cursorColor: Colors.black,
                          decoration: InputDecoration(
                            enabled: true,
                            filled: true,
                            fillColor: Colors.transparent,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black)
                            ),

                          ),
                        ),

                        Gap(10),

                        Text(
                          "Contact",
                          style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 12, fontWeight: FontWeight.w600
                          ),
                        ),
                        TextFormField(
                          style: GoogleFonts.poppins(
                              fontSize: 12
                          ),
                          keyboardType: TextInputType.phone,
                          cursorColor: Colors.black,
                          decoration: InputDecoration(
                            enabled: true,
                            filled: true,
                            fillColor: Colors.transparent,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black)
                            ),

                          ),
                        ),

                        Gap(25),

                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.symmetric(horizontal: 25),
                          child: MaterialButton(
                            onPressed: () {},
                            padding: EdgeInsets.symmetric(vertical: 5),
                            color: AppColors.bluePrimaryShades[800],
                            child: Text("SIGNUP", style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                letterSpacing: 0.7
                            ),),
                          ),
                        ),

                        Gap(10),

                        Center(
                          child: InkWell(
                              onTap: () {
                                GoRouter.of(context).pop();
                              },
                              child: Text(
                                "GO BACK",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    decoration: TextDecoration.underline
                                ),
                              )
                          ),
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
