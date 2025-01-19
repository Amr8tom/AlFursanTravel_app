import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fursan_travel_app/features/service_locator/service_locator.dart';
import 'package:fursan_travel_app/features/tours/presentation/controllers/tours/all_tours_cubit.dart';
import 'package:fursan_travel_app/routing/routes_name.dart';
import 'package:fursan_travel_app/utils/constants/api_constants.dart';
import 'package:fursan_travel_app/utils/constants/colors.dart';

import '../../../common/custom_ui.dart';
import '../../../common/widgets/appbar/appbar.dart';
import '../../../generated/l10n.dart';
import '../../../utils/constants/sizes.dart';
import 'widgets/custom_all_tours_screen_body.dart';

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
        child: BlocBuilder<AllToursCubit, AllToursState>(
          builder: (context, state) {
            if (state is AllToursSuccess) {
              return const CustomAllToursScreenBody();
            } else if (state is AllToursLoading) {
              return CustomUI.simpleLoader();
            } else {
              return CustomUI.tryLater();
            }
          },
        ),
      ),
    );
  }
}
