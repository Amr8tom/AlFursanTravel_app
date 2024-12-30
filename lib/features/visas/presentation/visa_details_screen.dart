import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fursan_travel_app/common/custom_ui.dart';
import 'package:fursan_travel_app/common/widgets/appbar/appbar.dart';
import 'package:fursan_travel_app/features/visas/presentation/widget/custom_booking_button.dart';
import 'package:fursan_travel_app/features/visas/presentation/widget/custom_visa_card_widget.dart';
import 'package:fursan_travel_app/utils/constants/api_constants.dart';
import 'package:fursan_travel_app/utils/constants/sizes.dart';
import '../../../generated/l10n.dart';
import '../../../routing/routes_name.dart';
import '../../../utils/device/device_utility.dart';
import '../../authentication/presentation/controller/log_in/login_cubit.dart';
import '../../service_locator/service_locator.dart';
import 'controllers/visa_details/visa_details_cubit.dart';
import 'widget/custom_visa_details.dart';

class VisaDetailsScreen extends StatelessWidget {
  final String slugId;
  const VisaDetailsScreen({super.key, required this.slugId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DAppBar(
        title: S.current.visaDetails,
        fontSize: AppSizes.fontSizeMd,
        showBackArrow: true,
      ),
      body: BlocProvider(
        create: (context) => serviceLocator<VisaDetailsCubit>(),
        child: Builder(builder: (context) {
          context.read<VisaDetailsCubit>().getVisaDetails(slugId: slugId);
          return BlocBuilder<VisaDetailsCubit, VisaDetailsState>(
            builder: (context, state) {
              if (state is VisaDetailsSuccess) {
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
                              CustomVisaCardWidget(
                                  price: "${state?.visaDetailsModel!.price}",
                                  imagePath:
                                      "${URL.image}${state.visaDetailsModel.featuredImage?.imageFilename}"),
                              SizedBox(height: AppSizes.space),

                              /// informations
                              const CustomVisaDetails(
                                icon: Icons.short_text_rounded,
                                title: "informations",
                                body: "60\$",
                              ),

                              /// size
                              SizedBox(
                                height: AppSizes.spaceBtwItems,
                              ),

                              /// requirements
                              const CustomVisaDetails(
                                icon: Icons.playlist_add_check_rounded,
                                title: "requirements",
                                body:
                                    "amr alaa ali fursan_app 21/12/2024 egypt cairo giza haram "
                                    "123 "
                                    ".......... sssss.........aaaaaaaaa........aaaa...kjknm ",
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
                                    DRoutesName.makeVisaReservationRoute,
                                    arguments:
                                        "${state?.visaDetailsModel!.id}");
                            ;
                          })),
                    ],
                  ),
                );
              } else if (state is VisaDetailsLoading) {
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
