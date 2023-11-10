import '../models/thumbnailssection_item_model.dart';
import 'package:flutter/material.dart';
import 'package:shoko_tech_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class ThumbnailssectionItemWidget extends StatelessWidget {
  ThumbnailssectionItemWidget(
    this.thumbnailssectionItemModelObj, {
    Key? key,
    this.onTapUrgentSiege,
  }) : super(
          key: key,
        );

  ThumbnailssectionItemModel thumbnailssectionItemModelObj;

  VoidCallback? onTapUrgentSiege;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 159.h,
      child: GestureDetector(
        onTap: () {
          onTapUrgentSiege!.call();
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: thumbnailssectionItemModelObj?.urgentSiege,
              height: 181.v,
              width: 159.h,
              radius: BorderRadius.circular(
                12.h,
              ),
            ),
            SizedBox(height: 8.v),
            Text(
              thumbnailssectionItemModelObj.urgentSiege1!,
              style: theme.textTheme.titleMedium,
            ),
            SizedBox(height: 2.v),
            Text(
              thumbnailssectionItemModelObj.damnedAnthem!,
              style: CustomTextStyles.bodyMediumOnPrimaryContainer,
            ),
          ],
        ),
      ),
    );
  }
}
