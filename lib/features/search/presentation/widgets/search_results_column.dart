import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fursan_travel_app/features/search/presentation/controllers/search_cubit/search_cubit.dart';
import 'package:fursan_travel_app/utils/constants/colors.dart';
import 'package:fursan_travel_app/utils/constants/sizes.dart';
import '../../../../common/custom_ui.dart';
import '../../../../routing/routes_name.dart';
import '../../../../utils/constants/api_constants.dart';


class SearchResultsColumn extends StatelessWidget {
  const SearchResultsColumn({super.key});
  @override
  Widget build(BuildContext context) {
    return  BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if (state is SearchSuccess) {
          final items = state.searchedItemListModel.items;
          if(items?.length==0){
            return CustomUI.noData();
          }else{
            return Padding(
              padding:  EdgeInsets.all(AppSizes.padding),
              child: Column(
                children: [

                  SizedBox(
                    height: AppSizes.space*3,
                  ),
                  Expanded(
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1,
                        crossAxisSpacing: 8.0,
                        mainAxisSpacing: 8.0,
                        childAspectRatio: 1.5
                      ),
                      itemCount: 1,
                      itemBuilder: (context, index) {
                        final destination = items;
                        return GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(
                                context, DRoutesName.tourDetailsRoute,
                                arguments: destination[index].slug.toString());
                          },
                          child: Card(
                            elevation: 4.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Column(
                              children: [
                                Expanded(
                                  flex:4,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(AppSizes.borderRadiusMd)),
                                    child: Image.network(
                                      "${URL.image}${destination?[index].images?[0].imageFilename}",
                                      fit: BoxFit.fitWidth,
                                      width: double.infinity,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex:1,
                                  child: Container(
                                    width: double.infinity,
                                    color: ColorRes.grey,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        destination![index].nameAr!.toString(),
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: AppSizes.fontSizeSm,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            );
          }
        } else if (state is SearchLoading) {
          return CustomUI.simpleLoader();
        } else if (state is SearchFailure) {
          return CustomUI.simpleFailure();

        }else {
          return CustomUI.noData();
        }
      },
    );
  }
}