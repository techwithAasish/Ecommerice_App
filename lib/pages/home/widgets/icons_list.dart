import 'package:ecommerce/models/icon_image.dart';
import 'package:flutter/material.dart';

final List<IconImage> headerImage = IconImage.icons;

Widget buildIconList() => Padding(
      padding: EdgeInsets.only(bottom: 8),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(
              headerImage.length,
              (index) => Container(
                    width: 100,
                    child: Column(
                      children: [
                        Image.asset(
                          headerImage[index].icon,
                          width: 50,
                          height: 50,
                        ),
                        Text(
                          headerImage[index].title,
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  )),
        ),
      ),
    );
