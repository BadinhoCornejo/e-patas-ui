import 'package:flutter/material.dart';

import 'package:e_patas/ui/screens/screens.dart';

RouteFactory routeFactory() => (settings) {
      // final Map<String, dynamic> arguments = settings.arguments;
      Widget screen;

      switch (settings.name) {
        case '/splash':
          screen = Splash();
          break;
        case '/welcome':
          screen = Welcome();
          break;
        case '/login':
          screen = Login();
          break;
        case '/email_register':
          screen = EmailRegister();
          break;
        case '/password_register':
          screen = PasswordRegister();
          break;
        case '/pet_register':
          screen = PetRegister();
          break;
        case '/user_register':
          screen = UserRegister();
          break;
        case '/home':
          screen = Home();
          break;
        case '/pet_profile':
          screen = PetProfile();
          break;
        case '/matches':
          screen = Matches();
          break;
        default:
          screen = Splash();
      }

      return MaterialPageRoute(builder: (BuildContext context) => screen);
    };
