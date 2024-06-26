import 'package:flutter/material.dart';
import 'package:sayeer/common/widgets/products.cart/product_cards.dart';
import 'package:sayeer/screens/Search/Filter.dart';
import 'package:sayeer/utils/constants/sizes.dart';
// import 'package:sayeer/common/widgets/products.cart/product_cards.dart';
// import 'package:sayeer/utils/constants/sizes.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  void _showSortAndFilterPopup(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) => FilterPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.white,
          ),
          // Pattern
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
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Center(
                    child: Text(
                      'نتائج البحث',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                // Filter
                SizedBox(
                  height: 70,
                  child: ListView.builder(
                    clipBehavior: Clip.none,
                    shrinkWrap: false,
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, index) {
                      List<Map<String, dynamic>> FilterList = [
                        {
                          'icon': Icons.filter_list,
                          'text': 'ترتيب حسب',
                          'onPressed': () => _showSortAndFilterPopup(context)
                        },
                        {
                          'icon': Icons.favorite_outline,
                          'text': 'الاكثر تفضيلًا'
                        },
                        {
                          'icon': Icons.directions_car_outlined,
                          'text': 'الأقل تكلفة'
                        },
                      ];
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: OutlinedButton(
                          onPressed: FilterList[index]['onPressed'] ?? () {},
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(color: Colors.black),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              if (FilterList[index]['icon'] != null)
                                Icon(
                                  FilterList[index]['icon'],
                                  color: Colors.black,
                                ),
                              if (FilterList[index]['icon'] != null)
                                SizedBox(width: 8),
                              Text(
                                FilterList[index]['text'],
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                // SingleChildScrollView(
                //   child: Padding(
                //     padding: const EdgeInsets.symmetric(
                //         horizontal: TSizes.defaultSpace, vertical: TSizes.sm),
                //     child: Column(
                //       children: List.generate(4, (index) {
                //         return Padding(
                //           padding: const EdgeInsets.only(
                //             bottom: TSizes.md,
                //           ),
                //           child: SizedBox(
                //             height: 260,
                //             child: TProductCardVertical(),
                //           ),
                //         );
                //       }),
                //     ),
                //   ),
                // )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
