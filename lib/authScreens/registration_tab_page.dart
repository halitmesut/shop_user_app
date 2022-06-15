import 'package:flutter/material.dart';
import 'package:shop_user_app/widgets/custom_text_field.dart';

class RegistrationTabPage extends StatefulWidget {
  const RegistrationTabPage({Key? key}) : super(key: key);

  @override
  State<RegistrationTabPage> createState() => _RegistrationTabPageState();
}

class _RegistrationTabPageState extends State<RegistrationTabPage> {
  TextEditingController nameTextEditingController = TextEditingController();
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController paswordTextEditingController = TextEditingController();
  TextEditingController confirmPaswordTextEditingController =
      TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: SizedBox(),
          ),
          Image.asset(
            "assets/splash1.png",
            height: MediaQuery.of(context).size.height * 0.25,
          ),
          Expanded(
            child: SizedBox(),
          ),
          CustomTextField(
            textEditingController: nameTextEditingController,
            iconData: Icons.person,
            hintText: "Name",
            isObscure: false,
            enabled: true,
          ),
          SizedBox(
            height: 10,
          ),
          CustomTextField(
            textEditingController: emailTextEditingController,
            iconData: Icons.mail,
            hintText: "Email",
            isObscure: false,
            enabled: true,
          ),
          SizedBox(
            height: 10,
          ),
          CustomTextField(
            textEditingController: paswordTextEditingController,
            iconData: Icons.lock,
            hintText: "Pasword",
            isObscure: false,
            enabled: true,
          ),
          SizedBox(
            height: 10,
          ),
          CustomTextField(
            textEditingController: confirmPaswordTextEditingController,
            iconData: Icons.lock,
            hintText: "Confirm Pasword",
            isObscure: false,
            enabled: true,
          ),
          Expanded(
            child: SizedBox(),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(20, 0, 20, 10),
            padding: EdgeInsets.only(top: 2, left: 2),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border(
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
