import 'package:flutter/material.dart';

class ToppingICard extends StatelessWidget {
  final String imagePath;
  final String title;
  final VoidCallback onAdd;

  const ToppingICard({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.onAdd,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 120,
      decoration: BoxDecoration(
        color: Colors.brown[800],
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          // الصورة
          Material(
            color: Colors.white,
            elevation: 8,
            borderRadius: BorderRadius.circular(15),
            shadowColor: Colors.black,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Container(
                height: 80,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(imagePath),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),

          // الاسم + زرار +
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 8),
                GestureDetector(
                  onTap: onAdd,
                  child: Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.add, color: Colors.white, size: 18),
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
