import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class otpverification extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffd7fff5),
      appBar: AppBar(
        elevation: 2,
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xffacffe9),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        title: Text(
          "Verefy",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontStyle: FontStyle.normal,
            fontSize: 22,
            color: Color(0xff3b5b52),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsets.all(8),
            child: OtpTextField(
              numberOfFields: 4,
              showFieldAsBox: true,
              fieldWidth: 40,
              filled: true,
              fillColor: Color(0xffffffff),
              enabledBorderColor: Color(0xffffffff),
              focusedBorderColor: Color(0xffffffff),
              borderWidth: 2,
              margin: EdgeInsets.all(7),
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              obscureText: false,
              borderRadius: BorderRadius.circular(20.0),
              textStyle: TextStyle(
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
                fontSize: 14,
                color: Color(0xff000000),
              ),
              onCodeChanged: (String code) {},
              onSubmit: (String verificationCode) {},
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: MaterialButton(
              onPressed: () {},
              color: Color(0xff99d6c6),
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
                side: BorderSide(color: Color(0xffffffff), width: 0),
              ),
              padding: EdgeInsets.all(16),
              child: Text(
                "Verefy",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal,
                ),
              ),
              textColor: Color(0xffffffff),
              height: 40,
              minWidth: 140,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 8, 0),
            child: Align(
              alignment: Alignment.center,
              child: MaterialButton(
                onPressed: () {},
                color: Color(0xffd7fff5),
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                  side: BorderSide(color: Color(0xffd7fff5), width: 1),
                ),
                padding: EdgeInsets.all(1),
                child: Text(
                  "resenr otp",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                  ),
                ),
                textColor: Color(0xff60a393),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
