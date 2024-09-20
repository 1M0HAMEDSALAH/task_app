import 'package:flutter/material.dart';
import '../../common/colors_s.dart';
import '../login/login.dart';

class registerscreen extends StatelessWidget {
  const registerscreen({super.key});

  @override
  Widget build(BuildContext context) {

    var emailContrilller =TextEditingController();
    var passwordContrilller =TextEditingController();
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
                    textAlign: TextAlign.right,
                    keyboardType: TextInputType.name,
                    validator: (value){
                      if(value!.isEmpty){
                        return 'الحقل فارغ';
                      }
                      return null;
                    },
                    decoration:  const InputDecoration(
                      suffixIcon: Icon(Icons.person_remove_alt_1_outlined,color: primaryColor,),
                      hintText: 'الاســـم الاول',
                      border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
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
                    keyboardType: TextInputType.name,
                    validator: (value){
                      if(value!.isEmpty){
                        return 'الحقل فارغ';
                      }
                      return null;
                    },
                    decoration:  InputDecoration(
                      suffixIcon: const Icon(Icons.person_remove_alt_1_outlined,color: primaryColor,),
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
                    textAlign: TextAlign.right,
                    keyboardType: TextInputType.name,
                    validator: (value){
                      if(value!.isEmpty){
                        return 'الحقل فارغ';
                      }
                      return null;
                    },
                    decoration:  InputDecoration(
                      suffixIcon: const Icon(Icons.person_remove_alt_1_outlined,color: primaryColor,),
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
                    textAlign: TextAlign.right,
                    keyboardType: TextInputType.name,
                    validator: (value){
                      if(value!.isEmpty){
                        return 'الحقل فارغ';
                      }
                      return null;
                    },
                    decoration:  InputDecoration(
                      suffixIcon: const Icon(Icons.person_remove_alt_1_outlined,color: primaryColor,),
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
                    textAlign: TextAlign.right,
                    keyboardType: TextInputType.text,
                    validator: (value){
                      if(value!.isEmpty){
                        return 'الحقل فارغ';
                      }
                      return null;
                    },
                    decoration:  InputDecoration(
                      suffixIcon: const Icon(Icons.date_range_outlined,color: primaryColor,),
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
                      suffixIcon: const Icon(Icons.face_rounded,color: primaryColor,),
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
                      suffixIcon: const Icon(Icons.phone,color: primaryColor,),
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
                    textAlign: TextAlign.right,
                    keyboardType: TextInputType.datetime,
                    validator: (value){
                      if(value!.isEmpty){
                        return 'الحقل فارغ';
                      }
                      return null;
                    },
                    decoration:  InputDecoration(
                      suffixIcon: const Icon(Icons.date_range_outlined,color: primaryColor,),
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
                    textAlign: TextAlign.right,
                    keyboardType: TextInputType.emailAddress,
                    validator: (value){
                      if(value!.isEmpty){
                        return 'الحقل فارغ';
                      }
                      return null;
                    },
                    decoration:  InputDecoration(
                      suffixIcon: const Icon(Icons.email_outlined,color: primaryColor,),
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
                  Text('انثي'),
                  Checkbox(
                    shape: CircleBorder(),
                    value: false,
                    activeColor: primaryColor,
                    onChanged: (value) {  },
                  ),
                  Text('ذكر'),
                  Checkbox(
                    shape: CircleBorder(),
                    value: true,
                    activeColor: primaryColor,
                    onChanged: (value) {  },
                  ),
                  SizedBox(width: 24,),
                ],
              ),
              const SizedBox(height: 8,),
              SizedBox(
                width: 350,
                height: 75,
                child: Center(
                  child: TextFormField(
                    textAlign: TextAlign.right,
                    keyboardType: TextInputType.name,
                    validator: (value){
                      if(value!.isEmpty){
                        return 'الحقل فارغ';
                      }
                      return null;
                    },
                    decoration:  InputDecoration(
                      suffixIcon: const Icon(Icons.person,color: primaryColor,),
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
                    textAlign: TextAlign.right,
                    keyboardType: TextInputType.visiblePassword,
                    validator: (value){
                      if(value!.isEmpty){
                        return 'الحقل فارغ';
                      }
                      return null;
                    },
                    decoration:  InputDecoration(
                      suffixIcon: const Icon(Icons.lock,color: primaryColor,),
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
                  onPressed: ()
                  {
                  if(FormKey.currentState!.validate())
                  {

                  }
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
