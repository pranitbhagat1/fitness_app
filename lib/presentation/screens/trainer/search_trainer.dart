import 'package:fitness/common/widgets/glassmorphism.dart';
import 'package:fitness/gen/assets.gen.dart';
import 'package:fitness/presentation/routes/routes.dart';
import 'package:fitness/presentation/theme/app_colors.dart';
import 'package:fitness/presentation/theme/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchTrainer extends StatelessWidget {
  const SearchTrainer({super.key});

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
          title: Text("Search Trainer"),
        ),
        body: _searchTrainerBody(context),
      ),
    );
  }

  Widget _searchTrainerBody(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          TextFormField(
            style: GoogleFonts.poppins(fontSize: 12),
            cursorColor: Colors.black,
            decoration: InputDecoration(
              hintText: "Search",
              suffixIconColor: Colors.black,
              enabled: true,
              filled: true,
              fillColor: Colors.transparent,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(color: Colors.black),
              ),
              focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15), borderSide: BorderSide(color: Colors.black)),
            ),
          ),
          Gap(15),
          GestureDetector(
            onTap: () {
              GoRouter.of(context).push(Routes.trainerDetails);
            },
            child: GlassMorphism(
                blur: 7,
                opacity: 0.35,
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 55,
                            width: 55,
                            child: Center(
                              child: Image.asset(Assets.images.avatar.path),
                            ),
                          ),
                          Gap(15),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Name: ",
                                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    "Darshan Meher",
                                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w900),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Age: ",
                                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    "32 yrs",
                                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w900),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Experience: ",
                                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    "7 yrs",
                                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w900),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: GestureDetector(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(shape: BoxShape.circle),
                            child: Icon(Icons.add),
                          ),
                        ),
                      )
                    ],
                  ),
                )),
          ),
          Gap(10),
          GestureDetector(
            onTap: () {},
            child: GlassMorphism(
                blur: 7,
                opacity: 0.35,
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 55,
                            width: 55,
                            child: Center(
                              child: Image.asset(Assets.images.avatar.path),
                            ),
                          ),
                          Gap(15),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Name: ",
                                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    "Darshan Meher",
                                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w900),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Age: ",
                                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    "32 yrs",
                                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w900),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Experience: ",
                                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    "7 yrs",
                                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w900),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: GestureDetector(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(shape: BoxShape.circle),
                            child: Icon(Icons.add),
                          ),
                        ),
                      )
                    ],
                  ),
                )),
          ),
          Gap(10)
        ],
      ),
    );
  }
}
