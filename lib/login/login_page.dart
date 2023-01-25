import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {




  @override
  Widget build(BuildContext context) {

    var screenSize = MediaQuery.of(context).size;
    final double screenHeight = screenSize.height;
    final double screenWidth = screenSize.width;

    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(//arkaplana o gorseli tam sıgdırmak için
            margin: EdgeInsets.only(bottom: 0),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image : DecorationImage(
                colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.6), BlendMode.softLight),
                fit: BoxFit.cover,
                image: AssetImage('assets/images/black_img.jpeg'),
              ),
            ),
            child: SingleChildScrollView(
              child: Center(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(bottom: 10, top: 0),
                        child: SizedBox(
                          width: 260,
                          height: 260,
                          child: Lottie.asset('assets/animations/fastfood.json'),
                        ),
                      ),

                    Container(
                      margin: EdgeInsets.only(top: 0),
                      child: Padding(
                        padding: EdgeInsets.all(screenHeight/30),
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 10,),
                          child: TextFormField(
                            autofocus: true,
                            enabled: true,
                            keyboardType: TextInputType.text,
                            textInputAction: TextInputAction.next,
                            //controller: ,
                            decoration: InputDecoration(
                              hintText: 'Password',
                              filled: true,
                              fillColor: Colors.white,
                              suffixIcon: Icon(Icons.key),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none,
                              ),
                            ),
                            validator: (password) {
                              if (password == null || password.isEmpty) {
                                return 'Lütfen şifrenizi giriniz';
                              }
                              return null;
                            }
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 230,),
                      child: Text('Forgot Your Password?',style: TextStyle(color: Colors.grey),),
                    ),
                    Padding(
                      padding: EdgeInsets.all(screenHeight/30),
                      child: Container(
                        child: Center(
                          child: SizedBox(
                            width: 120,
                            height: 40,
                            child: ElevatedButton(onPressed: (
                                ) {
                             /* autoValidate = true;
                              if (formKey.currentState.validate()) {
                                formKey.currentState.save();
                                SharedPrefs.saveMail(mailController.text);
                                SharedPrefs.savePassword(passwordController.text);
                                SharedPrefs.login();
                                Navigator.pushReplacement(
                                    context,MaterialPageRoute(
                                    builder: (context) => HomePage(
                                        mailController.text, passwordController.text)));
                              }*/
                              //print(.text);
                              //print(password.text);
                            },
                              child: Text('Login', style: TextStyle(fontSize: 18, color: Colors.white, letterSpacing: 1),),
                              style:ButtonStyle(
                                shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                                backgroundColor: MaterialStateProperty.all(Colors.white12),
                              ),

                            ),
                          ),
                        ),

                      ),
                    ),
                    Text('-------------------------------------------OR-------------------------------------------' ,style: TextStyle(color: Colors.grey),),

                    Container(
                      child: Padding(padding: EdgeInsets.all(screenHeight/30,),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: ElevatedButton.icon(onPressed: () {}, icon: Icon(Icons.facebook), label: Text(''),style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(Colors.orange)
                              )),
                            ),
                            SizedBox(
                              width: 50,
                              height: 50,
                            ),
                            Expanded(
                              child: ElevatedButton.icon(onPressed: () {}, icon: Icon(Icons.g_translate_outlined), label: Text(''),style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(Colors.orange)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 100,
                      height: 100,
                    ),
                    Text('Already have an account?',style: TextStyle(color: Colors.grey),),
                    Text('Sign in',style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600), ),
                  ],
                ),
              ),
            )
        ));
  }
}

