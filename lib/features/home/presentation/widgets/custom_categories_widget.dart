import 'package:flutter/material.dart';
import 'package:fursan_travel_app/routing/routes_name.dart';
import 'package:fursan_travel_app/utils/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../dummy/dummy_lists.dart';
import '../../../../generated/l10n.dart';
import '../../../../utils/constants/colors.dart';

class CustomCategoriesWidget extends StatelessWidget {
  const CustomCategoriesWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _categoryIconButton(
            tilte: S.current.offers,
            icon: Iconsax.dollar_circle,
            onTab: () {
              {
                Navigator.pushNamed(context, DRoutesName.certainCategoryRoute,
                    arguments: {
                      "title": S.current.offers,
                      "items": DummyLists.offers
                    });
              }
            }),
        _categoryIconButton(
            icon: Icons.travel_explore_rounded,
            onTab: () {
              Navigator.pushNamed(
                context,
                DRoutesName.allToursScreen,
              );
            },
            tilte: S.current.tours),
        _categoryIconButton(
            tilte: S.current.visa,
            icon: Icons.contact_mail_outlined,
            onTab: () {
              {
                Navigator.pushNamed(context, DRoutesName.certainCategoryRoute,
                    arguments: {
                      "title": S.current.visa,
                      "items": DummyLists.flags
                    });
              }
            })
      ],
    );
  }
}

Widget _categoryIconButton(
    {required final IconData icon,
    required final VoidCallback onTab,
    required final String tilte}) {
  return InkWell(
    onTap: onTab,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            decoration: BoxDecoration(
                color: ColorRes.primary,
                borderRadius: BorderRadius.circular(AppSizes.borderRadiusXXLg)),
            height: AppSizes.heightcontainerCategories,
            padding: EdgeInsets.all(AppSizes.iconPadding),
            // child: SvgPicture.asset(imagePath)),
            child: Icon(
              icon,
              color: ColorRes.white,
            )),
        Text(tilte)
      ],
    ),
  );
}
