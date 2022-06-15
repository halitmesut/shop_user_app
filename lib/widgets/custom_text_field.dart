import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  TextEditingController? textEditingController;
  IconData? iconData;
  String? hintText;
  bool? isObscure = true;
  bool? enabled = true;

  CustomTextField(
      {this.textEditingController,
      this.iconData,
      this.hintText,
      this.isObscure,
      this.enabled});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.all(Radius.circular(30))),
        padding: EdgeInsets.symmetric(vertical: 2, horizontal: 10),
        margin: const EdgeInsets.all(2),
        child: TextField(
          enabled: widget.enabled,
          controller: widget.textEditingController,
          obscureText: widget.isObscure!,
          cursorColor: Theme.of(context).primaryColor,
          decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                ),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                ),
              ),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              prefixIcon: Icon(
                widget.iconData,
                color: Colors.black,
              ),
              focusColor: Theme.of(context).primaryColor,
              hintText: widget.hintText),
        ),
      ),
    );
  }
}
