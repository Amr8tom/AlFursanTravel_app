import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fursan_travel_app/routing/routes_name.dart';
import 'package:fursan_travel_app/utils/constants/sizes.dart';

import '../../../../dummy/dummy_lists.dart';
import '../../../../generated/l10n.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';

class CustomCategoriesWidget extends StatelessWidget {
  const CustomCategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _categoryIconButton(
            tilte: S.current.offers,
            imagePath: AssetRes.startIcon,
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
            imagePath: AssetRes.planIcon,
            onTab: () {
              Navigator.pushNamed(context, DRoutesName.certainCategoryRoute,
                  arguments: {
                    "title": S.current.tours,
                    "items": DummyLists.destinations
                  });
            },
            tilte: S.current.tours),
        _categoryIconButton(
            tilte: S.current.visa,
            imagePath: AssetRes.rectangleIcon,
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
    {required String imagePath,
    required VoidCallback onTab,
    required String tilte}) {
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
            child: SvgPicture.asset(imagePath)),
        Text(tilte)
      ],
    ),
  );
}
