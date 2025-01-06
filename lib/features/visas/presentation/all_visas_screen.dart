import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fursan_travel_app/features/visas/presentation/controllers/all_visas/get_all_visas_cubit.dart';
import 'package:fursan_travel_app/routing/routes_name.dart';
import 'package:fursan_travel_app/utils/constants/colors.dart';

import '../../../common/custom_ui.dart';
import '../../../common/widgets/appbar/appbar.dart';
import '../../../generated/l10n.dart';
import '../../../utils/constants/api_constants.dart';
import '../../../utils/constants/sizes.dart';
import '../../service_locator/service_locator.dart';

class AllVisasScreen extends StatelessWidget {
  const AllVisasScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DAppBar(
        showBackArrow: true,
        title: S.current.visa,
      ),
      body: BlocProvider(
        create: (context) => serviceLocator<GetAllVisasCubit>(),
        child: Builder(builder: (context) {
          context.read<GetAllVisasCubit>().getAllVisas();
          return BlocBuilder<GetAllVisasCubit, GetAllVisasState>(
            builder: (context, state) {
              if (state is GetAllVisasSuccess) {
                final items = state.allVisasMode;
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
                        itemCount: items.visas?.length,
                        itemBuilder: (context, index) {
                          // Get the current destination item
                          final destination = items.visas?[index];
                          return GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(
                                  context, DRoutesName.visaDetailsRoute,
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
                                    borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(8.0)),
                                    child: Image.network(
                                      "${URL.image}${destination?.featuredImage?.imageFilename}",
                                      fit: BoxFit.cover,
                                      height:
                                         AppSizes.spaceBtwSections*4, // Adjust the height of the image
                                      width: double.infinity,
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      width: double.infinity,
                                      color:ColorRes.grey,
                                      child: Center(
                                        child: Text(
                                          destination!.titleEn!.toString(),
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
              } else if (state is GetAllVisasLoading) {
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
