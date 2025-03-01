import 'package:fitness/constants/app_keys.dart';
import 'package:fitness/presentation/routes/routes.dart';
import 'package:fitness/presentation/screens/applicants/applicant_listings.dart';
import 'package:fitness/presentation/screens/auth/login.dart';
import 'package:fitness/presentation/screens/auth/signup.dart';
import 'package:fitness/presentation/screens/home/homepage_gym_owner.dart';
import 'package:fitness/presentation/screens/owner_job_listing/owner_job_listing.dart';
import 'package:fitness/presentation/screens/post_job_details/job_details.dart';
import 'package:fitness/presentation/screens/post_job_vacancy/post_job_vacancy.dart';
import 'package:fitness/presentation/screens/splash/splashcreen.dart';
import 'package:fitness/presentation/screens/trainer/search_trainer.dart';
import 'package:fitness/presentation/screens/trainer/trainer_details.dart';
import 'package:go_router/go_router.dart';

class RouteGenerator {
  static final GoRouter router = GoRouter(
    navigatorKey: navigatorKey,
    initialLocation: Routes.initial,
    debugLogDiagnostics: true,
    routes: <RouteBase>[
      // Splashscreen
      GoRoute(
        path: Routes.initial,
        builder: (context, state) => Splashcreen(),
      ),

      // login
      GoRoute(
        path: Routes.login,
        builder: (context, state) => Login(),
      ),

      // signup
      GoRoute(
        path: Routes.signup,
        builder: (context, state) => Signup(),
      ),

      // home gym owner
      GoRoute(
        path: Routes.homeOwner,
        builder: (context, state) => HomepageGymOwner(),
      ),

      // PostJobVacancy
      GoRoute(
        path: Routes.postVacancy,
        builder: (context, state) => PostJobVacancy(),
      ),

      // PostJobVacancy
      GoRoute(
        path: Routes.jobListings,
        builder: (context, state) => OwnerJobListing(),
      ),

      // PostJobVacancy
      GoRoute(
        path: Routes.ownerJobDetails,
        builder: (context, state) => JobDetails(),
      ),

      // PostJobVacancy
      GoRoute(
        path: Routes.applicationListing,
        builder: (context, state) => ApplicantListings(),
      ),

      // Search Trainer
      GoRoute(
        path: Routes.trainerSearch,
        builder: (context, state) => SearchTrainer(),
      ),

      // Trainer Details
      GoRoute(
        path: Routes.trainerDetails,
        builder: (context, state) => TrainerDetails(),
      ),


    ],
  );
}
