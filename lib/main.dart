import 'package:firebase_authentication_client/firebase_authentication_client.dart';
import 'package:user_repository/user_repository.dart';

import 'app/view/app.dart';
import 'bootstrap.dart';

void main() => bootstrap(() async {
      final firebaseAuthenticationClient = FirebaseAuthenticationClient();
      final userRepository =
          UserRepository(authenticationClient: firebaseAuthenticationClient);

      return App(
        userRepository: userRepository,
        user: await userRepository.user.first,
      );
    });
