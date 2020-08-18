import 'package:coach_better/ViewModels/base_model.dart';
import 'package:coach_better/locator.dart';
import 'package:coach_better/models/user_model.dart';
import 'package:coach_better/services/authentication_service.dart';

class LoginViewModel extends BaseModel {
  final AuthenticationService _authenticationService =
      locator<AuthenticationService>();
  Future<User> login(String email, String password) async {
    setstate(ViewState.Busy);
    var success = _authenticationService.login(email, password);
    setstate(ViewState.Idle);
    return success;
  }
}
