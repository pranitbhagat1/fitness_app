import 'package:fitness/presentation/theme/app_colors.dart';
import 'package:flutter/material.dart';

class JobDetails extends StatefulWidget {
  const JobDetails({super.key});

  @override
  State<JobDetails> createState() => _JobDetailsState();
}

class _JobDetailsState extends State<JobDetails> {
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
          title: Text("Job Details"),
        ),
      ),
    );
  }
}
