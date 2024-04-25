import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship/core/utils/text_style.dart';
import 'package:mentorship/features/home/domain/entities/get_all_rockets_entity.dart';

class RocketCart extends StatelessWidget {
  final RocketEntity rocketEntity;

  const RocketCart({super.key, required this.rocketEntity});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10.h, bottom: 20.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            rocketEntity.name!,
            style: AppTextStyle.bodySmall(),
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            children: [
              CachedNetworkImage(
                width: 160.w,
                imageUrl: rocketEntity.flickrImages!.first,
                placeholder: (context, url) =>
                    const Center(child: CircularProgressIndicator()),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
              SizedBox(
                width: 10.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 150.w,
                    child: Text(
                      "Engine: ${rocketEntity.engines!.type!}",
                      style: AppTextStyle.bodySmall(fontSize: 12.sp),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(
                    width: 150.w,
                    child: Text(
                      "Active: ${rocketEntity.active}",
                      style: AppTextStyle.bodySmall(fontSize: 12.sp),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(
                    width: 150.w,
                    child: Text(
                      "Boosters: ${rocketEntity.boosters}",
                      style: AppTextStyle.bodySmall(fontSize: 12.sp),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(
                    width: 150.w,
                    child: Text(
                      "Country: ${rocketEntity.country!}",
                      style: AppTextStyle.bodySmall(
                        fontSize: 12.sp,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
