import 'package:e_commerce_app/common/styles/shadows.dart';
import 'package:e_commerce_app/common/widgets/icon/t_circular_icon.dart';
import 'package:e_commerce_app/common/widgets/images/t_rounded_image.dart';
import 'package:e_commerce_app/common/widgets/products/t_rounded_container.dart';
import 'package:e_commerce_app/common/widgets/texts/product_title_text.dart';
import 'package:e_commerce_app/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:e_commerce_app/common/widgets/texts/t_product_product_price_text.dart';
import 'package:e_commerce_app/features/shop/screens/product_details/product_detail.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () => Get.to(() => const ProductDetailScreen()),
      child: Container(
        width: 180,
        decoration: BoxDecoration(
          boxShadow: [TShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
          color: dark ? TColors.darkerGrey : TColors.white,
        ),
      child: Column(
        children: [
          TRoundedContainer(
            height: 180,
            padding: const EdgeInsets.all(TSizes.sm),
            backgroundColor: dark ? TColors.dark : TColors.light,
            child: Stack(
              children: [
                const TRoundedImage(imageUrl: TImages.productImage1, applyImageRadius: true),
    
                Positioned(
                  top: 12,
                  child: TRoundedContainer(
                    radius: TSizes.sm,
                    backgroundColor: TColors.secondary.withOpacity(0.8),
                    padding: const EdgeInsets.symmetric(horizontal: TSizes.sm, vertical: TSizes.xs),
                    child: Text('25%', style: Theme.of(context).textTheme.labelLarge!.apply(color: TColors.black)),
                  ),
                ),
                const Positioned(
                  top: 0,
                  right: 0,
                  child: TCircularIcon(icon: Iconsax.heart5, color: Colors.red)
                )
              ],
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwItems / 2),
    
          const Padding(
            padding: EdgeInsets.only(left: TSizes.sm),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TProductTitleText(title: 'Green Nike', smallSize: true),
                SizedBox(height: TSizes.spaceBtwItems/ 2),
                TBrandTitleWithVerifiedIcon(title: 'Nike')
                
              ],
            ),
          ),
          const Spacer(),
          Row(

                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: TSizes.sm),
                      child: TProductPriceText(price: '35.0'),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: TColors.dark,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(TSizes.cardRadiusMd),
                          bottomRight: Radius.circular(TSizes.productImageRadius),
    
                        )
                      ),
                      child: const SizedBox(
                        width: TSizes.iconLg *1.2,
                        height: TSizes.iconLg * 1.2,
                        child: Center(child: Icon(Iconsax.add, color: TColors.white,))
                      ),
                    )
                  ],
                )
        ],
      ),
      ),
    );
  }
}

