import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fursan_travel_app/utils/constants/sizes.dart';
import '../../../dummy/dummy_lists.dart';
import 'widgets/custom_banner.dart';
import 'widgets/custom_categories_widget.dart';
import 'widgets/custom_destination_horizontal_list.dart';
import 'widgets/custom_show_all_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final screenHight = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.all(AppSizes.padding),
      child: SingleChildScrollView(
        child: Directionality(
          textDirection: TextDirection.ltr,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              /// banner
              const CustomBanner(),

              /// Best Destinations Horizontal Card List
              CustomDestinationHorizontalList(items: DummyLists.destinations),

              /// show all title
              const CustomShowAllButton(),

              /// size
              SizedBox(height: screenHight / 17),

              /// categories
              const CustomCategoriesWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
