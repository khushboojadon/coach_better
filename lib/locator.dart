import 'package:coach_better/ViewModels/login_view_model.dart';
import 'package:coach_better/ViewModels/players_view_model.dart';
import 'package:coach_better/ViewModels/teams_view_model.dart';
import 'package:coach_better/services/authentication.dart';
import 'package:coach_better/services/authentication_service.dart';
import 'package:coach_better/services/playersService.dart';
import 'package:coach_better/services/teamService.dart';

import 'package:get_it/get_it.dart';



GetIt locator = GetIt.instance;

void setuplocator() {
  locator.registerLazySingleton(() => AuthenticationService());
  locator.registerLazySingleton(() => Authentication());
  locator.registerLazySingleton(() => PlayerService());
  locator.registerLazySingleton(() => TeamService());
  locator.registerLazySingleton(() => LoginViewModel());
  locator.registerFactory(() => TeamsViewModel());
  locator.registerFactory(() => PlayersViewModel());
}
