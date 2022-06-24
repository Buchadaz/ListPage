import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _pageController = PageController();

  get indexBottomNavigationBar => 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Center(child: const Text('Aloooooooooo'))),
      body: PageView(
        controller: _pageController,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(color: Colors.lightGreen),
            child: const Center(
              child: Text(
                'FODASEEEE',
                style: TextStyle(color: Colors.white, fontSize: 40),
              ),
            ),
          ),
          Container(
            color: Colors.amber,
          ),
          Container(
            color: Colors.purple,
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: indexBottomNavigationBar,
          onTap: (int index) {
            setState(() {
              var indexBottomNavigationBar = index;
            });
            _pageController.animateToPage(index,
                duration: Duration(milliseconds: 300), curve: Curves.ease);
          },
          items: [
            const BottomNavigationBarItem(
                icon: Icon(Icons.abc), label: 'Item1'),
            const BottomNavigationBarItem(
                icon: const Icon(Icons.access_alarm_outlined), label: 'Item2'),
            const BottomNavigationBarItem(
                icon: const Icon(Icons.accessible_forward_sharp),
                label: 'Item3')
          ]),
    );
  }
}
