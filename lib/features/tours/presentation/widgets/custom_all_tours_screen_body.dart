import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fursan_travel_app/features/tours/presentation/controllers/tours/all_tours_cubit.dart';

import '../../../../routing/routes_name.dart';
import '../../../../utils/constants/api_constants.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';

class CustomAllToursScreenBody extends StatelessWidget {
  const CustomAllToursScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AllToursCubit,AllToursState>(builder: (context,state){
      if (state is AllToursSuccess) {
        final items = state.allToursModel.tours;
        return Column(
          children: [
            SizedBox(
              height: AppSizes.space,
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0,
                ),
                itemCount: items?.length,
                itemBuilder: (context, index) {
                  final destination = items?[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(
                          context, DRoutesName.tourDetailsRoute,
                          arguments: destination.slug.toString());
                    },
                    child: Card(
                      elevation: 4.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.vertical(top: Radius.circular(8.0)),
                            child: CachedNetworkImage(
                              imageUrl: "${URL.image}${destination?.images?[0].imageFilename}",
                              fit: BoxFit.cover,
                              height: 120.0, // Adjust the height of the image
                              width: double.infinity,
                              placeholder: (context, url) => Center(
                                child: CircularProgressIndicator(), // Show a loading indicator while fetching the image
                              ),
                              errorWidget: (context, url, error) => Icon(Icons.error), // Show an error icon if the image fails to load
                            ),
                          ),
                          Expanded(
                            child: Container(
                              width: double.infinity,
                              color: ColorRes.grey,
                              child: Center(
                                child: Text(
                                  destination!.nameAr!.toString(),
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.0,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        );
      }else{
        return SizedBox();
      }
    });
  }
}
