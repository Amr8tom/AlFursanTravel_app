import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CustomDestinationHorizontalList extends StatelessWidget {
  final List<Map<String, String>> items;
  const CustomDestinationHorizontalList({super.key, required this.items});
  @override
  Widget build(BuildContext context) {
    double WidthScreen = MediaQuery.sizeOf(context).width;
    double hightScreen = MediaQuery.sizeOf(context).height;
    return Container(
      height: hightScreen / 2.9, // Set the container height based on AppSizes
      child: CarouselSlider.builder(
          itemCount: items.length,
          itemBuilder: (context, index, indexpage) {
            final destination = items[index];
            return Card(
              elevation: 4.5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                child: Stack(
                  children: [
                    Image.asset(
                      destination['image']!,
                      fit: BoxFit.cover,
                      height: hightScreen / 2.5,
                      width: WidthScreen / 1.2,
                    ),
                    Positioned(
                      left: 30.w,
                      bottom: 40.h,
                      child: Text(
                        destination['name']!,
                        style: Theme.of(context)
                            .textTheme
                            .labelMedium
                            ?.copyWith(color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
            );
          },
          options: CarouselOptions(
            autoPlay: true,
          )),
    );
  }
}
