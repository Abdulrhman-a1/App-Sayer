import 'package:flutter/material.dart';
import 'package:sayeer/utils/constants/colors.dart';

class FilterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back, color: Colors.black),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'اعادة التعيين',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.all(16.0),
                children: [
                  Text(
                    'ترتيب حسب',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  RadioListTile(
                    title: Text('الأعلى تكلفة'),
                    value: 'Max',
                    groupValue: 'SortByPrice',
                    onChanged: (value) {},
                  ),
                  RadioListTile(
                    title: Text('الأقل تكلفة'),
                    value: 'Min',
                    groupValue: 'SortByPrice',
                    onChanged: (value) {},
                  ),
                  RadioListTile(
                    title: Text('الأحدث'),
                    value: 'New',
                    groupValue: 'SortByDate',
                    onChanged: (value) {},
                  ),
                  RadioListTile(
                    title: Text('الأقدم'),
                    value: 'Old',
                    groupValue: 'SortByDate',
                    onChanged: (value) {},
                  ),
                  SizedBox(height: 32),
                  Text(
                    'تصفية حسب',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ListTile(
                    title: Text('الفئات'),
                    trailing: Icon(Icons.chevron_right),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text('الألوان'),
                    trailing: Icon(Icons.chevron_right),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text('سنة التصنيع'),
                    trailing: Icon(Icons.chevron_right),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text('السعر'),
                    trailing: Icon(Icons.chevron_right),
                    onTap: () {},
                  ),
                  SizedBox(height: 32),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'عرض النتائج',
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall!
                            .apply(color: TColors.white),
                      ),
                    ),
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
