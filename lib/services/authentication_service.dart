import 'package:coach_better/models/user_model.dart';
import 'package:coach_better/services/authentication.dart';

class AuthenticationService {
  Authentication _authentication = Authentication();
  Future<User> login(String email, String password) async {
    var fetchedUser = _authentication.login(email, password);
  return fetchedUser;
  }
}
