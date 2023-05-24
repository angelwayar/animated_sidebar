import 'package:flutter/material.dart';

class Customcontainer extends StatelessWidget {
  final String title;
  final String description;
  final String image;
  final String imageProfile;
  final Color color;

  const Customcontainer({
    super.key,
    required this.title,
    required this.description,
    required this.image,
    required this.imageProfile,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260.0,
      width: 260.0,
      padding: const EdgeInsets.all(12.0),
      margin: const EdgeInsets.all(24.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24.0),
        color: color,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Image.network(
                image,
                height: 40.0,
              ),
            ],
          ),
          const SizedBox(height: 12.0),
          Text(
            description,
            style: TextStyle(
              color: Colors.white.withOpacity(0.8),
              fontSize: 16.0,
            ),
          ),
          const Spacer(),
          Expanded(
            child: Stack(
              children: [
                Positioned(
                  left: 10.0,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50.0),
                    child: Image.network(imageProfile, height: 40.0),
                  ),
                ),
                Positioned(
                  left: 45.0,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50.0),
                    child: Image.network(imageProfile, height: 40.0),
                  ),
                ),
                Positioned(
                  left: 75.0,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50.0),
                    child: Image.network(imageProfile, height: 40.0),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
