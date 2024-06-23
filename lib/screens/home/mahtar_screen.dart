import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sayeer/common/widgets/gridenant_color/gradient_color.dart';
import 'package:sayeer/utils/constants/sizes.dart';

class MahtarScreen extends StatefulWidget {
  const MahtarScreen();

  @override
  _MahtarScreenState createState() => _MahtarScreenState();
}

class _MahtarScreenState extends State<MahtarScreen> {
  List<String> userInput = [
    '',
    '',
    '',
    '2'
  ]; // Set a default value for the DropdownButton

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TGradientColor(
        child: Container(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              // SizedBox(height: 200),
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Iconsax.money),
                  labelText: 'Salary',
                ),
                onChanged: (value) {
                  userInput[0] = value;
                },
              ),
              SizedBox(height: TSizes.spaceBtwItems),
              CheckboxListTile(
                title: Text('Commitments (if any)'),
                value: userInput[1] == 'true',
                onChanged: (value) {
                  setState(() {
                    userInput[1] = value != null && value ? 'true' : '';
                  });
                },
              ),
              if (userInput[1] == 'true')
                Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Commitments Amount',
                      ),
                      onChanged: (value) {
                        userInput[2] = value;
                      },
                    ),
                    SizedBox(height: TSizes.spaceBtwItems),
                  ],
                ),
              InputDecorator(
                decoration: InputDecoration(
                  labelText: 'Salary Transfer Entity',
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                  border: OutlineInputBorder(),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    value: userInput[3],
                    onChanged: (value) {
                      setState(() {
                        userInput[3] = value ?? '';
                      });
                    },
                    items: [
                      DropdownMenuItem(
                        value: 'Entity 1',
                        child: Text('Entity 1'),
                      ),
                      DropdownMenuItem(
                        value: 'Entity 2',
                        child: Text('Entity 2'),
                      ),
                      DropdownMenuItem(
                        value: 'Entity 3',
                        child: Text('Entity 3'),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: TSizes.spaceBtwItems),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // Save userInput list
                    print(userInput);
                  },
                  child: Text('Save'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
