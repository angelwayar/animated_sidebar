import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String title;
  final String description;
  final String image;
  final Color color;

  const CustomCard({
    super.key,
    required this.title,
    required this.description,
    required this.image,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      margin: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(24.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                description,
                style: TextStyle(
                  color: Colors.white.withOpacity(0.8),
                  fontSize: 18.0,
                ),
              ),
            ],
          ),
          const VerticalDivider(
            color: Colors.white,
            thickness: 0.5,
            indent: 20,
            endIndent: 20,
          ),
          Image.network(image, height: 40.0)
        ],
      ),
    );
  }
}
