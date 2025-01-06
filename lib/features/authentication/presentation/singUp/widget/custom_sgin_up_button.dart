import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fursan_travel_app/utils/constants/sizes.dart';
import '../../../../../generated/l10n.dart';
import '../../controller/sing_up/sing_up_cubit.dart';

class CustomSginUpButton extends StatelessWidget {
  const CustomSginUpButton({super.key});
  @override
  Widget build(BuildContext context) {
    final controller= context.read<SingUpCubit>();
    return ElevatedButton(
      onPressed: () {
        controller.sginUp();
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: AppSizes.padding),
        child: Text(
          S.current.confirm,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
