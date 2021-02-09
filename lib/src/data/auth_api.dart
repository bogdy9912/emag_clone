import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:emag_clone/src/models/auth/index.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

class AuthApi {
  AuthApi({@required FirebaseFirestore firestore, @required FirebaseAuth auth})
      : assert(firestore != null),
        assert(auth != null),
        _firestore = firestore,
        _auth = auth;

  final FirebaseFirestore _firestore;
  final FirebaseAuth _auth;

  Future<AppUser> initializeApp() async {
    final User user = _auth.currentUser;
    final DocumentSnapshot result = await _firestore.doc('users/${user.uid}').get();
    return AppUser.fromJson(result.data());
  }

  Future<AppUser> login({@required String email, @required String password}) async {
    final UserCredential response = await _auth.signInWithEmailAndPassword(email: email, password: password);
    final User user = response.user;
    final DocumentSnapshot userData = await _firestore.doc('/users/${user.uid}').get();
    return AppUser.fromJson(userData.data());
  }

  Future<AppUser> signUp({@required String email, @required String password, @required String displayedName}) async {
    final UserCredential userCredential = await _auth.createUserWithEmailAndPassword(email: email, password: password);

    final AppUser newUser = AppUser((AppUserBuilder b) {
      b
        ..uid = userCredential.user.uid
        ..email = userCredential.user.email
        ..displayedName = displayedName;
    });

    await _firestore.doc('users/${newUser.uid}').set(newUser.json);

    return newUser;
  }

  Future<void> resetPassword({@required String email}) async {
    await _auth.sendPasswordResetEmail(email: email);
  }

  Future<void> signOut() async {
    await _auth.signOut();
  }

  Future<void> updateCart(String uid, Cart cart) async {
    await _firestore.doc('users/$uid').update(<String, dynamic>{'cart': cart.json});
  }

  Future<void> updateFavoriteProducts(String uid, String add, String remove) async {
    FieldValue value;

    if (add != null) {
      value = FieldValue.arrayUnion(<String>[add]);
    } else {
      value = FieldValue.arrayRemove(<String>[remove]);
    }
    if (value != null) {
      await _firestore.doc('users/$uid').update(<String, dynamic>{'favorites': value});
    }
  }
}
