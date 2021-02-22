import 'package:flutter/material.dart';
import 'package:udaro/constants/color_constants.dart';
import 'package:udaro/constants/common_constants.dart';
import 'package:udaro/screens/udaro_detail.dart';

class UdaroCard extends StatelessWidget {
  final String title;
  final String amount;
  final String items;
  final Function removeUdaro;

  UdaroCard({this.title, this.removeUdaro, this.amount, this.items});
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      child: InkWell(
        onTap: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (BuildContext context) => SingleChildScrollView(
              child: UdaroDetailScreen(
                name: title,
                amount: amount,
                items: items,
              ),
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom),
            ),
          );
        },
        child: Container(
          color: kListCardColor,
          height: kDeviceHeight * 0.10,
          child: ListTile(
            leading: Text(
              'Rs. ${amount.toString()}',
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: kDeviceHeight * 0.025),
            ),
            title: Text(
              title,
              style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1.3),
            ),
            subtitle: Text(
              items,
              overflow: TextOverflow.ellipsis,
            ),
            trailing: IconButton(
              onPressed: removeUdaro,
              icon: Icon(
                Icons.check_circle,
                size: 40,
              ),
              color: kTopBoxColor,
            ),
          ),
        ),
      ),
    );
  }
}
