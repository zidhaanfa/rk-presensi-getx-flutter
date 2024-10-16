import 'package:flutter/material.dart';

import '../../../../../../config/theme/my_theme.dart';
import '../../../../../components/widget/Custom_card1.dart';

class AnnouncementItem extends StatelessWidget {
  const AnnouncementItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(0),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 3,
      itemBuilder: (context, index) {
        return CustomCard1(
          title: 'Flutter for beginners',
          subtitle: 'Information',
          part: '16 Oct 2024',
        );
      },
    );
  }
}
