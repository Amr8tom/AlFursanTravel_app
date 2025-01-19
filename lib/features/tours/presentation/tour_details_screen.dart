import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fursan_travel_app/features/tours/presentation/widgets/custom_card_tour_widget.dart';
import 'package:fursan_travel_app/features/tours/presentation/widgets/custom_tour_details.dart';
import '../../../common/custom_ui.dart';
import '../../../common/widgets/appbar/appbar.dart';
import '../../../generated/l10n.dart';
import '../../../routing/routes_name.dart';
import '../../../utils/constants/api_constants.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/device/device_utility.dart';
import '../../authentication/presentation/controller/log/login_cubit.dart';
import '../../service_locator/service_locator.dart';
import '../../visas/presentation/widget/custom_booking_button.dart';
import 'controllers/tour_details/tour_details_cubit.dart';

class TourDetailsScreen extends StatelessWidget {
  final String slugID;
  const TourDetailsScreen({super.key, required this.slugID});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DAppBar(
        title: S.current.tourDetails,
        fontSize: AppSizes.fontSizeMd,
        showBackArrow: true,
      ),
      body: BlocProvider(
        create: (context) => serviceLocator<TourDetailsCubit>(),
        child: Builder(builder: (context) {
          context.read<TourDetailsCubit>().getTourDetails(slugID: slugID);
          return BlocBuilder<TourDetailsCubit, TourDetailsState>(
            builder: (context, state) {
              if (state is TourDetailsSuccess) {
                return Padding(
                  padding: EdgeInsets.all(AppSizes.padding),
                  child: Stack(
                    children: [
                      Container(
                        height: DDeviceUtils.getScreenHeight(context),
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              /// flag and price
                              CustomCardTourWidget(
                                  price:
                                      "${state?.tourDetailsModel!.tktSinglePrice}",
                                  imagePath:
                                      "${URL.image}${state.tourDetailsModel.images?[0].imageFilename}"),
                              SizedBox(height: AppSizes.space),

                              /// informations
                               CustomTourDetails(
                                icon: Icons.short_text_rounded,
                                title: S.current.information,
                                body:
                                    state.tourDetailsModel.infoAr??S.current.noData,
                              ),

                              /// size
                              SizedBox(
                                height: AppSizes.spaceBtwItems,
                              ),

                              /// requirements
                              CustomTourDetails(
                                icon: Icons.playlist_add_check_rounded,
                                title: S.current.requirements,
                                body:S.current.noData,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: CustomBookingButton(onTab: () {
                            final controller = context.read<LoginCubit>();
                            controller.isGuest
                                ? Navigator.pushNamed(
                                    context, DRoutesName.loginRoute)
                                : Navigator.pushNamed(context,
                                    DRoutesName.makeTourReservationRoute);
                          })),
                    ],
                  ),
                );
              } else if (state is TourDetailsLoading) {
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
