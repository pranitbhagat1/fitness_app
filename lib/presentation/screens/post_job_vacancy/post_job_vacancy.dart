import 'package:fitness/presentation/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class PostJobVacancy extends StatefulWidget {
  const PostJobVacancy({super.key});

  @override
  State<PostJobVacancy> createState() => _PostJobVacancyState();
}

class _PostJobVacancyState extends State<PostJobVacancy> {
  String? _selectedValue, _selectedGender;
  List<String> trainerTypeList = ['Personal Trainer', 'General Trainer'];
  List<String> genderList = ['Male', 'Female'];
  RangeValues _salaryRange = RangeValues(5000, 500000); // Default range

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
            title: Text("Post Vacancy"),
            centerTitle: true,
          ),
          body: _postJobBody(context),
        ));
  }

  Widget _postJobBody(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(25, 0, 25, 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Gap(20),
          Text(
            "Job Title",
            style: GoogleFonts.poppins(color: Colors.black, fontSize: 11, fontWeight: FontWeight.w600),
          ),
          TextFormField(
            style: GoogleFonts.poppins(fontSize: 12),
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
          Gap(15),
          Text(
            "Trainer Type",
            style: GoogleFonts.poppins(color: Colors.black, fontSize: 11, fontWeight: FontWeight.w600),
          ),
          DropdownButtonFormField(
            items: trainerTypeList.map(
              (String value) {
                return DropdownMenuItem(
                    value: value,
                    child: Text(
                      value,
                      style: GoogleFonts.poppins(color: Colors.black, fontSize: 12),
                    ));
              },
            ).toList(),
            alignment: Alignment.bottomLeft,
            style: GoogleFonts.poppins(fontSize: 12),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 10),
              filled: true,
              fillColor: Colors.transparent,
              isDense: true,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
              ),
              focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
            ),
            onChanged: (value) => _selectedValue = value,
          ),
          Gap(15),
          Text(
            "Gender",
            style: GoogleFonts.poppins(color: Colors.black, fontSize: 11, fontWeight: FontWeight.w600),
          ),
          DropdownButtonFormField(
            items: genderList.map(
              (String value) {
                return DropdownMenuItem(
                    value: value,
                    child: Text(
                      value,
                      style: GoogleFonts.poppins(color: Colors.black, fontSize: 12),
                    ));
              },
            ).toList(),
            alignment: Alignment.bottomLeft,
            style: GoogleFonts.poppins(fontSize: 12),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 10),
              filled: true,
              fillColor: Colors.transparent,
              isDense: true,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
              ),
              focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
            ),
            onChanged: (value) => _selectedValue = value,
          ),
          Gap(15),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "No. of vacancies",
                    style: GoogleFonts.poppins(color: Colors.black, fontSize: 11, fontWeight: FontWeight.w600),
                  ),
                  TextFormField(
                    style: GoogleFonts.poppins(fontSize: 12),
                    cursorColor: Colors.black,
                    keyboardType: TextInputType.number,
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
              )),
              Gap(10),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Experience required",
                    style: GoogleFonts.poppins(color: Colors.black, fontSize: 11, fontWeight: FontWeight.w600),
                  ),
                  TextFormField(
                    style: GoogleFonts.poppins(fontSize: 12),
                    keyboardType: TextInputType.number,
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
          Gap(15),
          Text(
            "Location",
            style: GoogleFonts.poppins(color: Colors.black, fontSize: 11, fontWeight: FontWeight.w600),
          ),
          TextFormField(
            style: GoogleFonts.poppins(fontSize: 12),
            cursorColor: Colors.black,
            readOnly: true,
            decoration: InputDecoration(
              enabled: true,
              filled: true,
              fillColor: Colors.transparent,
              suffixIcon: Icon(Icons.arrow_drop_down),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
              ),
              focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
            ),
          ),
          Gap(15),
          Text(
            "Qualifications",
            style: GoogleFonts.poppins(color: Colors.black, fontSize: 11, fontWeight: FontWeight.w600),
          ),
          TextFormField(
            style: GoogleFonts.poppins(fontSize: 12),
            cursorColor: Colors.black,
            readOnly: true,
            decoration: InputDecoration(
              enabled: true,
              filled: true,
              fillColor: Colors.transparent,
              suffixIcon: Icon(Icons.arrow_drop_down),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                ),
              ),
              focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
            ),
          ),
          Gap(15),
          Text(
            "Responsibilities",
            style: GoogleFonts.poppins(color: Colors.black, fontSize: 11, fontWeight: FontWeight.w600),
          ),
          TextFormField(
            style: GoogleFonts.poppins(fontSize: 12),
            cursorColor: Colors.black,
            maxLines: 2,
            decoration: InputDecoration(
              enabled: true,
              filled: true,
              fillColor: Colors.transparent,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                ),
              ),
              focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
            ),
          ),
          Gap(15),
          Text(
            "Salary Range",
            style: GoogleFonts.poppins(color: Colors.black, fontSize: 11, fontWeight: FontWeight.w600),
          ),
          RangeSlider(
            values: _salaryRange,
            min: 5000,
            max: 500000,
            divisions: 50,
            // Allows increments of 5000
            labels: RangeLabels(
              "\u{20b9}${_salaryRange.start.toInt()}",
              "\u{20b9}${_salaryRange.end.toInt()}",
            ),
            activeColor: Colors.blue,
            inactiveColor: Colors.grey[500],
            onChanged: (RangeValues values) {
              setState(() {
                _salaryRange = values;
              });
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "From",
                    style: GoogleFonts.poppins(color: Colors.black, fontSize: 11, fontWeight: FontWeight.w600),
                  ),
                  TextFormField(
                    style: GoogleFonts.poppins(fontSize: 12),
                    cursorColor: Colors.black,
                    keyboardType: TextInputType.number,
                    readOnly: true,
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
              )),
              Gap(10),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "To",
                    style: GoogleFonts.poppins(color: Colors.black, fontSize: 11, fontWeight: FontWeight.w600),
                  ),
                  TextFormField(
                    style: GoogleFonts.poppins(fontSize: 12),
                    keyboardType: TextInputType.number,
                    cursorColor: Colors.black,
                    readOnly: true,
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
          Gap(25),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: MaterialButton(
              onPressed: () {},
              padding: EdgeInsets.symmetric(vertical: 10),
              color: AppColors.bluePrimaryShades[800],
              child: Text(
                "POST JOB",
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16, letterSpacing: 0.7),
              ),
            ),
          ),

          /*TextFormField(
            style: GoogleFonts.poppins(
                fontSize: 12
            ),
            keyboardType: TextInputType.phone,
            cursorColor: Colors.black,
            readOnly: true,
            decoration: InputDecoration(
              enabled: true,
              filled: true,
              fillColor: Colors.transparent,
              suffixIcon: Icon(Icons.keyboard_arrow_down_rounded),
              suffixIconColor: Colors.black,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
              ),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black)
              ),

            ),
          ),*/
        ],
      ),
    );
  }
}
