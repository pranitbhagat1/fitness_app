import 'dart:ui';

import 'package:fitness/common/widgets/glassmorphism.dart';
import 'package:fitness/presentation/routes/routes.dart';
import 'package:fitness/presentation/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class HomepageGymOwner extends StatelessWidget {
  const HomepageGymOwner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          // image: DecorationImage(image: AssetImage(Assets.images.pexelsPixabay260352.path)),
          gradient: LinearGradient(
        colors: [AppColors.bluePrimaryShades[300]!, AppColors.primaryWhite,AppColors.bluePrimaryShades[300]!],
        stops: [0, 0.4,1],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      )),
      width: MediaQuery.of(context).size.width,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "FITCONNECT",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: Colors.black, letterSpacing: 0.7),
          ),
          // elevation: 5,
        ),
        body: _ownerHomeBody(context),
        floatingActionButton: _floatingButton(context),
      ),
    );
  }

  Widget _floatingButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10,bottom: 10),
      child: FloatingActionButton(
          onPressed: (){
            GoRouter.of(context).push(Routes.postVacancy);
          },
        child: Icon(Icons.add),
      ),
    );
  }

  Widget _ownerHomeBody(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Gap(10),
          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: (){
                    GoRouter.of(context).push(Routes.jobListings);
                  },
                  child: GlassMorphism(
                      blur: 7,
                      opacity: 0.35,
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(vertical: 25),
                  
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15)
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Jobs Posted",
                              style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontSize: 12, fontWeight: FontWeight.w600
                              ),
                            ),
                            Text(
                              "555",
                              style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontSize: 18, fontWeight: FontWeight.w900
                              ),
                            ),
                          ],
                        ),
                      )
                  ),
                ),
              ),

              Gap(10),

              Expanded(
                child: GlassMorphism(
                    blur: 7,
                    opacity: 0.35,
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(vertical: 25),

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15)
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Applications Received",
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 12, fontWeight: FontWeight.w600
                            ),
                          ),
                          Text(
                            "10,555",
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 18, fontWeight: FontWeight.w900
                            ),
                          ),
                        ],
                      ),
                    )
                ),
              ),
            ],
          ),

          Gap(20),
          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: (){
                    GoRouter.of(context).push(Routes.trainerSearch);
                  },
                  child: GlassMorphism(
                      blur: 7,
                      opacity: 0.35,
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(vertical: 25),

                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Search Trainer",
                              style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontSize: 12, fontWeight: FontWeight.w600
                              ),
                            ),
                            Icon(Icons.search,size: 20,weight: 10 ,),
                          ],
                        ),
                      )
                  ),
                ),
              ),

              Gap(10),

              Expanded(
                child: Container(),
              ),
            ],
          ),
          
          

        ],
      ),
    );
  }
}
