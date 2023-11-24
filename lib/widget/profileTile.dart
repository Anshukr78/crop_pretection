import 'package:crop_pretection/helper/text_style.dart';
import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';

import '../helper/color.dart';
import '../helper/size.dart';

class ProfileListTileWidget extends StatefulWidget {
  ProfileListTileWidget(
      {super.key,
      required this.icon,
      required this.title,
      required this.next,
      required this.call});

  var icon;
  final String title;
  final bool next;
  final Function call;

  @override
  State<ProfileListTileWidget> createState() => _ProfileListTileWidgetState();
}

class _ProfileListTileWidgetState extends State<ProfileListTileWidget> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        widget.call();
      },
      leading: CircleAvatar(
        radius: 16,
        backgroundColor: AppColor.c0FAF3C(opacity: 0.5),
        child: Iconify(
          widget.icon,
          color: AppColor.c61CE66(opacity: 1),
          size: AppSize.heightDivide(context, 57.1428),
        ),
      ),
      title: Text(
        widget.title,
        style: AppStyle.tUrbanistStyle(
          size: 14,
          spacing: 1,
          color: AppColor.c000000(opacity: 1),
          fontWeight: FontWeight.w500,
        ),
      ),
      trailing: widget.next == true
          ? Icon(
              Icons.arrow_forward_ios,
              color: AppColor.c198754(opacity: 0.8),
              size: AppSize.heightDivide(context, 57.1428),
            )
          : const SizedBox(),
    );
  }
}
