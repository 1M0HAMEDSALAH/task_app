abstract class Loginstate {}

class LoginInitalState extends Loginstate {}

class LoginLoadingState extends Loginstate {}

class LoginSuccessState extends Loginstate {}

class LoginfailureState extends Loginstate {
  final String error;

  LoginfailureState(this.error);
}

class ChangePasswordState extends Loginstate {}

class ChangeRememberState extends Loginstate {}
