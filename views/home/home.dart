import 'package:flutter/material.dart';
import '../widgets/city_card.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => HomeState();
}

class HomeState extends State<Home> {
  List cities = [
    {'name': 'Paris', 'image': 'images/paris.jpg', 'checked': false},
    {'name': 'Lyon', 'image': 'images/lyon.jpg', 'checked': false},
    {'name': 'Nice', 'image': 'images/nice.jpg', 'checked': false},
  ];

  void switchChecked(city) {
    var index = cities.indexOf(city);
    setState(() {
      cities[index]['checked'] = !cities[index]['checked'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.home),
        title: const Text('DrEvaristen Trip'),
        actions: const [Icon(Icons.more_vert)],
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            for (var city in cities)
              CityCard(
                name: city['name'],
                image: city['image'],
                checked: city['checked'],
                updateChecked: () => switchChecked(city),
              ),
          ],
        ),
      ),
    );
  }
}
