import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:taskproject/view/login/Cubit/cubit.dart';
import 'package:taskproject/view/login/Cubit/states.dart';
import '../../common/colors_s.dart';
import '../home/homepaged.dart';
import '../register/registerscreen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {

    var emailContrilller =TextEditingController();
    var passwordContrilller =TextEditingController();
    var FormKey =GlobalKey<FormState>();

    return BlocProvider(
      create: (BuildContext context) => LoginCubit(),
      child: BlocConsumer<LoginCubit,Loginstate>(
        listener: (context ,state){
          if(state is LoginSuccessState){
            ScaffoldMessenger
                .of(context)
                .showSnackBar(
                const SnackBar(
                    content: Text('Success')
                )
            );
          }
          if(state is LoginfailureState){
            ScaffoldMessenger
                .of(context)
                .showSnackBar(
                SnackBar(
                    content: Text(state.error)
                )
            );
          }
        },
        builder: (context ,state){
          return Scaffold(
            body: SingleChildScrollView(
              child: Center(
                child: Form(
                  key: FormKey,
                  child: Column(
                    children: [
                      const SizedBox(height: 26,),
                      SizedBox(
                          width: 250,
                          height: 150,
                          child: SvgPicture.asset('assets/img/Main-Logo-01.svg')),
                      const Text(
                        'تسجيل دخول',
                        style: TextStyle(
                          fontSize: 22,
                          fontFamily: 'arabicfont',
                        ),),
                      const SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        width: 350,
                        height: 75,
                        child: TextFormField(
                          controller: emailContrilller,
                          validator: (value){
                            if(value!.isEmpty){
                              return 'الحقل فارغ';
                            }
                            return null;
                          },
                          textAlign: TextAlign.right,
                          decoration: const InputDecoration(
                            suffixIcon: Icon(Icons.perm_identity,color: primaryColor,),
                            hintText: 'اسم المستخدم',
                            border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 13.2,
                      ),
                      SizedBox(
                        width: 350,
                        height: 75,
                        child: Center(
                          child: TextFormField(
                            controller: passwordContrilller,
                            validator: (value){
                              if(value!.isEmpty){
                                return 'الحقل فارغ';
                              }
                              return null;
                            },
                            textAlign: TextAlign.right,
                            keyboardType: TextInputType.visiblePassword,
                            obscureText: LoginCubit.get(context).isonpassword,
                            decoration:  InputDecoration(
                              suffixIcon: const Icon(Icons.lock,color: primaryColor,),
                              hintText: '***********',
                              prefixIcon: IconButton(
                                icon: Icon(LoginCubit.get(context).prefic),
                                onPressed: () {
                                  LoginCubit.get(context).changepasswordicon();
                                },
                              ),
                              border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Text('تذكرني',style: TextStyle(fontFamily: 'arabicfont', ),),
                          // Checkbox(
                          //   shape: CircleBorder(),
                          //   value: isSelected,
                          //   activeColor: primaryColor,
                          //   onChanged: (value) {  },
                          // ),
                          IconButton(
                              onPressed: (){
                                LoginCubit.get(context).changeremember();
                              },
                              icon: Icon(LoginCubit.get(context).remember,color: primaryColor,),
                          ),
                        ],
                      ),
                      const SizedBox(height: 24,),
                      Container(
                        width: 300,
                        height: 50,
                        decoration:  BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ConditionalBuilder(
                          condition: state is! LoginLoadingState,
                          builder: (context)=>MaterialButton(
                            onPressed: (){
                              if(FormKey.currentState!.validate()){
                                // LoginCubit
                                //     .get(context)
                                //     .userlogin(
                                //   email: emailContrilller.text,
                                //   password: passwordContrilller.text,
                                //   remember: false,
                                // );
                                Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=> const HomePage() ), (route) => false);
                              }
                            },
                            child:const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('تسجيل دخول',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontFamily: 'arabicfont',
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                                SizedBox(width: 8,),
                                Icon(Icons.check_circle,color: Colors.white,),
                              ],
                            ),
                          ),
                          fallback: (context)=>const Center(child: CircularProgressIndicator(color: secondryColor,)),
                        ),
                      ),
                      const SizedBox(height: 20,),
                      Container(
                        width: 300,
                        height: 50,
                        decoration:  BoxDecoration(
                          color: secondryColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: MaterialButton(
                          onPressed: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>registerscreen()));
                          },
                          child:const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('انشي حساب جديد',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontFamily: 'arabicfont',
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              SizedBox(width: 8,),
                              Icon(Icons.perm_identity,color: Colors.white,)
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 12,),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text('نسيت كلمة المرور ؟',style: TextStyle(fontFamily: 'arabicfont', ),),
                          SizedBox(width: 8,),
                          Icon(Icons.lock_outline),
                          SizedBox(width: 24,),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
