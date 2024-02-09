import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_app/utils/constants.dart';

class SearchBarr extends StatelessWidget {
  const SearchBarr({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      width: double.infinity,
      height: 50.0,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          width: 1,
          color: const Color.fromRGBO(224, 224, 224, 1),
        ),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Icon(
            Icons.search_rounded,
            size: 30.0,
            color: primaryColor,
          ),
          const SizedBox(width: 8.0),
          Expanded(
            child: TextField(
              style: GoogleFonts.montserrat(
                fontSize: 16.0,
                fontWeight: FontWeight.w300,
                color: primaryColor,
              ),
              decoration: InputDecoration(
                hintText: 'Search for pets to adopt',
                hintStyle: GoogleFonts.montserrat(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w300,
                  color: primaryColor.withOpacity(0.7),
                ),
                border: InputBorder.none,
              ),
            ),
          ),
          const Spacer(),
          const Icon(
            Icons.filter_alt_outlined,
            color: primaryColor,
          )
        ],
      ),
    );
  }
}
