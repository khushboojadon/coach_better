import 'package:coach_better/services/authentication.dart';

class AuthenticationService {
  Authentication _authentication = Authentication();
  Future<bool> login(String email, String password) async {
    var fetchedUser = _authentication.login(email, password);
    var hasUser = fetchedUser != null;
    return hasUser;
  }
}
