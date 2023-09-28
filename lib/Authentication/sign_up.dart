import 'package:flutter/material.dart';
import 'package:http/http.dart';
class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

TextEditingController emailController = new TextEditingController();
TextEditingController passwordController = new TextEditingController();

class _SignUpState extends State<SignUp> {

  void login(String email , password) async{
    try{
      Response response = await post(
        Uri.parse('https://reqres.in/api/register'),
        body: {
          'email' : email,
          'password' : password
        }
      );

      if(response.statusCode == 200){
        print("Account created Scuccesfully");
      }else{
        print("Account creation failed");
      }
    }catch(e){
      print(e.toString());
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SIGN UP'),
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: emailController,
              decoration: InputDecoration(
                hintText: 'Enter Email'
              ),
            ),

            SizedBox(height: 5,),

            TextFormField(
              controller: passwordController,
              decoration: InputDecoration(
                  hintText: 'Enter Password'
              ),
            ),

            SizedBox(height: 10,),

            ElevatedButton(onPressed: (){
                login(emailController.text.toString() , passwordController.text.toString());
            }, child: Text('LOG IN', style: TextStyle(color: Colors.black),),

            )
          ],
        ),
      ),
    );
  }
}
