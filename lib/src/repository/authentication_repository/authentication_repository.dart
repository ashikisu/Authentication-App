
import 'package:authentication_app/src/features/authentication/screens/dashboard/dashboard.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import '../../features/authentication/screens/login/login_screen.dart';

class AuthenticationRepository extends GetxController{
 static AuthenticationRepository get instance=>Get.find();


 final _auth=FirebaseAuth.instance;
 late final Rx<User?>  firebaseUser;
 @override
  void onReadt(){
   firebaseUser=Rx<User?> (_auth.currentUser);
   firebaseUser.bindStream(_auth.userChanges());
   ever(firebaseUser,_setInitialScreen);


 }


  _setInitialScreen(User? user) {
  user==null? Get.offAll(()=>LoginScreen()):
  Get.offAll(()=>const Dashboard());
  }

  Future<void> createUserWIthEmailAndPassword(String email ,String password)async{
    try {
      await _auth.createUserWithEmailAndPassword(email: email, password: password);
      firebaseUser.value!=null? Get.offAll(()=>const Dashboard()):Get.to(()=>LoginScreen());
    } on FirebaseAuthException catch (e) {
      // TODO
    }catch(_){}
  
  }
  Future<void> loginWIthEmailAndPassword(String email ,String password)async{
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      // TODO
    }catch(_){}

  }

  Future<void> logout()async=> _auth.signOut();
}