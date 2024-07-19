import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

mainReuseableText(String text, bool? isColor, bool? isMain) {
  return Text(
    text,
    style: GoogleFonts.poppins(
      textStyle: TextStyle(
        color: isMain == true ? Colors.green : Colors.white,
        fontSize: isColor == false ? 40 : 70,
        fontWeight: isColor == false ? FontWeight.bold : FontWeight.w300,
        fontFamily: "Poppins",
      ),
    ),
  );
}

simpleText(String text) {
  return Text(
    text,
    style: GoogleFonts.poppins(
      textStyle: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 25,
      ),
    ),
  );
}

reuseableIcon(IconData icon) {
  return Icon(
    icon,
    color: Colors.white,
    size: 50,
  );
}

reuseableText(String text) {
  return Text(
    text,
    style: GoogleFonts.poppins(
      textStyle: const TextStyle(
        color: Colors.white,
      ),
    ),
  );
}

secondReuseableText(String text) {
  return Text(
    text,
    style: GoogleFonts.poppins(
      textStyle: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 15,
      ),
    ),
  );
}

Widget buildTextField(
  String textType,
  String text,
  IconData iconname,
  String hintText,
  bool obscureText,
  void Function(String value)? func,
) {
  return Container(
    width: 350,
    height: 60,
    decoration: BoxDecoration(
      color: Colors.transparent,
      borderRadius: const BorderRadius.all(
        Radius.circular(
          15,
        ),
      ),
      border: Border.all(
        color: Colors.white,
      ),
    ),
    child: Row(
      children: [
        Container(
          margin: const EdgeInsets.only(
            left: 10,
            bottom: 5,
          ),
          width: 16,
          height: 16,
          child: Icon(
            iconname,
            color: Colors.white,
          ),
        ),
        const SizedBox(
          width: 7,
        ),
        SizedBox(
          width: 290,
          height: 60,
          child: TextField(
            onChanged: (value) => func!(value),
            obscureText: obscureText,
            keyboardType: TextInputType.multiline,
            decoration: InputDecoration(
              hintText: hintText,
              border: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.transparent,
                ),
              ),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.transparent,
                ),
              ),
              disabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.transparent,
                ),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.transparent,
                ),
              ),
              hintStyle: const TextStyle(
                color: Colors.white,
              ),
            ),
            style: const TextStyle(
              color: Colors.white,
              fontFamily: "Avenir",
              fontWeight: FontWeight.normal,
              fontSize: 14,
            ),
          ),
        ),
      ],
    ),
  );
}
