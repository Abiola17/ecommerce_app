import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:e_commerce_app/common/widgets/list_tiles/settings_menu_tile.dart';
import 'package:e_commerce_app/common/widgets/list_tiles/user_profile_tile.dart';
import 'package:e_commerce_app/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_app/features/personalization/screens/address/address.dart';
import 'package:e_commerce_app/features/shop/screens/order/order.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../profile/profile.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  TAppBar(
                      title: Text('Account',
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium!
                              .apply(color: TColors.white))),
                  const SizedBox(height: TSizes.spaceBtwSections),
                  TUserProfileTile(onPressed: ()=> Get.to(()=>  const ProfileScreen())),
                  const SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            ),
             Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  const TSectionHeading(title: 'Account Settings', showActionButton: false),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  TSettingsMenuTile(icon: Iconsax.safe_home, title: "My Addresses", subTitle: "Set shopping delivery address", onTap: () => Get.to(() => const UserAddressScreen())),
                  const TSettingsMenuTile(icon: Iconsax.shopping_cart, title: "My Cart", subTitle: "Add, remove products and move to checkout"),
                  TSettingsMenuTile(icon: Iconsax.bag_tick, title: "My Orders", subTitle: "In-progress and Completed Orders", onTap: () => Get.to(() => const OrderScreen())),
                  const TSettingsMenuTile(icon: Iconsax.bank, title: "Bank Account", subTitle: "Withdraw balance to registered bank account"),
                  const TSettingsMenuTile(icon: Iconsax.discount_shape, title: "My Coupons", subTitle: "List of all the discounted coupons"),
                  const TSettingsMenuTile(icon: Iconsax.notification, title: "Notifications", subTitle: "Set any kind of notification message"),
                  const TSettingsMenuTile(icon: Iconsax.security_card, title: "Account Privacy", subTitle: "Manage data usage and connected accounts"),

                  const SizedBox(height: TSizes.spaceBtwSections),
                  const TSectionHeading(title: 'App Settings', showActionButton: false),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  const TSettingsMenuTile(icon: Iconsax.document_upload, title: 'Load Data', subTitle: 'Upload Data to your Cloud Firebase'),
                  TSettingsMenuTile(
                    icon: Iconsax.location, 
                    title: 'Geolocation', 
                    subTitle: 'Set recommendation based on location',
                    trailing: Switch(value: true, onChanged: (value){}),
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.security_user, 
                    title: 'Safe Mode', 
                    subTitle: 'Search result is safe for all ages',
                    trailing: Switch(value: false, onChanged: (value){}),
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.location, 
                    title: 'HD Image Quality', 
                    subTitle: 'Set image quality to be seen',
                    trailing: Switch(value: false, onChanged: (value){}),
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(onPressed: (){}, child: const Text('Logout')),
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections * 2.5),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
