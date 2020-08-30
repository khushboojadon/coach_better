import 'package:coach_better/ViewModels/admin_rights_view_model.dart';
import 'package:coach_better/ViewModels/calender_admin_view_model.dart';
import 'package:coach_better/ViewModels/events_view_view_model.dart';
import 'package:coach_better/ViewModels/home_admin_view_model.dart';
import 'package:coach_better/ViewModels/login_view_model.dart';
import 'package:coach_better/ViewModels/players_view_model.dart';
import 'package:coach_better/ViewModels/teams_view_model.dart';
import 'package:coach_better/ViewModels/video_member_view_model.dart';
import 'package:coach_better/services/authentication.dart';
import 'package:coach_better/services/authentication_service.dart';
import 'package:coach_better/services/matches_service.dart';
import 'package:coach_better/services/playersService.dart';
import 'package:coach_better/services/staff_service.dart';
import 'package:coach_better/services/teamService.dart';
import 'package:coach_better/services/training_service.dart';
import 'package:coach_better/services/videos_service.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

void setuplocator() {
  locator.registerLazySingleton(() => AuthenticationService());
  locator.registerLazySingleton(() => Authentication());
  locator.registerLazySingleton(() => PlayerService());
  locator.registerLazySingleton(() => TeamService());
  locator.registerLazySingleton(() => StaffService());
  locator.registerLazySingleton(() => MatchService());
  locator.registerLazySingleton(() => TrainingService());
  locator.registerLazySingleton(() => VideoService());
  locator.registerFactory(() => LoginViewModel());
  locator.registerFactory(() => TeamsViewModel());
  locator.registerFactory(() => PlayersViewModel());
  locator.registerFactory(() => EventsViewModel());
  locator.registerFactory(() => HomeAdminViewModel());
  locator.registerFactory(() => AdminRightsViewModel());
  locator.registerFactory(() => CalenderAdminViewModel());
  locator.registerFactory(() => VideoMemberViewModel());
}
