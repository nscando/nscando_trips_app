import 'package:firebase_auth/firebase_auth.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:nscando_trips_app/User/repository/auth_repository.dart';

class UserBloc implements Bloc {
  final _auth_repository = AuthRepository();

  //Data Flow STREAMS
  //Stream - Firebase
  //StreamController

  Stream<User?> streamFirebase = FirebaseAuth.instance.authStateChanges();

  //Session State return
  Stream<User?> get authStatus => streamFirebase;

  //Use case
  //1. SignIn app with Google

  Future<UserCredential> signIn() {
    return _auth_repository.signInFirebase();
  }

  //2. SignOut  Google
  signOut(){
    _auth_repository.signOut();
  }

  @override
  void dispose() {}
}
