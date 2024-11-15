import 'package:flutter/cupertino.dart';

import '../models/horizontal_model.dart';
import 'horizontal_widget.dart';

class HorizontalListView extends StatelessWidget {
  const HorizontalListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: imageList.length,
        itemBuilder: (context, index) {
          return HorizontalWidget(
            horizontal: imageList[index],
          );
        },
      ),
    );
  }
}
