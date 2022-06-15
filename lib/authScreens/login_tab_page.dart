import 'package:flutter/material.dart';
import 'package:shop_user_app/widgets/custom_text_field.dart';

class LoginTabPage extends StatefulWidget {
  const LoginTabPage({Key? key}) : super(key: key);

  @override
  State<LoginTabPage> createState() => _LoginTabPageState();
}

class _LoginTabPageState extends State<LoginTabPage> {
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController paswordTextEditingController = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Expanded(
            child: SizedBox(),
          ),
          Image.asset(
            "assets/splash1.png",
            height: MediaQuery.of(context).size.height * 0.25,
          ),
          const Expanded(
            child: SizedBox(),
          ),
          CustomTextField(
            textEditingController: emailTextEditingController,
            iconData: Icons.mail,
            hintText: "Email",
            isObscure: false,
            enabled: true,
          ),
          const SizedBox(
            height: 10,
          ),
          CustomTextField(
            textEditingController: paswordTextEditingController,
            iconData: Icons.lock,
            hintText: "Pasword",
            isObscure: false,
            enabled: true,
          ),
          const Expanded(
            flex: 2,
            child: SizedBox(),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(20, 0, 20, 10),
            padding: EdgeInsets.only(top: 2, left: 2),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: const Border(
                bottom: BorderSide(color: Colors.black),
                top: BorderSide(color: Colors.black),
                left: BorderSide(color: Colors.black),
                right: BorderSide(color: Colors.black),
              ),
            ),
            child: MaterialButton(
              minWidth: double.infinity,
              elevation: 0,
              color: Colors.pink,
              onPressed: () {},
              height: 60,
              child: Text(
                "log in",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
