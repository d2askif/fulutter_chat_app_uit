import 'package:flutter/material.dart';

class CategorySelector extends StatefulWidget {
  @override
  _CategorySelectorState createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
  int selectedIndex = 0;
  final List<String> categories = ['Message', 'Online', 'Groups', 'Requests'];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      color: Theme.of(context).primaryColor,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 30.0,
                ),
                child: Text(
                  categories[index],
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                    color:
                        selectedIndex == index ? Colors.white : Colors.white60,
                    letterSpacing: 1.2,
                  ),
                ),
              ),
            );
          }),
    );
  }
}
