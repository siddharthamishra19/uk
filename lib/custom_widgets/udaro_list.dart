import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:udaro/custom_widgets/udaro_card.dart';
import 'package:udaro/models/udaro_data.dart';

class UdaroList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<UdaroData>(
      builder: (context, udaroData, child) => ListView.builder(
        itemBuilder: (context, index) {
          int indexofUdaro = index;
          final udaroItem = udaroData.udaro[index];
          return UdaroCard(
            title: udaroItem.udaroName,
            amount: udaroItem.amount,
            removeUdaro: () {
              udaroData.removeUdaro(udaroItem);
            },
            items: udaroItem.itemsBought,
          );
        },
        itemCount: udaroData.udaroLength,
      ),
    );
  }
}
