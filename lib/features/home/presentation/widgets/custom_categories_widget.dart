import 'package:flutter/material.dart';
import 'package:fursan_travel_app/routing/routes_name.dart';
import 'package:fursan_travel_app/utils/constants/sizes.dart';
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
            icon: Icons.card_travel,
            onTab: () {
              Navigator.pushNamed(
                context,
                DRoutesName.allToursRoute,
              );
            },
            tilte: S.current.tours),
        SizedBox(
          width: AppSizes.padding / 2,
        ),
        _categoryIconButton(
            tilte: S.current.visa,
            icon: Icons.contact_mail_outlined,
            onTab: () {
              {
                Navigator.pushNamed(
                  context,
                  DRoutesName.AllVisasScreen,
                );
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
    child: Center(
      child: Column(
        children: [
          Container(
              padding: EdgeInsets.all(AppSizes.iconPadding),
              decoration: BoxDecoration(
                  color: ColorRes.primary,
                  borderRadius: BorderRadius.circular(AppSizes.borderRadiusXXLg)),
              height: AppSizes.heightcontainerCategories,
              width: AppSizes.widthcontainer/2,
              child:Padding(
                padding: EdgeInsets.only(bottom:AppSizes.iconPadding*2),
                child: Icon(
                  size: AppSizes.iconMd/1.1,
                  icon,
                  color: ColorRes.white,
                ),
              )),
          Text(tilte,style: TextStyle(
            fontSize: AppSizes.fontSizeMd
          ),)
        ],
      ),
    ),
  );
}
