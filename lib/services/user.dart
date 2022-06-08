part of 'services.dart';

List<UserClass> userDB = [];
UserClass? currentUser = null;
void generateDummyUser() {
  userDB.add(UserClass('alex', '123456'));
}

bool userLogin(username, password) {
  bool success = false;
  for (var user in userDB) {
    if (user.username == username && user.password == password) {
      success = true;
      currentUser = user;
      break;
    }
  }
  return success;
}

bool userRegister(username, password) {
  bool success = true;
  if (username == null) {
    success = false;
  }
  if (password == null) {
    success = false;
  }
  if (username.length < 7) {
    success = false;
  }
  if (password.length < 4 || password.length > 16) {
    success = false;
  }
  if (success) {
    UserClass newUser = UserClass(username, password);
    userDB.add(newUser);
    currentUser = newUser;
  }
  return success;
}
