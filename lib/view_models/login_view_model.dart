import 'package:coach_better/locator.dart';
import 'package:coach_better/services/authentication_service.dart';
import 'package:coach_better/view_models/base_model.dart';

class LoginViewModel extends BaseModel {
  final AuthenticationService _authenticationService =
      locator<AuthenticationService>();
  Future<bool> login(String email, String password) async {
    setstate(ViewState.Busy);
    var success = _authenticationService.login(email, password);
    setstate(ViewState.Idle);
    return success;
  }
}
