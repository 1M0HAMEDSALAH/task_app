import 'package:flutter/material.dart';
import '../../common/colors_s.dart';
import '../login/login.dart';

class registerscreen extends StatelessWidget {
  const registerscreen({super.key});

  @override
  Widget build(BuildContext context) {

    var FnameContrilller =TextEditingController();
    var LnameContrilller =TextEditingController();
    var TnameContrilller =TextEditingController();
    var FamilynameContrilller =TextEditingController();
    var BirthdayContrilller =TextEditingController();
    var idExpiryDateContrilller =TextEditingController();
    var EmailContrilller =TextEditingController();
    var UsernameContrilller =TextEditingController();
    var PasswordContrilller =TextEditingController();
    var FormKey =GlobalKey<FormState>();

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('تسجيل حساب جديد'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: (){
                Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=>LoginScreen()), (route) => false);
              },
              icon: const Icon(Icons.arrow_forward_outlined),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Form(
          key: FormKey,
          child: Column(
            children: [
              SizedBox(
                width: 350,
                height: 75,
                child: Center(
                  child: TextFormField(
                    controller: FnameContrilller,
                    textAlign: TextAlign.right,
                    keyboardType: TextInputType.name,
                    validator: (value){
                      if(value!.isEmpty){
                        return 'الحقل فارغ';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      suffixIcon: Image.asset('assets/img/id.png'),
                      hintText: 'الاســـم الاول',
                      border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8,),
              SizedBox(
                width: 350,
                height: 75,
                child: Center(
                  child: TextFormField(
                    controller: LnameContrilller,
                    textAlign: TextAlign.right,
                    keyboardType: TextInputType.name,
                    validator: (value){
                      if(value!.isEmpty){
                        return 'الحقل فارغ';
                      }
                      return null;
                    },
                    decoration:  InputDecoration(
                      suffixIcon: Image.asset('assets/img/id.png'),
                      hintText: 'الاســــم الثاني',
                      border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8,),
              SizedBox(
                width: 350,
                height: 75,
                child: Center(
                  child: TextFormField(
                    controller: TnameContrilller,
                    textAlign: TextAlign.right,
                    keyboardType: TextInputType.name,
                    validator: (value){
                      if(value!.isEmpty){
                        return 'الحقل فارغ';
                      }
                      return null;
                    },
                    decoration:  InputDecoration(
                      suffixIcon: Image.asset('assets/img/id.png'),
                      hintText: 'اســـم الجد',
                      border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8,),
              SizedBox(
                width: 350,
                height: 75,
                child: Center(
                  child: TextFormField(
                    controller: FamilynameContrilller,
                    textAlign: TextAlign.right,
                    keyboardType: TextInputType.name,
                    validator: (value){
                      if(value!.isEmpty){
                        return 'الحقل فارغ';
                      }
                      return null;
                    },
                    decoration:  InputDecoration(
                      suffixIcon: Image.asset('assets/img/id.png'),
                      hintText: 'اسم العائلة',
                      border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8,),
              SizedBox(
                width: 350,
                height: 75,
                child: Center(
                  child: TextFormField(
                    controller: BirthdayContrilller,
                    textAlign: TextAlign.right,
                    keyboardType: TextInputType.text,
                    validator: (value){
                      if(value!.isEmpty){
                        return 'الحقل فارغ';
                      }
                      return null;
                    },
                    decoration:  InputDecoration(
                      suffixIcon: Image.asset('assets/img/DB.png'),
                      hintText: 'تاريخ الميلاد',
                      border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8,),
              SizedBox(
                width: 350,
                height: 75,
                child: Center(
                  child: TextFormField(
                    textAlign: TextAlign.right,
                    keyboardType: TextInputType.visiblePassword,
                    validator: (value){
                      if(value!.isEmpty){
                        return 'الحقل فارغ';
                      }
                      return null;
                    },
                    decoration:  InputDecoration(
                      suffixIcon: Image.asset('assets/img/face.png'),
                      prefixIcon: Image.asset('assets/img/Repeat Grid 1.png'),
                      hintText: 'الصفة',
                      border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8,),
              SizedBox(
                width: 350,
                height: 75,
                child: Center(
                  child: TextFormField(
                    textAlign: TextAlign.right,
                    keyboardType: TextInputType.phone,
                    validator: (value){
                      if(value!.isEmpty){
                        return 'الحقل فارغ';
                      }
                      return null;
                    },
                    decoration:  InputDecoration(
                      suffixIcon: Image.asset('assets/img/phone.png'),
                      hintText: 'رقم الجوال',
                      border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8,),
              SizedBox(
                width: 350,
                height: 75,
                child: Center(
                  child: TextFormField(
                    controller: idExpiryDateContrilller,
                    textAlign: TextAlign.right,
                    keyboardType: TextInputType.datetime,
                    validator: (value){
                      if(value!.isEmpty){
                        return 'الحقل فارغ';
                      }
                      return null;
                    },
                    decoration:  InputDecoration(
                      suffixIcon: Image.asset('assets/img/DB.png'),
                      hintText: 'تاريخ انتهاء السجل',
                      border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8,),
              SizedBox(
                width: 350,
                height: 75,
                child: Center(
                  child: TextFormField(
                    controller: EmailContrilller,
                    textAlign: TextAlign.right,
                    keyboardType: TextInputType.emailAddress,
                    validator: (value){
                      if(value!.isEmpty){
                        return 'الحقل فارغ';
                      }
                      return null;
                    },
                    decoration:  InputDecoration(
                      suffixIcon: Image.asset('assets/img/email.png'),
                      hintText: 'البريد الالكتروني',
                      border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text('انثي'),
                  Checkbox(
                    shape: const CircleBorder(),
                    value: false,
                    activeColor: primaryColor,
                    onChanged: (value) {  },
                  ),
                  const Text('ذكر'),
                  Checkbox(
                    shape: const CircleBorder(),
                    value: true,
                    activeColor: primaryColor,
                    onChanged: (value) {  },
                  ),
                  const SizedBox(width: 24,),
                ],
              ),
              const SizedBox(height: 8,),
              SizedBox(
                width: 350,
                height: 75,
                child: Center(
                  child: TextFormField(
                    controller: UsernameContrilller,
                    textAlign: TextAlign.right,
                    keyboardType: TextInputType.name,
                    validator: (value){
                      if(value!.isEmpty){
                        return 'الحقل فارغ';
                      }
                      return null;
                    },
                    decoration:  InputDecoration(
                      suffixIcon: Image.asset('assets/img/user.png'),
                      hintText: 'اسم المستخدم',
                      border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8,),
              SizedBox(
                width: 350,
                height: 75,
                child: Center(
                  child: TextFormField(
                    controller: PasswordContrilller,
                    textAlign: TextAlign.right,
                    keyboardType: TextInputType.visiblePassword,
                    validator: (value){
                      if(value!.isEmpty){
                        return 'الحقل فارغ';
                      }
                      return null;
                    },
                    decoration:  InputDecoration(
                      suffixIcon: Image.asset('assets/img/password.png'),
                      hintText: 'كلمة المرور',
                      border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 12,),
              Container(
                width: 300,
                height: 50,
                decoration:  BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: MaterialButton(
                  onPressed:()
                  {
                  if(FormKey.currentState!.validate())
                  {}
                  },
                  child:const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('تسجيل جديد',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'arabicfont',
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(width: 8,),
                      Icon(Icons.check_circle,color: Colors.white,)
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 12,),
            ],
          ),
        ),
      ),
    );
  }
}
