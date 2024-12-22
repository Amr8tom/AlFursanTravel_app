import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:fursan_travel_app/common/custom_ui.dart';
import 'package:fursan_travel_app/features/home/presentation/controllers/gallary/gallary_cubit.dart';
import 'package:fursan_travel_app/features/service_locator/service_locator.dart';
import 'package:fursan_travel_app/utils/constants/api_constants.dart';

class CustomDestinationHorizontalList extends StatelessWidget {
  const CustomDestinationHorizontalList({super.key});
  @override
  Widget build(BuildContext context) {
    double WidthScreen = MediaQuery.sizeOf(context).width;
    double hightScreen = MediaQuery.sizeOf(context).height;
    return BlocProvider(
      create: (context) => serviceLocator<GallaryCubit>(),
      child: Builder(builder: (context) {
        /// fetch Gallary data
        context.read<GallaryCubit>().getGalaryData();
        return BlocBuilder<GallaryCubit, GallaryState>(
          builder: (context, state) {
            if (state is GallarySuccess) {
              final items = state.gallaryModel.data;
              return Container(
                height: hightScreen /
                    2.9, // Set the container height based on AppSizes
                child: CarouselSlider.builder(
                    itemCount: items?.length,
                    itemBuilder: (context, index, indexpage) {
                      final destination = items?[index];
                      return Card(
                        elevation: 4.5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                          child: Stack(
                            children: [
                              CachedNetworkImage(
                                  fit: BoxFit.fill,
                                  // height: hightScreen / 2.5,
                                  width: WidthScreen,
                                  scale: 1,
                                  imageUrl:
                                      "${URL.image}${destination?.imageFilename}"),
                              Positioned(
                                left: 30.w,
                                bottom: 40.h,
                                child: Text(
                                  "",
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
                      // aspectRatio: 1.2,
                      autoPlay: true,
                    )),
              );
            } else {
              return SizedBox(
                height: hightScreen / 2.9,
                child: Center(
                  child: CustomUI.simpleLoader(),
                ),
              );
            }
          },
        );
      }),
    );
  }
}
