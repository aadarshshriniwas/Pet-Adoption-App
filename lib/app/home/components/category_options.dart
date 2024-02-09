import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_app/app/common_widgets/sized_box.dart';
import 'package:pet_app/utils/constants.dart';
import 'package:pet_app/utils/sample_data.dart';
import 'package:pet_app/utils/spacing_widgets.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  late List<bool> categoryStates;

  @override
  void initState() {
    super.initState();
    // Initialize the categoryStates list with false (not active) for each category
    categoryStates = List.generate(categories.length, (index) => false);

    // Set the initial state of the first category to active
    if (categoryStates.isNotEmpty) {
      categoryStates[0] = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      child: Row(
        children: List.generate(categories.length, (index) {
          final category = categories[index];
          return Row(
            children: <Widget>[
              SizedBox(width: 8.0), // Add horizontal space
              GestureDetector(
                onTap: () {
                  // Update the states to deactivate the previously active category
                  setState(() {
                    for (int i = 0; i < categoryStates.length; i++) {
                      if (i != index) {
                        categoryStates[i] = false;
                      }
                    }
                    // Toggle the active state for the tapped category
                    categoryStates[index] = !categoryStates[index];
                  });
                },
                child: Column(
                  children: <Widget>[
                    BorderBox(
                      color:
                          categoryStates[index] ? primaryColor : Colors.white,
                      padding: const EdgeInsets.all(8.0),
                      width: 65.0,
                      height: 65.0,
                      child: Image(
                        image: AssetImage('${category["icon"]}'),
                        fit: BoxFit.contain,
                        color:
                            categoryStates[index] ? Colors.white : primaryColor,
                      ),
                    ),
                    addVerticalSpace(12.0),
                    Text(
                      category['name'],
                      style: GoogleFonts.montserrat(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w500,
                        color: primaryColor,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}
