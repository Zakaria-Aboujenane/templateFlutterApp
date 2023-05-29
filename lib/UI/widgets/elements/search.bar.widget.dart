import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchBarWidget extends StatelessWidget {
  final double height, width;
  final int durationMS = 200;

  SearchBarWidget({Key? key, required this.height, required this.width})
      : super(key: key);
  var searchValue = "";

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      duration: Duration(milliseconds: durationMS),
      tween: Tween<double>(begin: 0, end: 0.6),
      builder: (BuildContext context, double value, Widget? child) {
        return SizedBox(
          height: height * 0.7,
          width: width * value,
          child: child,
        );
      },
      child: TextField(
        style: GoogleFonts.poppins(
          color: const Color(0xff020202),
          fontSize: 20,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.5,
          height: 1.0,
        ),
        onChanged: _handleSearch,
        decoration: InputDecoration(
          filled: true,
          fillColor: const Color(0xfff1f1f1),
          contentPadding: EdgeInsets.symmetric(vertical: height * 0.1),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          hintText: "Search for Items",
          hintStyle: GoogleFonts.poppins(
              color: const Color(0xffb2b2b2),
              fontSize: 20,
              fontWeight: FontWeight.w400,
              letterSpacing: 0.5,
              decorationThickness: 3),
          suffix: GestureDetector(
            onTap:_onclickSearchButton,
            child:
                Icon(Icons.search_sharp, color: Theme.of(context).primaryColor),
          ),
          prefixText: "   ",
        ),
      ),
    );
  }

  _handleSearch(value) {
    searchValue = value;
  }
  _onclickSearchButton(){
    // value in searchValue
  }
}
