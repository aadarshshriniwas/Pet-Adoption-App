import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_app/app/common_widgets/sized_box.dart';
import 'package:pet_app/utils/constants.dart';

class CustomBottomBar extends StatefulWidget {
  const CustomBottomBar({Key? key}) : super(key: key);

  @override
  _CustomBottomBarState createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  bool isAdopted = false;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.all(28.0),
      width: size.width,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: const BorderRadius.horizontal(
          left: Radius.circular(30.0),
          right: Radius.circular(30.0),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          const BorderBox(
            width: 60.0,
            height: 50.0,
            padding: EdgeInsets.all(5.0),
            color: primaryColor,
            child: Icon(
              Icons.favorite_outline_rounded,
              color: Colors.white,
            ),
          ),
          GestureDetector(
            onTap: () {
              if (!isAdopted) {
                _showAdoptionDialog(context);
              }
            },
            child: Container(
              width: size.width * .65,
              height: 50.0,
              decoration: BoxDecoration(
                boxShadow: myShadow,
                color: isAdopted ? Colors.grey : primaryColor,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Center(
                child: Text(
                  isAdopted ? 'Adopted' : 'Adopt Me',
                  style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _showAdoptionDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Confirm Adoption'),
          content: const Text('Are you sure you want to adopt this pet?'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('No'),
              style: TextButton.styleFrom(
                primary: Colors.red, // Change the color to your preferred color
              ),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  isAdopted = true;
                });
                Navigator.of(context).pop();
              },
              child: const Text('Yes'),
            ),
          ],
        );
      },
    );
  }
}
