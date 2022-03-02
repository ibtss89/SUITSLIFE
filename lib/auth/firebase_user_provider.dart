import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class SuitsFirebaseUser {
  SuitsFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

SuitsFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<SuitsFirebaseUser> suitsFirebaseUserStream() => FirebaseAuth.instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<SuitsFirebaseUser>((user) => currentUser = SuitsFirebaseUser(user));
