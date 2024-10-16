import 'package:flutter/material.dart';

import '../../../../../../config/theme/my_theme.dart';
import '../../../../../components/widget/Custom_card1.dart';

class AnnouncementItem extends StatelessWidget {
  const AnnouncementItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomCard1(
      title: 'Flutter for beginners',
      subtitle: '16 Oct 2024',
      part: 'Information',
    );
  }
}
