abstract class Registerstate {}

class RegisterInitalState extends Registerstate {}

class RegisterLoadingState extends Registerstate {}

class RegisterSuccessState extends Registerstate {}

class RegisterfailureState extends Registerstate {
  final String error;

  RegisterfailureState(this.error);
}

class ChangePasswordState extends Registerstate {}

class ChangeRememberState extends Registerstate {}
