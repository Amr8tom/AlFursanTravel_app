import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fursan_travel_app/utils/constants/image_strings.dart';
import 'package:fursan_travel_app/utils/constants/sizes.dart';

import '../../../dummy/dummy_lists.dart';
import '../../../generated/l10n.dart';
import '../../../utils/constants/colors.dart';
import 'widgets/custom_banner.dart';
import 'widgets/custom_categories_widget.dart';
import 'widgets/custom_destination_horizontal_list.dart';
import 'widgets/custom_show_all_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(AppSizes.padding),
      child: SingleChildScrollView(
        child: Directionality(
          textDirection: TextDirection.ltr,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: AppSizes.space * 0.6),
              Card(
                elevation: 8,
                child: Container(
                  height: AppSizes.defaultSpace * 2,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.search),
                      ),
                      Spacer(),
                    ],
                  ),
                ),
              ),

              /// size
              SizedBox(height: AppSizes.space * 2),

              /// banner
              const CustomBanner(),

              /// size
              SizedBox(height: AppSizes.space),

              /// show all title
              const CustomShowAllButton(),

              /// size
              SizedBox(height: AppSizes.spaceBtwItems),

              /// Best Destinations Horizontal Card List
              CustomDestinationHorizontalList(items: DummyLists.destinations),

              /// size
              SizedBox(height: AppSizes.space),

              /// categories
              const CustomCategoriesWidget()
            ],
          ),
        ),
      ),
    );
  }
}
