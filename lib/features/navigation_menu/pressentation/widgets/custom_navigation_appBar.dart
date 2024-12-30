import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fursan_travel_app/features/authentication/presentation/controller/log_in/login_cubit.dart';
import 'package:fursan_travel_app/features/language/presentation/controller/language_cubit.dart';
import 'package:fursan_travel_app/features/navigation_menu/pressentation/controller/navigation_cubit.dart';
import 'package:fursan_travel_app/routing/routes_name.dart';
import 'package:fursan_travel_app/utils/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../common/custom_ui.dart';
import '../../../../generated/l10n.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/device/device_utility.dart';

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
          final List<String> _title = [
            S.current.home,
            S.current.notifications,
            S.current.favorite,
            S.current.profileInfo
          ];
          final controller = context.read<NavigationCubit>();
          return Directionality(
            textDirection: TextDirection.rtl,
            child: AppBar(
              leading: BlocBuilder<LoginCubit, LoginState>(
                builder: (context, state) {
                  return Center(
                    child: IconButton(
                      onPressed: () {
                        if (state is LoginUser) {
                          Navigator.pushNamed(
                              context, DRoutesName.profileInfoRoute);
                        } else {
                          Navigator.pushNamed(context, DRoutesName.loginRoute);
                        }
                      },
                      icon: const Icon(
                        Iconsax.profile_tick5,
                        color: ColorRes.primary,
                      ),
                    ),
                  );
                },
              ),
              actions: [
                GestureDetector(
                  onTap: () {
                    context.read<LanguageCubit>().toggleLand();
                  },
                  child: Row(
                    children: [
                      Text(
                        context.watch<LanguageCubit>().ShowLand,
                        style: TextStyle(
                          fontSize: AppSizes.fontSizeSm,
                          color: ColorRes.primary,
                        ),
                      ),
                      const SizedBox(width: 7),
                      const Icon(
                        Icons.language,
                        color: ColorRes.primary,
                      ),
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, DRoutesName.contactUs);
                  },
                  icon: const Icon(
                    Icons.mark_as_unread_sharp,
                    color: ColorRes.primary,
                  ),
                ),
              ],
              title: Text(
                _title[controller.indx],
                style: Theme.of(context).textTheme.bodyLarge,
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
