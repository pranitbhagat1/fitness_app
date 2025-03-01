import 'package:fitness/common/widgets/glassmorphism.dart';
import 'package:fitness/presentation/routes/routes.dart';
import 'package:fitness/presentation/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class OwnerJobListing extends StatefulWidget {
  const OwnerJobListing({super.key});

  @override
  State<OwnerJobListing> createState() => _OwnerJobListingState();
}

class _OwnerJobListingState extends State<OwnerJobListing> {
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
          title: Text("Jobs Posted"),
        ),
        body: _jobListingBody(context),
      ),
    );
  }

  Widget _jobListingBody(BuildContext context) {
    return ListView(
    padding: EdgeInsets.all(15),
      shrinkWrap: true,
      children: [
        GestureDetector(
          onTap: (){
            GoRouter.of(context).push(Routes.applicationListing);
          },
          child: GlassMorphism(
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
                                "Job ID",
                                style: GoogleFonts.poppins(color: Colors.black, fontSize: 11, fontWeight: FontWeight.w400),
                              ),
                              Text(
                                "GGJB_00058234",
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
                                "Applications Received",
                                style: GoogleFonts.poppins(color: Colors.black, fontSize: 11, fontWeight: FontWeight.w400),
                              ),
                              Text(
                                "25",
                                style: GoogleFonts.poppins(color: Colors.black, fontSize: 13, fontWeight: FontWeight.w600,
                                decoration: TextDecoration.underline),
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
                              "Job ID",
                              style: GoogleFonts.poppins(color: Colors.black, fontSize: 11, fontWeight: FontWeight.w400),
                            ),
                            Text(
                              "GGJB_00058234",
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
                              "Applications Received",
                              style: GoogleFonts.poppins(color: Colors.black, fontSize: 11, fontWeight: FontWeight.w400),
                            ),
                            Text(
                              "25",
                              style: GoogleFonts.poppins(color: Colors.black, fontSize: 13, fontWeight: FontWeight.w600,
                              decoration: TextDecoration.underline),
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
                              "Job ID",
                              style: GoogleFonts.poppins(color: Colors.black, fontSize: 11, fontWeight: FontWeight.w400),
                            ),
                            Text(
                              "GGJB_00058234",
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
                              "Applications Received",
                              style: GoogleFonts.poppins(color: Colors.black, fontSize: 11, fontWeight: FontWeight.w400),
                            ),
                            Text(
                              "25",
                              style: GoogleFonts.poppins(color: Colors.black, fontSize: 13, fontWeight: FontWeight.w600,
                              decoration: TextDecoration.underline),
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
                              "Job ID",
                              style: GoogleFonts.poppins(color: Colors.black, fontSize: 11, fontWeight: FontWeight.w400),
                            ),
                            Text(
                              "GGJB_00058234",
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
                              "Applications Received",
                              style: GoogleFonts.poppins(color: Colors.black, fontSize: 11, fontWeight: FontWeight.w400),
                            ),
                            Text(
                              "25",
                              style: GoogleFonts.poppins(color: Colors.black, fontSize: 13, fontWeight: FontWeight.w600,
                              decoration: TextDecoration.underline),
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
                              "Job ID",
                              style: GoogleFonts.poppins(color: Colors.black, fontSize: 11, fontWeight: FontWeight.w400),
                            ),
                            Text(
                              "GGJB_00058234",
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
                              "Applications Received",
                              style: GoogleFonts.poppins(color: Colors.black, fontSize: 11, fontWeight: FontWeight.w400),
                            ),
                            Text(
                              "25",
                              style: GoogleFonts.poppins(color: Colors.black, fontSize: 13, fontWeight: FontWeight.w600,
                              decoration: TextDecoration.underline),
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
                              "Job ID",
                              style: GoogleFonts.poppins(color: Colors.black, fontSize: 11, fontWeight: FontWeight.w400),
                            ),
                            Text(
                              "GGJB_000581234",
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
                              "Applications Received",
                              style: GoogleFonts.poppins(color: Colors.black, fontSize: 11, fontWeight: FontWeight.w400),
                            ),
                            Text(
                              "20",
                              style: GoogleFonts.poppins(color: Colors.black, fontSize: 13, fontWeight: FontWeight.w600,
                              decoration: TextDecoration.underline),
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
                              "Job ID",
                              style: GoogleFonts.poppins(color: Colors.black, fontSize: 11, fontWeight: FontWeight.w400),
                            ),
                            Text(
                              "GGJB_00058234",
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
                              "Applications Received",
                              style: GoogleFonts.poppins(color: Colors.black, fontSize: 11, fontWeight: FontWeight.w400),
                            ),
                            Text(
                              "15",
                              style: GoogleFonts.poppins(color: Colors.black, fontSize: 13, fontWeight: FontWeight.w600,
                              decoration: TextDecoration.underline),
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
