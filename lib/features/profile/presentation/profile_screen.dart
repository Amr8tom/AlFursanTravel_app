import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fursan_travel_app/common/custom_ui.dart';
import 'package:fursan_travel_app/features/profile/presentation/widgets/profile_body.dart';
import 'package:fursan_travel_app/features/service_locator/service_locator.dart';
import 'package:fursan_travel_app/routing/routes_name.dart';
import 'package:fursan_travel_app/utils/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';
import '../../../generated/l10n.dart';
import '../../navigation_menu/pressentation/widgets/custom_profile_app_bar.dart';
import 'controllers/profile_data/get_profile_data_cubit.dart';
import 'widgets/custom_profile_button_widget.dart';
import 'widgets/custom_profile_image_container.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomProfileAppBar(),
        body: BlocProvider(
          create: (context) => serviceLocator<GetProfileDataCubit>(),
          child: BlocBuilder<GetProfileDataCubit, GetProfileDataState>(
            builder: (context, state) {
              // if(state is GetProfileDataLoading){
              //   return CustomUI.simpleLoader();
              // }else
                if(state is GetProfileDataFailure){
                return CustomUI.simpleFailure();
              }else{
                return  const ProfileBody();
              }
            },
          ),
        )
    );
  }
}
