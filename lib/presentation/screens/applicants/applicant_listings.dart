import 'package:fitness/common/widgets/glassmorphism.dart';
import 'package:fitness/presentation/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class ApplicantListings extends StatefulWidget {
  const ApplicantListings({super.key});

  @override
  State<ApplicantListings> createState() => _ApplicantListingsState();
}

class _ApplicantListingsState extends State<ApplicantListings> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [AppColors.bluePrimaryShades[300]!, AppColors.primaryWhite],
            stops: [0, 0.4],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          )),
      width: MediaQuery.of(context).size.width,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          centerTitle: true,
          title: Text("Applicants : GGJB_00058234"),
        ),
        body: _applicantsBody(context),
      ),
    );
  }

  Widget _applicantsBody(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(15),
      shrinkWrap: true,
      children: [
        GlassMorphism(
            blur: 10,
            opacity: 0.5,
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Applicant Name",
                              style: GoogleFonts.poppins(color: Colors.black, fontSize: 11, fontWeight: FontWeight.w400),
                            ),
                            Text(
                              "Darshan Meher",
                              style: GoogleFonts.poppins(color: Colors.black, fontSize: 13, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Trainer Type",
                              style: GoogleFonts.poppins(color: Colors.black, fontSize: 11, fontWeight: FontWeight.w400),
                            ),
                            Text(
                              "Personal Trainer",
                              style: GoogleFonts.poppins(color: Colors.black, fontSize: 13, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Gap(10),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Gender",
                              style: GoogleFonts.poppins(color: Colors.black, fontSize: 11, fontWeight: FontWeight.w400),
                            ),
                            Text(
                              "Male",
                              style: GoogleFonts.poppins(color: Colors.black, fontSize: 13, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "No. of Experience",
                              style: GoogleFonts.poppins(color: Colors.black, fontSize: 11, fontWeight: FontWeight.w400),
                            ),
                            Text(
                              "5",
                              style: GoogleFonts.poppins(color: Colors.black, fontSize: 13, fontWeight: FontWeight.w600,),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
        ),
        Gap(10),
        GlassMorphism(
            blur: 10,
            opacity: 0.5,
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Applicant Name",
                              style: GoogleFonts.poppins(color: Colors.black, fontSize: 11, fontWeight: FontWeight.w400),
                            ),
                            Text(
                              "Archit Desai",
                              style: GoogleFonts.poppins(color: Colors.black, fontSize: 13, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Trainer Type",
                              style: GoogleFonts.poppins(color: Colors.black, fontSize: 11, fontWeight: FontWeight.w400),
                            ),
                            Text(
                              "General Trainer",
                              style: GoogleFonts.poppins(color: Colors.black, fontSize: 13, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Gap(10),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Gender",
                              style: GoogleFonts.poppins(color: Colors.black, fontSize: 11, fontWeight: FontWeight.w400),
                            ),
                            Text(
                              "Male",
                              style: GoogleFonts.poppins(color: Colors.black, fontSize: 13, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "No. of Experience",
                              style: GoogleFonts.poppins(color: Colors.black, fontSize: 11, fontWeight: FontWeight.w400),
                            ),
                            Text(
                              "9",
                              style: GoogleFonts.poppins(color: Colors.black, fontSize: 13, fontWeight: FontWeight.w600,),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
        ),
        Gap(10),
        GlassMorphism(
            blur: 10,
            opacity: 0.5,
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Applicant Name",
                              style: GoogleFonts.poppins(color: Colors.black, fontSize: 11, fontWeight: FontWeight.w400),
                            ),
                            Text(
                              "Nimrat Kaur",
                              style: GoogleFonts.poppins(color: Colors.black, fontSize: 13, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Trainer Type",
                              style: GoogleFonts.poppins(color: Colors.black, fontSize: 11, fontWeight: FontWeight.w400),
                            ),
                            Text(
                              "General Trainer",
                              style: GoogleFonts.poppins(color: Colors.black, fontSize: 13, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Gap(10),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Gender",
                              style: GoogleFonts.poppins(color: Colors.black, fontSize: 11, fontWeight: FontWeight.w400),
                            ),
                            Text(
                              "Female",
                              style: GoogleFonts.poppins(color: Colors.black, fontSize: 13, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "No. of Experience",
                              style: GoogleFonts.poppins(color: Colors.black, fontSize: 11, fontWeight: FontWeight.w400),
                            ),
                            Text(
                              "3",
                              style: GoogleFonts.poppins(color: Colors.black, fontSize: 13, fontWeight: FontWeight.w600,),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
        ),
        Gap(10),
      ],
    );
  }
}
