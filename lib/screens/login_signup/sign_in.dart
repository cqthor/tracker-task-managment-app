import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tracker/screens/login_signup/sign_up.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  late TextEditingController mailController;
  late TextEditingController passController;
  late bool passwordVisibility;
  final _formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    mailController = TextEditingController();
    passController = TextEditingController();
    passwordVisibility = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Sign In"),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.only(left: 24, right: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 36),
                Text(
                  "Welcome Back",
                  style: Theme.of(context).textTheme.headline2,
                ),
                const SizedBox(height: 11),
                Text(
                  "Please Enter your email address \nand password for Login",
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2!
                      .copyWith(color: const Color(0xff868D95)),
                ),
                const SizedBox(height: 36),
                TextFormField(
                  controller: mailController,
                  style: Theme.of(context).textTheme.headline4,
                  decoration: InputDecoration(
                    hintText: "Enter your mail",
                    hintStyle: Theme.of(context).textTheme.bodyText1!.copyWith(
                          color: const Color(0xff848A94),
                        ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ),
                const SizedBox(height: 26),
                TextFormField(
                  controller: passController,
                  style: Theme.of(context).textTheme.headline4,
                  decoration: InputDecoration(
                    hintText: "Enter your password",
                    hintStyle: Theme.of(context).textTheme.bodyText1!.copyWith(
                          color: const Color(0xff848A94),
                        ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    const Spacer(),
                    Text(
                      "Forgot Password?",
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                TextButton(
                  onPressed: () {},
                  child: const Text("Sign In"),
                ),
                const SizedBox(height: 28),
                Center(
                  child: Text(
                    "Signin with",
                    style: Theme.of(context)
                        .textTheme
                        .headline5!
                        .copyWith(color: const Color(0xff868D95)),
                  ),
                ),
                const SizedBox(height: 36),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 60,
                      height: 58,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(
                          width: 1,
                          color: const Color(0xffD6D9E0),
                        ),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          "assets/images/apple.svg",
                        ),
                      ),
                    ),
                    const SizedBox(width: 30),
                    Container(
                      width: 60,
                      height: 58,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(
                          width: 1,
                          color: const Color(0xffD6D9E0),
                        ),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          "assets/images/google.svg",
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 29),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Not Registrar Yet?",
                      style: Theme.of(context).textTheme.headline5!.copyWith(
                          color: const Color(0xff868D95),
                          fontWeight: FontWeight.w600),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(
                                builder: (context) => const SignUpScreen()),
                            (Route<dynamic> route) => false);
                      },
                      child: Text(
                        " Sign Up",
                        style: Theme.of(context).textTheme.headline5!.copyWith(
                            color: const Color(0xff3580FF),
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
