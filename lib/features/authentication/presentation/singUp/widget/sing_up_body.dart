import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fursan_travel_app/features/authentication/presentation/controller/sing_up/sing_up_cubit.dart';
import 'package:fursan_travel_app/features/service_locator/service_locator.dart';

import '../../../../../utils/constants/sizes.dart';
import 'custom_sgin_up_from.dart';

class SingUpBody extends StatelessWidget {
  const SingUpBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(AppSizes.padding),
      child: BlocProvider(
        create: (context) => serviceLocator<SingUpCubit>(),
        child: const CustomSginUpFrom(),
      ),
    );
  }
}
