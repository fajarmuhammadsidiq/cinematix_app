import 'package:cinematix_app/pages/loginpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

class ResetpaswordPage extends StatelessWidget {
  const ResetpaswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF2F0069),
        title: Text(
          "Reset Password",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/img/3.png"),
                ),
              ),
            ),
            Text(
              textAlign: TextAlign.center,
              "Reset Your Password",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Text(
              textAlign: TextAlign.center,
              "Enter your email for reset password",
              style: TextStyle(fontSize: 14, color: Color(0xffD2D2D2)),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xffF3F3F3),
                prefixIcon: Icon(Icons.email_outlined),
                hintText: "Enter your email",
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 50,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xff2F0069),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12))),
                  onPressed: () {},
                  child: Text("Send")),
            ),
          ],
        ),
      ),
    );
  }
}
