import 'package:fitness/demo/items.dart';
import 'package:flutter/material.dart';

class ViewAllMeals extends StatefulWidget {
  const ViewAllMeals({super.key});

  @override
  State<ViewAllMeals> createState() => _ViewAllMealsState();
}

class _ViewAllMealsState extends State<ViewAllMeals> {
  final List<Items> _data = List<Items>.generate(1, (int index) {
    return Items(
      headerText: "View All 2000+ Meal Plans",
      expandedText: "This is item number $index",
    );
  });
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ExpansionPanelList(
        elevation: 3,
        dividerColor: Colors.white,
        animationDuration: const Duration(
          milliseconds: 1,
        ),
        expandIconColor: Colors.white,
        expansionCallback: (int index, bool isExpanded) {
          setState(
            () {
              _data[index].isExpanded = !isExpanded;
            },
          );
        },
        children: _data.map<ExpansionPanel>((Items item) {
          return ExpansionPanel(
            canTapOnHeader: true,
            backgroundColor: const Color(
              0xFF1c1c1c,
            ),
            headerBuilder: (BuildContext context, bool isExpanded) {
              return ListTile(
                title: Center(
                  child: Text(
                    item.headerText,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              );
            },
            body: ListTile(
              title: Text(
                item.expandedText,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            isExpanded: item.isExpanded,
          );
        }).toList(),
      ),
    );
  }
}
