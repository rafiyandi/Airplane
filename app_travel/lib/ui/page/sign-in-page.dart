import 'package:app_travel/shared/theme.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Text(
          "Sign\nContinue",
          style: blackTextStyle.copyWith(fontSize: 24, fontWeight: semiBold),
        ),
      );
    }

    Widget inputSection() {
      Widget emailInput() {
        return Container(
          margin: EdgeInsets.only(top: 20),
          width: double.infinity,
          height: 82,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Email Address",
                style: blackTextStyle,
              ),
              SizedBox(
                height: 6,
              ),
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "Your Email",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(defaultRadius),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(defaultRadius),
                          borderSide: BorderSide(color: kPrimaryColor))),
                ),
              ),
            ],
          ),
        );
      }

      Widget passwordInput() {
        return Container(
          margin: EdgeInsets.only(top: 20),
          width: double.infinity,
          height: 82,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Password",
                style: blackTextStyle,
              ),
              SizedBox(
                height: 6,
              ),
              Expanded(
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Your Password",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(defaultRadius),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(defaultRadius),
                          borderSide: BorderSide(color: kPrimaryColor))),
                ),
              ),
            ],
          ),
        );
      }

      Widget submitButton() {
        return Container(
          margin: EdgeInsets.only(top: 30),
          width: double.infinity,
          height: 55,
          child: TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: kPrimaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(defaultRadius),
                  )),
              onPressed: () {
                Navigator.pushNamed(context, '/bonus');
              },
              child: Text(
                "Get Started",
                style:
                    whiteTextStyle.copyWith(fontSize: 18, fontWeight: medium),
              )),
        );
      }

      return Container(
        margin: EdgeInsets.only(top: 30),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        child: Column(
          children: [
            // fullNameInput(),
            // emailInput(),
            passwordInput(),
            // hobbyInput(),
            submitButton(),
          ],
        ),
      );
    }

    Widget tcButton() {
      return Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(top: 50, bottom: 73),
        child: Text(
          "Terms and Conditions",
          style: greyTextStyle.copyWith(fontSize: 16, fontWeight: light),
        ),
      );
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: kBackgroundColor,
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          children: [
            title(),
            inputSection(),
            tcButton(),
          ],
        ),
      ),
    );
  }
}
