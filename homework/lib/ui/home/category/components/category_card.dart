import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final Color color;
  final String title;
  const CategoryCard({Key? key, required this.color, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Theme.of(context).colorScheme.primaryContainer,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: color,
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 6.0,
          )
        ]
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
