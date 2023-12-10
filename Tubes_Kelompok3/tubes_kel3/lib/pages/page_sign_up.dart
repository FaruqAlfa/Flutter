import 'package:tubes_kel3/routes/route.dart';
import 'package:flutter/material.dart';
import 'package:tubes_kel3/widgets/custom_field_text.dart';
import 'package:tubes_kel3/widgets/custom_text_style.dart';

class pageSignUp extends StatelessWidget {
   pageSignUp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          child: Center(
            child: Column(children: [
              Container(
                  padding: EdgeInsets.symmetric(vertical: 50),
                  child: const Image(
                    image: AssetImage('assets/images/logo.png'),
                    width: 100,
                    height: 100,
                  )
              ),
              Container(
                padding: EdgeInsets.only(bottom: 30),
                child: CustomTextStyle(
                  text :'Selamat Datang di Testing',
                  fontWeight: FontWeight.w600,
                  fontSize: 23,
                  ), 
              ),
              Container(
                child: CustomTextStyle(text:'Buat akun Testing anda.'),
              ),
              Container(
                child: customTextField(
                  
                  label: 'Nama Lengkap',
                  hint: 'Masukkan Nama Lengkap',
                  textInputType: TextInputType.name,
                ),
              ),
              
              Container(
                child: customTextField(
                  label: 'Email',
                  hint: 'Masukkan Email',
                  textInputType: TextInputType.emailAddress,
                ),
              ),
              
              Container(
                child: customTextField(
                  label: 'Password',
                  hint: 'Masukkan Password',
                  textInputType: TextInputType.visiblePassword,
                  hiddenText: true,
                ),
              ),
              
              Container(
                child: customTextField(
                  label: 'Ulangi Password',
                  hint: 'Masukkan Ulang Password',
                  textInputType: TextInputType.visiblePassword,
                  hiddenText: true,
                ),
              ),
              ButtonBar(
                alignment: MainAxisAlignment.center,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, Routes.signIn);
                    },
                    style: ButtonStyle(
                      minimumSize: MaterialStatePropertyAll(Size(300, 50)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                    ),
                    child: Text(
                      'Daftar',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, Routes.signIn);
                },
                child: Container(
                  padding: EdgeInsets.all(16),
                  child: Text.rich(
                    TextSpan(
                      text: 'Sudah memiliki akun? ',
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Masuk',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}