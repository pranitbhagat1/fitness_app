class Routes{
  Routes._();

  //INTIAL SCREEN
  static const String initial = Paths.initial;

  //AUTH routes
  static const String login = Paths.login;
  static const String preSignup = Paths.preSignup;
  static const String signup = Paths.signup;

  //HOME SCREEN ̑
  static const String homeUser = Paths.homeUser;
  static const String homeOwner = Paths.homeOwner;
  static const String homeTrainer = Paths.homeTrainer;

  // gym owner
  static const String postVacancy = Paths.postVacancy;
  static const String jobListings = Paths.jobListings;
  static const String ownerJobDetails = Paths.ownerJobDetails;
  static const String applicationListing = Paths.applicationListing;
  static const String applicationDetails = Paths.applicationDetails;
  static const String applicantDetails = Paths.applicantDetails;
  static const String trainerSearch = Paths.trainerSearch;
  static const String trainerDetails = Paths.trainerDetails;

  // fitness trainer
  static const String jobSearch = Paths.jobSearch;
  static const String appliedJobs = Paths.appliedJobs;
  static const String freelancingRequests = Paths.freelanceRequests;

  // user
  static const String searchFitnessTrainer = Paths.searchFitnessTrainer;
}

abstract class Paths{
  Paths._();

  //INTIAL SCREEN
  static const String initial = '/splash';

  // auth
  static const String login = '/login';
  static const String preSignup = '/preSignup';
  static const String signup = '/signup';

  // home
  static const String homeUser = '/homeUser';
  static const String homeOwner = '/homeOwner';
  static const String homeTrainer = '/homeTrainer';

  // owner
  static const String postVacancy = '/postVacancy';
  static const String jobListings = '/jobListings';
  static const String ownerJobDetails = '/ownerJobDetails';
  static const String applicationListing = '/applicationListing';
  static const String applicationDetails = '/applicationDetails';
  static const String applicantDetails = '/applicantDetails';
  static const String trainerSearch = '/trainerSearch';
  static const String trainerDetails = '/trainerDetails';

  // fitness trainer
  static const String jobSearch = '/jobSearch';
  static const String appliedJobs = '/appliedJobs';
  static const String freelanceRequests = '/freelanceRequests';

  // user
  static const String searchFitnessTrainer = '/searchFitnessTrainer';
}