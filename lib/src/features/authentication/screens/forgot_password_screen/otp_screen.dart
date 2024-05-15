import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Verification Code",
            style: TextStyle(

              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colors.grey,
            ),
            ),
            const SizedBox(height: 20,),
            Text("Enter the verification code we have texted"),
             SizedBox(
              height: 20,
            )   ,
            OtpTextField(
              numberOfFields: 6,
              fillColor: Colors.black.withOpacity(0.1),
              filled: true,
              onSubmit:(code){print("Otp is =>$code");
                } ,
              
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: (){

            },
                child:Text("Next"),
            ),
          ],

        ),

      ),
    );
  }
}
