import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sayeer/common/widgets/gridenant_color/gradient_color.dart';
import 'package:sayeer/utils/constants/colors.dart';

class CarDetails extends StatefulWidget {
  @override
  _CarDetailsState createState() => _CarDetailsState();
}

class _CarDetailsState extends State<CarDetails> {
  bool showMore = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          TGradientColor(child: Container()),
          Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 50),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.arrow_back,
                            color: TColors.textWhite,
                          ),
                          onPressed: () {
                            Get.back();
                          },
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.favorite_border,
                            color: TColors.textWhite,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    Image.asset(
                      'assets/images/cars/image 11.png',
                      height: 200,
                    ),
                    Text(
                      'Lexus ES 2021',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '221,304 ريال',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: TColors.black,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 1,
                width: double.infinity,
                margin: EdgeInsets.only(bottom: 32),
                decoration: BoxDecoration(
                  color: TColors.primaryBackground,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 1,
                      blurRadius: 0.1,
                      offset: Offset(0, 1),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0),
                child: Column(
                  children: [
                    Visibility(
                      visible: !showMore,
                      child: Container(
                        height: 1,
                        width: double.infinity,
                        color: TColors.primaryBackground,
                      ),
                    ),
                    Theme(
                      data: Theme.of(context)
                          .copyWith(dividerColor: Colors.transparent),
                      child: ExpansionTile(
                        title: Text(
                          'نظرة عامة',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: TColors.black,
                          ),
                        ),
                        initiallyExpanded: true,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                'تقدم سيارة Lexus ES 2021 تجربة قيادة فريدة من نوعها بفضل تقنياتها الحديثة التي تضمن أعلى مستويات الراحة والأمان للسائق والركاب. تتميز السيارة بمحرك قوي وأداء متميز يجعلها الخيار الأمثل لعشاق القيادة.',
                                style: TextStyle(
                                    fontSize: 14, color: TColors.black),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  children: [
                    Details('اسم السيارة', 'Lexus ES 2021'),
                    Details('الأمان', 'IXS 5/5'),
                    Details('سنة التصنيع', '2021'),
                    if (showMore) ...[
                      Details('التقنيات الحديثة', 'HDS 5/5'),
                      Details('المحرك', 'Cylinder 4'),
                      Details('التحكم بالسرعة', 'High'),
                      Details('التقييم', 'High'),
                      Details('الجودة', 'High'),
                    ],
                    ListTile(
                      title: Text(
                        showMore ? 'إظهار أقل' : 'إظهار المزيد',
                        style: TextStyle(color: TColors.primaryBackground),
                      ),
                      trailing: Text(
                        showMore ? 'اقل' : 'المزيد',
                        style: TextStyle(color: TColors.black),
                      ),
                      onTap: () {
                        setState(() {
                          showMore = !showMore;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget Details(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          Text(
            value,
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}