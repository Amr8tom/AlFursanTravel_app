import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fursan_travel_app/features/service_locator/service_locator.dart';
import 'package:fursan_travel_app/features/tours/presentation/controllers/tours/all_tours_cubit.dart';
import 'package:fursan_travel_app/utils/constants/api_constants.dart';

import '../../../common/custom_ui.dart';
import '../../../common/widgets/appbar/appbar.dart';
import '../../../generated/l10n.dart';
import '../../../utils/constants/sizes.dart';

class AllToursScreen extends StatelessWidget {
  const AllToursScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DAppBar(
        showBackArrow: true,
        title: S.current.tours,
      ),
      body: BlocProvider(
        create: (context) => serviceLocator<AllToursCubit>(),
        child: Builder(builder: (context) {
          context.read<AllToursCubit>().getAllTours();
          return BlocBuilder<AllToursCubit, AllToursState>(
            builder: (context, state) {
              if (state is AllToursSuccess) {
                final items = state.allToursModel.tours;
                return Column(
                  children: [
                    SizedBox(
                      height: AppSizes.space,
                    ),
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
                          // Get the current destination item
                          final destination = items?[index];
                          return Card(
                            elevation: 4.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(8.0)),
                                  child: Image.network(
                                    "${URL.image}${destination?.image?.imageFilename}",
                                    fit: BoxFit.cover,
                                    height:
                                        120.0, // Adjust the height of the image
                                    width: double.infinity,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    destination!.nameAr!.toString(),
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.0,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                );
              } else if (state is AllToursLoading) {
                return CustomUI.simpleLoader();
              } else {
                return CustomUI.tryLater();
              }
            },
          );
        }),
      ),
    );
  }
}
