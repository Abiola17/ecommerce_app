import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TFormDivider extends StatelessWidget {
  final String dividerText;
  const TFormDivider({
    Key? key,
    required this.dividerText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
            child: Divider(
                color: dark ? TColors.darkGrey : TColors.grey,
                thickness: 0.5,
                indent: 60,
                endIndent: 5)),
        Text(dividerText, style: Theme.of(context).textTheme.labelMedium),
        Flexible(
            child: Divider(
                color: dark ? TColors.darkGrey : TColors.grey,
                thickness: 0.5,
                indent: 5,
                endIndent: 60)),
      ],
    );
  }
}