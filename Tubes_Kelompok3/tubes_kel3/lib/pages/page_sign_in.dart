import 'package:flutter/material.dart';
import 'package:tubes_kel3/routes/route.dart';
import 'package:tubes_kel3/widgets/custom_field_text.dart';
import 'package:tubes_kel3/widgets/custom_text_style.dart';

class pageSignIn extends StatelessWidget {
  const pageSignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: [
            Container(
                padding: EdgeInsets.only(top: 70),
                child: const Image(
                  image: AssetImage('assets/images/logo.png'),
                  width: 150,
                  height: 150,
                )),
            Container(
              padding: EdgeInsets.only(bottom: 40),
              child:CustomTextStyle(text: 'Testing', fontSize: 23,fontWeight: FontWeight.bold, color: Colors.grey,)
            ),
            Container(
              child: CustomTextStyle(text: 'Masuk ke akun Anda', fontSize: 17,)
            ),
            Container(
              child: customTextField(
                  label: 'Email',
                  hint: 'Masukkan Email',
                  textInputType: TextInputType.emailAddress),
            ),
            Container(
              child: customTextField(
                label: 'Password',
                hint: 'Masukkan Password',
                textInputType: TextInputType.visiblePassword,
                hiddenText: true,
              ),
            ),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Routes.riwayat);
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
                    'Masuk',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.only(bottom: 10),
              child: Text(
                'Atau',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            OutlinedButton(
                style: ButtonStyle(
                    minimumSize: MaterialStatePropertyAll(Size(300, 50)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                          side: BorderSide(color: Colors.blue)),
                    )),
                onPressed: () {
                  Navigator.pushNamed(context, Routes.signUp);
                },
                child: Text(
                  'Daftar',
                )),
          ],
        ),
      ),
    );
  }
}