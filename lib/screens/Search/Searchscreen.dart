import 'package:flutter/material.dart';

class Searchscreen extends StatefulWidget {
  @override
  _SearchscreenState createState() => _SearchscreenState();
}

class _SearchscreenState extends State<Searchscreen> {
  final List<Item> _data = generateItems();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.white,
          ),
          Column(
            children: [
              Image.asset(
                'assets/images/Pattern/Pattern 2 - up.png',
              ),
            ],
          ),
          SafeArea(
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_back, color: Colors.black),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: TSearchContainer(
                    text: ' البحث مع ساير أسهل ',
                    onTap: () {},
                  ),
                ),
                const SizedBox(height: 20),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: _buildPanel(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPanel() {
    return SingleChildScrollView(
      child: Column(
        children: _data.map<Widget>((Item item) {
          return Theme(
            data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
            child: ExpansionTile(
              title: Text(
                item.title,
                textAlign: TextAlign.right,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              children: <Widget>[
                ListTile(
                  title: Text(
                    item.value,
                    textAlign: TextAlign.right,
                  ),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}

class Item {
  Item({
    required this.value,
    required this.title,
    this.isExpanded = false,
  });

  String value;
  String title;
  bool isExpanded;
}

//This List accept to Paramater 1) Title: name of the header!
//2) Value: This value can be anything as designed in figma
//3) Value can be dynamic and static from here.
List<Item> generateItems() {
  return [
    Item(
      title: 'أبرز السيارات',
      value: '',
    ),
    Item(
      title: 'العروض الخاصة',
      value: '',
    ),
    Item(
      title: 'وكالات السيارات',
      value: ' ',
    ),
    Item(
      title: 'معارض السيارات',
      value: '',
    ),
  ];
}

class TSearchContainer extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  TSearchContainer({
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: TextField(
        onTap: onTap,
        decoration: InputDecoration(
          hintText: text,
          contentPadding: EdgeInsets.symmetric(horizontal: 16),
          suffixIcon: Icon(Icons.search, color: Colors.black54),
        ),
        textAlign: TextAlign.right,
      ),
    );
  }
}
