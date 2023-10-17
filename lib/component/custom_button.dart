import 'package:flutter/material.dart';


class CustomButton extends StatelessWidget {
  Function onTap;
  String text;
  CustomButton({
    Key? key,
    required this.onTap,
    required this.text,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: ElevatedButton(
        onPressed: () => onTap(),
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.pink,
            shape: RoundedRectangleBorder(borderRadius:  BorderRadius.circular(10))),
        child: Text(
          text,
          style: const TextStyle(
              color:  Color(0xffFAFBFC), fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
    );
  }
}
