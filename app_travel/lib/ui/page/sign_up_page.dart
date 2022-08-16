import 'package:app_travel/shared/theme.dart';
import 'package:app_travel/ui/widgets/custom_button.dart';
import 'package:app_travel/ui/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: Text(
          "Join us and get\nyour next journey",
          style: blackTextStyle.copyWith(fontSize: 24, fontWeight: semiBold),
        ),
      );
    }

    Widget inputSection() {
      Widget fullNameInput() {
        return CustomTextFormField(
          title: "FullName",
          hintText: "Your Full Name",
        );
      }

      Widget emailInput() {
        return CustomTextFormField(
          title: "Email Address",
          hintText: "Your Full Name",
        );
      }

      Widget passwordInput() {
        return CustomTextFormField(
          obscureText: true,
          title: "Password",
          hintText: "Your Full Name",
        );
      }

      Widget hobbyInput() {
        return CustomTextFormField(
          title: "Hobby",
          hintText: "Your Hobby",
        );
      }

      Widget submitButton() {
        return CustomButton(
            margin: const EdgeInsets.only(top: 30),
            onPressed: () {
              Navigator.pushNamed(context, '/bonus');
            },
            title: "Get Started");
      }

      return Container(
        margin: const EdgeInsets.only(top: 30),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        child: Column(
          children: [
            fullNameInput(),
            emailInput(),
            passwordInput(),
            hobbyInput(),
            submitButton(),
          ],
        ),
      );
    }

    Widget tcButton() {
      return Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.only(top: 50, bottom: 73),
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
