import 'package:coach_better/Routes/routing_constants.dart';
import 'package:coach_better/views/admin_journey/add_player.dart';
import 'package:coach_better/views/admin_journey/add_team_member.dart';
import 'package:coach_better/views/admin_journey/admin_rights_team.dart';
import 'package:coach_better/views/admin_journey/calender_view_admin.dart';
import 'package:coach_better/views/admin_journey/create_event_admin_screen.dart';
import 'package:coach_better/views/admin_journey/create_training_day_admin.dart';
import 'package:coach_better/views/admin_journey/events_view_admin.dart';
import 'package:coach_better/views/admin_journey/game_day_admin_screen.dart';
import 'package:coach_better/views/admin_journey/home_admin_screen.dart';
import 'package:coach_better/views/admin_journey/login_screen.dart';
import 'package:coach_better/views/admin_journey/new_event_admin.dart';
import 'package:coach_better/views/admin_journey/signup_admin.dart';
import 'package:coach_better/views/admin_journey/signup_screen.dart';
import 'package:coach_better/views/admin_journey/teams_screen.dart';
import 'package:coach_better/views/admin_journey/welcome_screen.dart';
import 'package:coach_better/views/admin_journey/your_profile.dart';
import 'package:coach_better/views/admin_journey/your_team_admin.dart';
import 'package:coach_better/views/member_journey/member_home_screen.dart';
import 'package:coach_better/views/member_journey/video_player.dart';
import 'package:coach_better/views/member_journey/video_room.dart';

import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case WelcomeViewRoute:
      return MaterialPageRoute(builder: (context) => WelcomeScreen());
    case LoginViewRoute:
      return MaterialPageRoute(builder: (context) => LoginScreen());
    case TeamViewRoute:
      return MaterialPageRoute(builder: (context) => TeamScreen());
    case HomeAdminViewRoute:
      return MaterialPageRoute(builder: (context) => HomeAdminScreen());
    case SignUpViewRoute:
      return MaterialPageRoute(builder: (context) => SignupScreen());
    case AddTeamMemberViewRoute:
      return MaterialPageRoute(builder: (context) => AddTeamMember());
    case SignUpAdminViewRoute:
      return MaterialPageRoute(builder: (context) => SignupAdminScreen());
    case AddPlayerViewRoute:
      return MaterialPageRoute(builder: (context) => AddPlayer());
    case TrainingDayAdminViewRoute:
      return MaterialPageRoute(builder: (context) => TrainingDayAdmin());
    case GameDayAdminViewRoute:
      return MaterialPageRoute(builder: (context) => GameDayAdmin());
    case NewEventAdminViewRoute:
      return MaterialPageRoute(builder: (context) => NewEventAdmin());
    case YourTeamAdminViewRoute:
      return MaterialPageRoute(builder: (context) => YourTeamAdmin());
    case EventsViewAdminViewRoute:
      return MaterialPageRoute(builder: (context) => EventsViewAdmin());
    case CreateEventAdminViewRoute:
      return MaterialPageRoute(builder: (context) => CreateEventAdmin());
    case CalenderViewAdminViewRoute:
      return MaterialPageRoute(builder: (context) => CalenderViewAdmin());
    case AdminRightsTeamViewRoute:
      return MaterialPageRoute(builder: (context) => AdminRightTeams());
    case YourProfileViewRoute:
      return MaterialPageRoute(builder: (context) => YourProfile());
    case VideoRoomViewRoute:
      return MaterialPageRoute(builder: (context) => VideoRoom());
      case HomeMemberViewRoute:
      return MaterialPageRoute(builder: (context) => MemberHomeScreen());
    case VideoPlayerViewRoute:
      var videoid = settings.arguments;
      return MaterialPageRoute(
          builder: (context) => VideoDemo(
                videourl: videoid,
              ));
  }
}
