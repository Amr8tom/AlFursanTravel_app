import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fursan_travel_app/features/language/presentation/controller/language_cubit.dart';
import 'package:fursan_travel_app/features/navigation_menu/pressentation/controller/navigation_cubit.dart';
import 'package:fursan_travel_app/routing/routes_name.dart';
import 'package:fursan_travel_app/utils/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../common/custom_ui.dart';
import '../../../../generated/l10n.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/device/device_utility.dart';
import '../../../authentication/presentation/controller/log/login_cubit.dart';

class CustomNavigationAppbar extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomNavigationAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LanguageCubit, LanguageState>(
      listener: (context, state) {
        if (state is LanguageLoading) {
          CustomUI.showLoadingDialog(context);
        } else if (state is LanguageSuccess) {
          Navigator.popAndPushNamed(context, DRoutesName.navigationMenuRoute);
        }
      },
      child: BlocBuilder<NavigationCubit, NavigationState>(
        builder: (context, state) {
          final controller = context.read<NavigationCubit>();
          final loginController = context.read<LoginCubit>();
          final List<String> _title = [
            S.current.home,
            S.current.notifications,
            S.current.favorite,
            S.current.profileInfo
          ];
          return Directionality(
            textDirection: TextDirection.rtl,
            child: AppBar(
              leading: IconButton(
                onPressed: () {
                  print(loginController.isGuest);
                  if (loginController.isGuest) {
                    Navigator.pushNamed(context, DRoutesName.loginRoute);
                  } else {
                    Navigator.pushNamed(
                        context, DRoutesName.profileInfoRoute);
                  }
                },
                icon: Icon(
                  Iconsax.profile_tick5,
                  color: ColorRes.primary,
                  size: AppSizes.iconLg/1.6,
                ),
              ),
              actions: [
                GestureDetector(
                  onTap: () {
                    context.read<LanguageCubit>().toggleLand();
                  },
                  child: Text(
                    context.watch<LanguageCubit>().ShowLand,
                    style: TextStyle(
                      fontSize: AppSizes.fontSizeSm ,
                      color: ColorRes.primary,
                    ),
                  ),
                ),
                const SizedBox(width: 7),
                GestureDetector(
                  onTap: () {
                    context.read<LanguageCubit>().toggleLand();
                  },
                  child: Icon(
                    Icons.language,
                    color: ColorRes.primary,
                    size: AppSizes.iconLg / 1.4,
                  ),
                ),
                const SizedBox(width: 7),

                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, DRoutesName.contactUs);
                  },
                  child: Icon(
                    Icons.mail_outline_sharp,
                    color: ColorRes.primary,
                    size: AppSizes.iconLg/1.3,
                  ),
                ),
                const SizedBox(width: 7),
              ],
              title: Text(
                _title[controller.indx],
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  fontSize: AppSizes.fontSizeLg/1.3
                ),
              ),
              backgroundColor: Colors.white,
              automaticallyImplyLeading: false,
            ),
          );
        },
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(DDeviceUtils.getAppBarHeight());
}
