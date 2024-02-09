import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_app/utils/spacing_widgets.dart';

class OwnerInfo extends StatelessWidget {
  const OwnerInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Positioned(
      bottom: size.height * .04,
      child: Container(
        width: size.width,
        padding: const EdgeInsets.symmetric(
          horizontal: 24.0,
        ),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                const CircleAvatar(
                  radius: 25.0,
                  backgroundImage: AssetImage('assets/dog1.jpg'),
                ),
                addHorizontalSpace(12.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(
                          'Aadarsh',
                          style: GoogleFonts.montserrat(
                            color: Colors.grey[800],
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0,
                          ),
                        ),
                        addHorizontalSpace(75.0),
                        Text(
                          'Feb 10 2024',
                          style: GoogleFonts.montserrat(
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'owner',
                      style: GoogleFonts.montserrat(
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            addVerticalSpace(8.0),
            Text(
              'As I am a college student and I am not in a position to take my cat with me. I would like someone to care for my cat.',
              style: GoogleFonts.montserrat(
                height: 1.5,
                color: Colors.grey[600],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
