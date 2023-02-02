import 'package:flutter/material.dart';

import 'package:flutter_ui_challenges/src/pages/sushi_app/screens/detail/widgets/rating_widget.dart';

class ExtraItem extends StatelessWidget {
  const ExtraItem({
    Key? key,
    required this.colorGreen,
  }) : super(key: key);

  final Color colorGreen;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        horizontalTitleGap: -15,
        leading: Transform.translate(
          offset: const Offset(0, -12),
          child: Icon(Icons.square_outlined, color: colorGreen, size: 16),
        ),
        trailing: addButton(),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Ovacado with rolls',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 11),
            ),
            Row(
              children: const [
                Rating(rate: 3.5),
                SizedBox(width: 8),
                Text('73 votos', style: TextStyle(fontSize: 10)),
              ],
            ),
            const Text(
              '\$27.00',
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            ),
            const Text(
              'Unavailable',
              style: TextStyle(
                  color: Colors.red, fontSize: 10, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }

  SizedBox addButton() {
    return SizedBox(
      width: 75,
      height: 30,
      child: Transform.translate(
        offset: const Offset(0, -10),
        child: TextButton(
            style: TextButton.styleFrom(
                foregroundColor: colorGreen,
                side: BorderSide(color: colorGreen, width: 2),
                alignment: Alignment.center,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)))),
            onPressed: (() {}),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Add',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 5),
                Icon(Icons.add_outlined, size: 15),
              ],
            )),
      ),
    );
  }
}
