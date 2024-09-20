import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:taskproject/view/home/homepaged.dart';
import 'package:taskproject/view/login/Cubit/states.dart';

class LoginCubit extends Cubit<Loginstate>{
  LoginCubit(): super(LoginInitalState());
  static LoginCubit get(context)=>BlocProvider.of(context);


  IconData prefic = Icons.visibility_outlined;
  bool isonpassword = true;
  IconData remember = Icons.check_circle_outline;
  bool isremember = true;

  void changepasswordicon(){
    isonpassword = !isonpassword;
    prefic = isonpassword? Icons.visibility_outlined: Icons.visibility_off_outlined;
    emit(ChangePasswordState());
  }
  void changeremember(){
    isremember = !isremember;
    remember = isremember? Icons.check_circle_outline : Icons.check_circle ;
    emit(ChangeRememberState());
  }


  void userlogin({
    required String email,
    required String password,
    required bool remember,
})
  {
    emit(LoginInitalState());
    Dio()
        .post(
        'http://185.238.70.122:8882/api/auth/login',
        data: {
          'userName': email,
          'password': password,
          'remember': remember,
        },
      options: Options(
        headers: {
          'Content-Type': 'application/json',
        },
      ),
    )
        .then((value)
    {
      print(value);
      emit(LoginSuccessState());
    })
        .catchError((error){
          emit(LoginfailureState(error.toString()));
    });
  }
}
