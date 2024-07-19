import 'package:fitness/components/app_bar_components.dart';
import 'package:fitness/components/dietary_button_components.dart';
import 'package:fitness/components/my_button.dart';
import 'package:fitness/edit/edit_calories.dart';
import 'package:fitness/widgets/common_widgets.dart';
import 'package:flutter/material.dart';

class EditTags extends StatefulWidget {
  const EditTags({super.key});

  @override
  _EditTagsState createState() => _EditTagsState();
}

class _EditTagsState extends State<EditTags> {
  final Set<String> _selectedTags = <String>{};

  void _toggleTag(String tag) {
    setState(() {
      if (_selectedTags.contains(tag)) {
        _selectedTags.remove(tag);
      } else {
        _selectedTags.add(tag);
      }
    });
  }

  void _removeTag(String tag) {
    setState(() {
      _selectedTags.remove(tag);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF000000),
      body: ListView(
        children: [
          Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 40),
                  const AppBarComponents(),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: Stack(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            mainReuseableText("Edit\nTags", false, false),
                            const SizedBox(height: 10),
                            Text(
                              "Picky eater? Meet your best friend",
                              style: TextStyle(color: Colors.grey.shade600),
                            ),
                          ],
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: MyButton(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const EditCalories(),
                                ),
                              );
                            },
                            text: "Update",
                            isTrue: true,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Divider(color: Color(0xFF474747)),
              const SizedBox(height: 40),

              // Display selected tags
              Wrap(
                spacing: 8.0,
                children: _selectedTags.map((tag) {
                  return Chip(
                    label: Text(tag),
                    onDeleted: () => _removeTag(tag),
                    backgroundColor: _getTagColor(tag),
                  );
                }).toList(),
              ),
              const SizedBox(height: 20),

              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.all(10),
                    width: MediaQuery.of(context).size.width,
                    height: 500,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: const Color(0xFF131313),
                    ),
                    child: Column(
                      children: [
                        const SizedBox(height: 15),
                        _buildDietaryRow(["Diet", "Allergy", "Cuisine"]),
                        const SizedBox(height: 15),
                        _buildDietaryRow(["Time", "Ingredients", "Cost"]),
                        const SizedBox(height: 15),
                        _buildDietaryRow(["Nutrients", "Skills", "Time"]),
                        const SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            _buildDietaryButton("Cost"),
                            const SizedBox(width: 10),
                            _buildDietaryButton("Season"),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildDietaryRow(List<String> tags) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: tags.map((tag) => _buildDietaryButton(tag)).toList(),
    );
  }

  Widget _buildDietaryButton(String tag) {
    return DietaryButtonComponents(
      color: _getTagColor(tag),
      text: tag,
      onTap: () => _toggleTag(tag),
    );
  }

  Color _getTagColor(String tag) {
    switch (tag) {
      case "Diet":
      case "Time":
        return const Color(0xFFff52d0);
      case "Allergy":
        return const Color(0xFFff5635);
      case "Cuisine":
        return const Color(0xFF5a37ff);
      case "Ingredients":
        return const Color(0xFF825af1);
      case "Cost":
        return const Color(0xFFed6cca);
      case "Nutrients":
        return const Color(0xFFb133ff);
      case "Skills":
        return const Color(0xFF0095ff);
      case "Season":
        return const Color(0xFF713fff);
      default:
        return Colors.grey;
    }
  }
}
