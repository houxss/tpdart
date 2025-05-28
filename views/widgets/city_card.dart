import 'package:flutter/material.dart';

class CityCard extends StatelessWidget {
  final String name;
  final String image;
  final bool checked;
  final VoidCallback updateChecked;

  const CityCard({
    super.key,
    required this.name,
    required this.image,
    required this.checked,
    required this.updateChecked,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: SizedBox(
        height: 150,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Ink.image(
              image: AssetImage(image),
              fit: BoxFit.cover,
              child: InkWell(onTap: updateChecked),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          checked ? Icons.star : Icons.star_border,
                          size: 30,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        name,
                        style: const TextStyle(fontSize: 30, color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
