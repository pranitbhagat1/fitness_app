import 'package:fitness/common/widgets/glassmorphism.dart';
import 'package:fitness/gen/assets.gen.dart';
import 'package:fitness/presentation/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TrainerDetails extends StatelessWidget {
  const TrainerDetails({super.key});

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
          title: Text("Trainer Details"),
        ),
        body: _trainerDetailsBody(context),
        floatingActionButton: SizedBox(
          height: 100,
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.all(20),
              child: MaterialButton(
                  onPressed: (){},
                color: AppColors.bluePrimaryShades[500]!,
                elevation: 10,
                child: Text("Send Request",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
              ),
            )
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }

  Widget _trainerDetailsBody(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      width: double.infinity,
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            child: Center(
              child: Image.asset(Assets.images.avatar.path,width: 90,height: 90,),
            ),
          ),
          Gap(25),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Expanded(child: Text("Name: ",style: TextStyle(fontWeight: FontWeight.bold),)),
                Expanded(child: Text("Darshan Meher"))
              ],
            ),
          ),
          Gap(10),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Expanded(child: Text("DOB: ",style: TextStyle(fontWeight: FontWeight.bold),)),
                Expanded(child: Text("30 May 1992"))
              ],
            ),
          ),
          Gap(10),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Expanded(child: Text("Age: ",style: TextStyle(fontWeight: FontWeight.bold),)),
                Expanded(child: Text("32 years"))
              ],
            ),
          ),
          Gap(10),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Expanded(child: Text("Gender: ",style: TextStyle(fontWeight: FontWeight.bold),)),
                Expanded(child: Text("Male"))
              ],
            ),
          ),
          Gap(10),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Expanded(child: Text("No. of Experience: ",style: TextStyle(fontWeight: FontWeight.bold),)),
                Expanded(child: Text("7 years"))
              ],
            ),
          ),
          Gap(10),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(child: Text("Certifications: ",style: TextStyle(fontWeight: FontWeight.bold),)),
                Expanded(child: Text("Weight Lifting, Physiotherapy, Tissue Massage Therapy"))
              ],
            ),
          ),
          Gap(10),
        ],
      ),
    );
  }
}
