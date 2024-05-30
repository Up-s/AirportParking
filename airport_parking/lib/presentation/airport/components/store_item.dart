import 'package:airport_parking/domain/model/store.dart';
import 'package:airport_parking/util/colors.dart';
import 'package:flutter/cupertino.dart';

class StoreItem extends StatelessWidget {
  final Store store;

  const StoreItem({
    super.key,
    required this.store,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10, left: 24, right: 24, bottom: 10),
      child: Container(
        height: 88,
        padding: const EdgeInsets.only(top: 10, left: 24, right: 24, bottom: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: InColors.gray900,
        ),
        child: Row(
          children: [
            Expanded(
              child: Text(
                store.title,
                maxLines: 1,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: InColors.gray100,
                ),
              ),
            ),
            const SizedBox(width: 12),
            Icon(
              CupertinoIcons.right_chevron,
              size: 28,
              color: InColors.main,
            ),
          ],
        ),
      ),
    );
  }
}
