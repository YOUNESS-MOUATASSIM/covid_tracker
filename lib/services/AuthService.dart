import 'package:firebase_auth/firebase_auth.dart';


class AuthService {
  //1- Create instance


  final FirebaseAuth auth = FirebaseAuth.instance;

  //2- return a user via Future async await


  //sign in anonyme
  Future signInAnom() async {
    try {

      UserCredential userCredential = await auth.signInAnonymously();

      return userCredential;
    }
    catch(e) {
      print(e.toString());
      return null;
    }
  }

  //sign in with email & password

  Future signInWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential userCredential = await auth.signInWithEmailAndPassword(
          email: email,
          password: password
      );
      return userCredential;
    }  catch (e) {
      return null;
    }
  }

  //register  with email & password

  Future registerWithEmailAndPassword(String email, String password) async {
    try {

      UserCredential userCredential = await auth.createUserWithEmailAndPassword(
          email: email,
          password: password
      );

      return userCredential;


    } catch (e) {
      return null;
    }
  }

  //sign out

  Future signOut() async {
    try {
      return await auth.signOut();
    } catch (error) {
      print(error.toString());
      return null;
    }
  }

}
