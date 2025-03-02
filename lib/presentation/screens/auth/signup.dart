import 'dart:ui';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:fitness/constants/meta_strings.dart';
import 'package:fitness/data/data_sources/remote/add_fitness_trainer.dart';
import 'package:fitness/data/data_sources/remote/add_gym.dart';
import 'package:fitness/presentation/routes/routes.dart';
import 'package:fitness/presentation/theme/app_colors.dart';
import 'package:fitness/presentation/theme/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:toastification/toastification.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  /// gym owner
  late TextEditingController registrationTypeController = TextEditingController();
  late TextEditingController gymNameController = TextEditingController();
  late TextEditingController gymTypeController = TextEditingController();
  late TextEditingController ownerNameController = TextEditingController();
  late TextEditingController passwordController = TextEditingController();
  late TextEditingController establishmentController = TextEditingController();
  late TextEditingController addressController = TextEditingController();
  late TextEditingController stateController = TextEditingController();
  late TextEditingController cityController = TextEditingController();
  late TextEditingController pincodeController = TextEditingController();
  late TextEditingController emailController = TextEditingController();
  late TextEditingController contactController = TextEditingController();
  late TextEditingController openTimeController = TextEditingController();
  late TextEditingController closeTimeController = TextEditingController();

  /// fitness trainer
  late TextEditingController fNameController = TextEditingController();
  late TextEditingController lNameController = TextEditingController();
  late TextEditingController ftEmailController = TextEditingController();
  late TextEditingController ftPasswordController = TextEditingController();
  late TextEditingController ftPhoneController = TextEditingController();
  late TextEditingController ftGenderController = TextEditingController();
  late TextEditingController ftDOBController = TextEditingController();
  late TextEditingController ftAddressController = TextEditingController();
  late TextEditingController ftStateController = TextEditingController();
  late TextEditingController ftCityController = TextEditingController();
  late TextEditingController ftPincodeController = TextEditingController();
  late TextEditingController ftExperienceController = TextEditingController();

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
      width: MediaQuery.of(context).size.width,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        // bottomSheet: showBottom(context),
        body: SingleChildScrollView(
            padding: EdgeInsets.only(bottom: 30),
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
                            style: AppTextStyles.textTheme.headlineMedium!.copyWith(letterSpacing: 0.5, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Gap(20),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Text(
                      "Registering as",
                      style: GoogleFonts.poppins(color: Colors.black, fontSize: 12, fontWeight: FontWeight.w600),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: TextFormField(
                      controller: registrationTypeController,
                      style: GoogleFonts.poppins(fontSize: 12),
                      cursorColor: Colors.black,
                      readOnly: true,
                      onTap: () => showUserTypeList(context),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.transparent,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                        suffixIcon: Icon(
                          Icons.keyboard_arrow_down_sharp,
                          color: Colors.black,
                          size: 15,
                        ),
                        suffixIconColor: Colors.black,
                      ),
                    ),
                  ),
                  Gap(10),
                  selectedTypeId == "1"
                      ? Container(
                          width: double.infinity,
                          padding: EdgeInsets.symmetric(horizontal: 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              /// gym name
                              Text(
                                "Gym Name",
                                style: GoogleFonts.poppins(color: Colors.black, fontSize: 12, fontWeight: FontWeight.w600),
                              ),
                              TextFormField(
                                style: GoogleFonts.poppins(fontSize: 12),
                                cursorColor: Colors.black,
                                controller: gymNameController,
                                decoration: InputDecoration(
                                    enabled: true,
                                    filled: true,
                                    fillColor: Colors.transparent,
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.black),
                                    ),
                                    focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black))),
                              ),
                              Gap(10),

                              /// owner name
                              Text(
                                "Owner Name",
                                style: GoogleFonts.poppins(color: Colors.black, fontSize: 12, fontWeight: FontWeight.w600),
                              ),
                              TextFormField(
                                style: GoogleFonts.poppins(fontSize: 12),
                                cursorColor: Colors.black,
                                controller: ownerNameController,
                                decoration: InputDecoration(
                                  suffixIconColor: Colors.black,
                                  enabled: true,
                                  filled: true,
                                  fillColor: Colors.transparent,
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black),
                                  ),
                                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                                ),
                              ),
                              Gap(10),

                              /// gym type
                              Text(
                                "Gym Type",
                                style: GoogleFonts.poppins(color: Colors.black, fontSize: 12, fontWeight: FontWeight.w600),
                              ),
                              TextFormField(
                                style: GoogleFonts.poppins(fontSize: 12),
                                controller: gymTypeController,
                                readOnly: true,
                                cursorColor: Colors.black,
                                onTap: () => showGymType(context),
                                decoration: InputDecoration(
                                  suffixIcon: Icon(
                                    Icons.keyboard_arrow_down_sharp,
                                    color: Colors.black,
                                    size: 15,
                                  ),
                                  suffixIconColor: Colors.black,
                                  enabled: true,
                                  filled: true,
                                  fillColor: Colors.transparent,
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black),
                                  ),
                                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                                ),
                              ),
                              Gap(10),
                              Text(
                                "Address",
                                style: GoogleFonts.poppins(color: Colors.black, fontSize: 12, fontWeight: FontWeight.w600),
                              ),
                              TextFormField(
                                style: GoogleFonts.poppins(fontSize: 12),
                                controller: addressController,
                                maxLines: 3,
                                cursorColor: Colors.black,
                                decoration: InputDecoration(
                                  enabled: true,
                                  filled: true,
                                  fillColor: Colors.transparent,
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black),
                                  ),
                                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
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
                                        style: GoogleFonts.poppins(color: Colors.black, fontSize: 12, fontWeight: FontWeight.w600),
                                      ),
                                      TextFormField(
                                        style: GoogleFonts.poppins(fontSize: 12),
                                        controller: stateController,
                                        cursorColor: Colors.black,
                                        readOnly: true,
                                        onTap: () => showState("owner",context),
                                        decoration: InputDecoration(
                                          suffixIcon: Icon(
                                            Icons.keyboard_arrow_down_sharp,
                                            color: Colors.black,
                                            size: 15,
                                          ),
                                          suffixIconColor: Colors.black,
                                          enabled: true,
                                          filled: true,
                                          fillColor: Colors.transparent,
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color: Colors.black),
                                          ),
                                          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                                        ),
                                      ),
                                    ],
                                  )),
                                  Gap(10),
                                  Expanded(
                                      child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "City",
                                        style: GoogleFonts.poppins(color: Colors.black, fontSize: 12, fontWeight: FontWeight.w600),
                                      ),
                                      TextFormField(
                                        style: GoogleFonts.poppins(fontSize: 12),
                                        controller: cityController,
                                        cursorColor: Colors.black,
                                        decoration: InputDecoration(
                                          enabled: true,
                                          filled: true,
                                          fillColor: Colors.transparent,
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color: Colors.black),
                                          ),
                                          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                                        ),
                                      ),
                                    ],
                                  ))
                                ],
                              ),
                              Gap(10),

                              Text(
                                "Pincode",
                                style: GoogleFonts.poppins(color: Colors.black, fontSize: 12, fontWeight: FontWeight.w600),
                              ),
                              TextFormField(
                                style: GoogleFonts.poppins(fontSize: 12),
                                keyboardType: TextInputType.number,
                                controller: pincodeController,
                                cursorColor: Colors.black,
                                decoration: InputDecoration(
                                  enabled: true,
                                  filled: true,
                                  fillColor: Colors.transparent,
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black),
                                  ),
                                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                                ),
                              ),
                              Gap(10),

                              Text(
                                "Email",
                                style: GoogleFonts.poppins(color: Colors.black, fontSize: 12, fontWeight: FontWeight.w600),
                              ),
                              TextFormField(
                                style: GoogleFonts.poppins(fontSize: 12),
                                keyboardType: TextInputType.emailAddress,
                                controller: emailController,
                                cursorColor: Colors.black,
                                decoration: InputDecoration(
                                  enabled: true,
                                  filled: true,
                                  fillColor: Colors.transparent,
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black),
                                  ),
                                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                                ),
                              ),
                              Gap(10),
                              Text(
                                "Contact",
                                style: GoogleFonts.poppins(color: Colors.black, fontSize: 12, fontWeight: FontWeight.w600),
                              ),
                              TextFormField(
                                style: GoogleFonts.poppins(fontSize: 12),
                                keyboardType: TextInputType.phone,
                                controller: contactController,
                                cursorColor: Colors.black,
                                decoration: InputDecoration(
                                  enabled: true,
                                  filled: true,
                                  fillColor: Colors.transparent,
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black),
                                  ),
                                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
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
                                            "Open Time",
                                            style: GoogleFonts.poppins(color: Colors.black, fontSize: 12, fontWeight: FontWeight.w600),
                                          ),
                                          TextFormField(
                                            style: GoogleFonts.poppins(fontSize: 12),
                                            controller: openTimeController,
                                            cursorColor: Colors.black,
                                            readOnly: true,
                                            onTap: () => showTime("open",context),
                                            decoration: InputDecoration(
                                              suffixIcon: Icon(
                                                Icons.timer_sharp,
                                                color: Colors.black,
                                                size: 15,
                                              ),
                                              suffixIconColor: Colors.black,
                                              enabled: true,
                                              filled: true,
                                              fillColor: Colors.transparent,
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(color: Colors.black),
                                              ),
                                              focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                                            ),
                                          ),
                                        ],
                                      )),
                                  Gap(10),
                                  Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Close Time",
                                            style: GoogleFonts.poppins(color: Colors.black, fontSize: 12, fontWeight: FontWeight.w600),
                                          ),
                                          TextFormField(
                                            style: GoogleFonts.poppins(fontSize: 12),
                                            controller: closeTimeController,
                                            cursorColor: Colors.black,
                                            readOnly: true,
                                            onTap: () => showTime("close",context),
                                            decoration: InputDecoration(
                                              suffixIcon: Icon(
                                                Icons.timer_sharp,
                                                color: Colors.black,
                                                size: 15,
                                              ),
                                              suffixIconColor: Colors.black,
                                              enabled: true,
                                              filled: true,
                                              fillColor: Colors.transparent,
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(color: Colors.black),
                                              ),
                                              focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                                            ),
                                          ),
                                        ],
                                      ))
                                ],
                              ),
                              Gap(10),


                              Text(
                                "Password",
                                style: GoogleFonts.poppins(color: Colors.black, fontSize: 12, fontWeight: FontWeight.w600),
                              ),
                              TextFormField(
                                style: GoogleFonts.poppins(fontSize: 12),
                                keyboardType: TextInputType.text,
                                controller: passwordController,
                                obscureText: true,
                                obscuringCharacter: "*",
                                cursorColor: Colors.black,
                                decoration: InputDecoration(
                                  // suffixIcon: Icon(
                                  //   Icons.remove_red_eye_outlined,
                                  //   color: Colors.black,
                                  //   size: 15,
                                  // ),
                                  // suffixIconColor: Colors.black,
                                  enabled: true,
                                  filled: true,
                                  fillColor: Colors.transparent,
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black),
                                  ),
                                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                                ),
                              ),
                              Gap(10),

                              Gap(15),
                              Container(
                                width: double.infinity,
                                padding: EdgeInsets.symmetric(horizontal: 25),
                                child: MaterialButton(
                                  onPressed: () {
                                    FocusScope.of(context).unfocus();
                                    signUpOwner(context);
                                  },
                                  padding: EdgeInsets.symmetric(vertical: 5),
                                  color: AppColors.bluePrimaryShades[800],
                                  child: Text(
                                    "SIGNUP",
                                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16, letterSpacing: 0.7),
                                  ),
                                ),
                              ),
                              Center(
                                child: InkWell(
                                    onTap: () {
                                      GoRouter.of(context).pop();
                                    },
                                    child: Text(
                                      "GO BACK",
                                      style: TextStyle(fontWeight: FontWeight.w700, decoration: TextDecoration.underline),
                                    )),
                              ),
                              // Gap(15),
                            ],
                          ),
                        )
                      : selectedTypeId == "2"
                          ? Container(
                              width: double.infinity,
                              padding: EdgeInsets.symmetric(horizontal: 30),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  /// first name
                                  Text(
                                    "First Name",
                                    style: GoogleFonts.poppins(color: Colors.black, fontSize: 12, fontWeight: FontWeight.w600),
                                  ),
                                  TextFormField(
                                    controller: fNameController,
                                    style: GoogleFonts.poppins(fontSize: 12),
                                    cursorColor: Colors.black,
                                    decoration: InputDecoration(
                                        enabled: true,
                                        filled: true,
                                        fillColor: Colors.transparent,
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(color: Colors.black),
                                        ),
                                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black))),
                                  ),
                                  Gap(10),

                                  /// lastname
                                  Text(
                                    "Last Name",
                                    style: GoogleFonts.poppins(color: Colors.black, fontSize: 12, fontWeight: FontWeight.w600),
                                  ),
                                  TextFormField(
                                    style: GoogleFonts.poppins(fontSize: 12),
                                    controller: lNameController,
                                    cursorColor: Colors.black,
                                    decoration: InputDecoration(
                                      suffixIconColor: Colors.black,
                                      enabled: true,
                                      filled: true,
                                      fillColor: Colors.transparent,
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.black),
                                      ),
                                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                                    ),
                                  ),
                                  Gap(10),

                                  /// gender
                                  Text(
                                    "Gender",
                                    style: GoogleFonts.poppins(color: Colors.black, fontSize: 12, fontWeight: FontWeight.w600),
                                  ),
                                  TextFormField(
                                    controller: ftGenderController,
                                    style: GoogleFonts.poppins(fontSize: 12),
                                    readOnly: true,
                                    onTap: () => showGenderList(context),
                                    decoration: InputDecoration(
                                      suffixIcon: Icon(
                                        Icons.keyboard_arrow_down_sharp,
                                        color: Colors.black,
                                        size: 15,
                                      ),
                                      suffixIconColor: Colors.black,
                                      enabled: true,
                                      filled: true,
                                      fillColor: Colors.transparent,
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.black),
                                      ),
                                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                                    ),
                                  ),
                                  Gap(10),

                                  /// dob
                                  Text(
                                    "DOB",
                                    style: GoogleFonts.poppins(color: Colors.black, fontSize: 12, fontWeight: FontWeight.w600),
                                  ),
                                  TextFormField(
                                    controller: ftDOBController,
                                    style: GoogleFonts.poppins(fontSize: 12),
                                    cursorColor: Colors.black,
                                    readOnly: true,
                                    onTap: () => showDate(context),
                                    decoration: InputDecoration(
                                      suffixIcon: Icon(
                                        Icons.calendar_month_rounded,
                                        color: Colors.black,
                                        size: 15,
                                      ),
                                      suffixIconColor: Colors.black,
                                      enabled: true,
                                      filled: true,
                                      fillColor: Colors.transparent,
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.black),
                                      ),
                                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                                    ),
                                  ),
                                  Gap(10),

                                  /// address
                                  Text(
                                    "Address",
                                    style: GoogleFonts.poppins(color: Colors.black, fontSize: 12, fontWeight: FontWeight.w600),
                                  ),
                                  TextFormField(
                                    style: GoogleFonts.poppins(fontSize: 12),
                                    maxLines: 3,
                                    controller: ftAddressController,
                                    cursorColor: Colors.black,
                                    decoration: InputDecoration(
                                      enabled: true,
                                      filled: true,
                                      fillColor: Colors.transparent,
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.black),
                                      ),
                                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                                    ),
                                  ),
                                  Gap(10),

                                  /// state and city
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
                                            style: GoogleFonts.poppins(color: Colors.black, fontSize: 12, fontWeight: FontWeight.w600),
                                          ),
                                          TextFormField(
                                            style: GoogleFonts.poppins(fontSize: 12),
                                            cursorColor: Colors.black,
                                            readOnly: true,
                                            controller: ftStateController,
                                            onTap: () => showState("trainer",context),
                                            decoration: InputDecoration(
                                              suffixIcon: Icon(
                                                Icons.keyboard_arrow_down_sharp,
                                                color: Colors.black,
                                                size: 15,
                                              ),
                                              suffixIconColor: Colors.black,
                                              enabled: true,
                                              filled: true,
                                              fillColor: Colors.transparent,
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(color: Colors.black),
                                              ),
                                              focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                                            ),
                                          ),
                                        ],
                                      )),
                                      Gap(10),
                                      Expanded(
                                          child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "City",
                                            style: GoogleFonts.poppins(color: Colors.black, fontSize: 12, fontWeight: FontWeight.w600),
                                          ),
                                          TextFormField(
                                            style: GoogleFonts.poppins(fontSize: 12),
                                            cursorColor: Colors.black,
                                            controller: ftCityController,
                                            decoration: InputDecoration(
                                              enabled: true,
                                              filled: true,
                                              fillColor: Colors.transparent,
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(color: Colors.black),
                                              ),
                                              focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                                            ),
                                          ),
                                        ],
                                      ))
                                    ],
                                  ),
                                  Gap(10),

                                  Text(
                                    "Pincode",
                                    style: GoogleFonts.poppins(color: Colors.black, fontSize: 12, fontWeight: FontWeight.w600),
                                  ),
                                  TextFormField(
                                    style: GoogleFonts.poppins(fontSize: 12),
                                    keyboardType: TextInputType.number,
                                    controller: ftPincodeController,
                                    cursorColor: Colors.black,
                                    decoration: InputDecoration(
                                      enabled: true,
                                      filled: true,
                                      fillColor: Colors.transparent,
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.black),
                                      ),
                                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                                    ),
                                  ),
                                  Gap(10),

                                  /// pincode
                                  Text(
                                    "Email",
                                    style: GoogleFonts.poppins(color: Colors.black, fontSize: 12, fontWeight: FontWeight.w600),
                                  ),
                                  TextFormField(
                                    controller: ftEmailController,
                                    style: GoogleFonts.poppins(fontSize: 12),
                                    keyboardType: TextInputType.emailAddress,
                                    cursorColor: Colors.black,
                                    decoration: InputDecoration(
                                      enabled: true,
                                      filled: true,
                                      fillColor: Colors.transparent,
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.black),
                                      ),
                                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                                    ),
                                  ),
                                  Gap(10),

                                  Text(
                                    "Contact",
                                    style: GoogleFonts.poppins(color: Colors.black, fontSize: 12, fontWeight: FontWeight.w600),
                                  ),
                                  TextFormField(
                                    controller: ftPhoneController,
                                    style: GoogleFonts.poppins(fontSize: 12),
                                    keyboardType: TextInputType.phone,
                                    cursorColor: Colors.black,
                                    decoration: InputDecoration(
                                      enabled: true,
                                      filled: true,
                                      fillColor: Colors.transparent,
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.black),
                                      ),
                                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                                    ),
                                  ),
                                  Gap(10),

                                  /// experience
                                  Text(
                                    "Experience",
                                    style: GoogleFonts.poppins(color: Colors.black, fontSize: 12, fontWeight: FontWeight.w600),
                                  ),
                                  TextFormField(
                                    controller: ftExperienceController,
                                    style: GoogleFonts.poppins(fontSize: 12),
                                    keyboardType: TextInputType.phone,
                                    cursorColor: Colors.black,
                                    decoration: InputDecoration(
                                      enabled: true,
                                      filled: true,
                                      fillColor: Colors.transparent,
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.black),
                                      ),
                                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                                    ),
                                  ),
                                  Gap(10),

                                  Text(
                                    "Password",
                                    style: GoogleFonts.poppins(color: Colors.black, fontSize: 12, fontWeight: FontWeight.w600),
                                  ),
                                  TextFormField(
                                    style: GoogleFonts.poppins(fontSize: 12),
                                    keyboardType: TextInputType.text,
                                    controller: ftPasswordController,
                                    obscureText: true,
                                    obscuringCharacter: "*",
                                    cursorColor: Colors.black,
                                    decoration: InputDecoration(
                                      // suffixIcon: Icon(
                                      //   Icons.remove_red_eye_outlined,
                                      //   color: Colors.black,
                                      //   size: 15,
                                      // ),
                                      // suffixIconColor: Colors.black,
                                      enabled: true,
                                      filled: true,
                                      fillColor: Colors.transparent,
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.black),
                                      ),
                                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                                    ),
                                  ),
                                  Gap(15),

                                  Container(
                                    width: double.infinity,
                                    padding: EdgeInsets.symmetric(horizontal: 25),
                                    child: MaterialButton(
                                      onPressed: () {
                                        signUpTrainer(context);
                                      },
                                      padding: EdgeInsets.symmetric(vertical: 5),
                                      color: AppColors.bluePrimaryShades[800],
                                      child: Text(
                                        "SIGNUP",
                                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16, letterSpacing: 0.7),
                                      ),
                                    ),
                                  ),
                                  Center(
                                    child: InkWell(
                                        onTap: () {
                                          GoRouter.of(context).pop();
                                        },
                                        child: Text(
                                          "GO BACK",
                                          style: TextStyle(fontWeight: FontWeight.w700, decoration: TextDecoration.underline),
                                        )),
                                  ),
                                  // Gap(15),
                                ],
                              ),
                            )
                          : SizedBox.shrink()
                ],
              ),
            )),
      ),
    );
  }

  String selectedType = "";
  String selectedTypeId = "";

  showUserTypeList(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      constraints: BoxConstraints(
        minHeight: MediaQuery.of(context).size.height * 0.15,
        maxHeight: MediaQuery.of(context).size.height * 0.85,
      ),
      builder: (context) => Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              topLeft: Radius.circular(20),
            )),
        child: ListView.separated(
            shrinkWrap: true,
            itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  setState(() {
                    selectedType = registrationTypeController.text = userType[index];
                    selectedTypeId = selectedType.toLowerCase().contains("gym")
                        ? "1"
                        : selectedType.toLowerCase().contains("trainer")
                            ? "2"
                            : "3";
                    Navigator.pop(context);
                  });
                },
                child: Container(width: double.infinity, padding: EdgeInsets.symmetric(vertical: 5), child: Text(userType[index]))),
            separatorBuilder: (context, index) => const Divider(),
            itemCount: userType.length),
      ),
    );
  }

  String selectedGender = "";

  showGenderList(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (context) => SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                topLeft: Radius.circular(20),
              )),
          child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedGender = ftGenderController.text = gender[index];
                      Navigator.pop(context);
                    });
                  },
                  child: Container(width: double.infinity, padding: EdgeInsets.symmetric(vertical: 5), child: Text(gender[index]))),
              separatorBuilder: (context, index) => const Divider(),
              itemCount: gender.length),
        ),
      ),
    );
  }

  void signUpOwner(BuildContext context) async {
    showDialog(
        context: context,
        builder: (context) => Center(child: CircularProgressIndicator(),),
        barrierDismissible: false);

    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult.contains(ConnectivityResult.mobile) || connectivityResult.contains(ConnectivityResult.wifi)) {
      var responseJson = await callGymSignup(emailController.text, passwordController.text, contactController.text, ownerNameController.text, gymNameController.text, gymTypeController.text, addressController.text, stateController.text,
          cityController.text, pincodeController.text, openTimeController.text, closeTimeController.text, "1");
      var code = responseJson["code"];
      debugPrint(responseJson["message"]);
      if (code == 200) {
        GoRouter.of(context).pop();
        GoRouter.of(context).pop();
        toastification.show(
            context: context,
            title: Text(responseJson["message"]),
            closeOnClick: false,
            type: ToastificationType.error,
            autoCloseDuration: Duration(seconds: 3),
            showIcon: true,
            closeButton: ToastCloseButton(showType: CloseButtonShowType.none),
            icon: Icon(
              Icons.check_circle,
              color: Colors.green,
            ),
            alignment: Alignment.bottomCenter);
      } else {
        Navigator.pop(context);
        toastification.show(
            context: context,
            title: Text(responseJson["message"]),
            type: ToastificationType.error,
            closeButton: ToastCloseButton(showType: CloseButtonShowType.none),
            autoCloseDuration: Duration(seconds: 3),
            showIcon: true,
            icon: Icon(
              Icons.error,
              color: Colors.red,
            ),
            alignment: Alignment.bottomCenter);
      }
    } else {
      toastification.show(
        context: context,
        title: Text("No internet connection"),
        type: ToastificationType.error,
        closeButton: ToastCloseButton(showType: CloseButtonShowType.none),
        autoCloseDuration: Duration(seconds: 3),
        showIcon: true,
        icon: const Icon(Icons.wifi_off, color: Colors.red),
      );
    }
  }

  void signUpTrainer(BuildContext context) async {
    showDialog(
        context: context,
        builder: (context) => Center(child: CircularProgressIndicator(),),
        barrierDismissible: false);

    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult.contains(ConnectivityResult.mobile) || connectivityResult.contains(ConnectivityResult.wifi)) {
      var responseJson = await callTrainerSignup(
          ftEmailController.text,
          ftPasswordController.text,
          ftPhoneController.text,
          fNameController.text,
          lNameController.text,
          ftGenderController.text,
          ftDOBController.text,
          ftAddressController.text,
          ftStateController.text,
          ftCityController.text,
          ftPincodeController.text,
          ftExperienceController.text,);
      var code = responseJson["code"];
      if (code == 200) {
        GoRouter.of(context).pop();
        GoRouter.of(context).pop();
        toastification.show(
            context: context,
            title: Text(responseJson["message"]),
            type: ToastificationType.error,
            autoCloseDuration: Duration(seconds: 3),
            showIcon: true,
            closeButton: ToastCloseButton(showType: CloseButtonShowType.none),
            icon: Icon(
              Icons.check_circle,
              color: Colors.green,
            ),
            alignment: Alignment.bottomCenter);
      } else {
        Navigator.pop(context);
        toastification.show(
            context: context,
            title: Text(responseJson["message"]),
            type: ToastificationType.error,
            closeButton: ToastCloseButton(showType: CloseButtonShowType.none),
            autoCloseDuration: Duration(seconds: 3),
            showIcon: true,
            icon: Icon(
              Icons.error,
              color: Colors.red,
            ),
            alignment: Alignment.bottomCenter);
      }
    } else {
      toastification.show(
        context: context,
        title: Text("No internet connection"),
        type: ToastificationType.error,
        closeButton: ToastCloseButton(showType: CloseButtonShowType.none),
        autoCloseDuration: Duration(seconds: 3),
        showIcon: true,
        icon: const Icon(Icons.wifi_off, color: Colors.red),
      );
    }
  }

  String selectedState = "",selectedFTState="";
  showState(String type, BuildContext context) {
    return showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      backgroundColor: AppColors.primaryBlackBackground,
      isScrollControlled: true,
      constraints: BoxConstraints(
        maxHeight: MediaQuery.of(context).size.height * 0.85,
      ),
      builder: (context) => SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                topLeft: Radius.circular(20),
              )),
          child: ListView.separated(
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    setState(() {
                      if(type == "owner"){
                        selectedState = stateController.text = indianState[index];
                      } else {
                        selectedFTState = ftStateController.text = indianState[index];
                      }
                      Navigator.pop(context);
                    });
                  },
                  child: Container(width: double.infinity, padding: EdgeInsets.symmetric(vertical: 5), child: Text(indianState[index]))),
              separatorBuilder: (context, index) => const Divider(),
              itemCount: indianState.length),
        ),
      ),
    );
  }

  String selectedGymType = "";
  showGymType(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (context) => SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                topLeft: Radius.circular(20),
              )),
          child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedGymType = gymTypeController.text = gymType[index];
                      Navigator.pop(context);
                    });
                  },
                  child: Container(width: double.infinity, padding: EdgeInsets.symmetric(vertical: 5), child: Text(gymType[index]))),
              separatorBuilder: (context, index) => const Divider(),
              itemCount: gymType.length),
        ),
      ),
    );
  }

  String selectedTime="",selectedFtTime="";
  String _formattedTime = "";
  String formatTimeofDay(TimeOfDay time){
    final now = DateTime.now();
    final dt = DateTime(now.year,now.month,now.day,time.hour,time.minute);
    final format = DateFormat.jm();
    return format.format(dt);
  }


  showTime(String type, BuildContext context) {
    showTimePicker(
        context: context,
        initialTime: TimeOfDay.now(),
      initialEntryMode: TimePickerEntryMode.dialOnly,
      builder: (context, child) {
        final Widget mediaQueryWrapper = MediaQuery(
            data: MediaQuery.of(context).copyWith(
              alwaysUse24HourFormat: false
            ),
            child: child!
        );

        if(Localizations.localeOf(context).languageCode == 'es') {
          return Localizations.override(
            context: context,
            locale: const Locale('es','US'),
            child: mediaQueryWrapper,
          );
        }
        return mediaQueryWrapper;
      },
    ).then((value) {
      if(value != null) {
        setState(() {
          _formattedTime = formatTimeofDay(value);
          if(type == "open"){
            openTimeController.text = _formattedTime;
          } else {
            closeTimeController.text = _formattedTime;
          }
        });
      }
    },);
  }

  Future<void> showDate(BuildContext context)  async {
    DateTime? picked = await showDatePicker(
        context: context,
        firstDate: DateTime(1950),
        lastDate: DateTime.now(),
    );

    if(picked != null){
      String formattedDate = "${picked.day}/${picked.month}/${picked.year}"; // Format to dd/MM/yyyy
      ftDOBController.text = formattedDate;
      setState(() {});
    }
  }
}
