import 'dart:ui';

import 'package:flutter/material.dart';

final headerStyle = TextStyle(fontSize: 20, fontWeight: FontWeight.w600, fontFamily: "Nunito");

final descStyle = TextStyle(
  fontFamily: "Montserrat",
  color: Colors.grey,
);

Widget createCard(String title, Widget desc, String imgUrl, GestureTapCallback onTap, {bool biggerImage = false, List<String> chipsData}) {
  return Card(
    elevation: 3.0,
    child: InkWell(
      onTap: onTap,
      child: Container(
        height: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: biggerImage ? 120 : 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(4.0), topRight: Radius.circular(4.0)),
                  image: DecorationImage(fit: BoxFit.fitWidth, alignment: FractionalOffset.center, image: NetworkImage(imgUrl))),
            ),
            Expanded(
              child: ListTile(
                dense: true,
                title: Text(
                  title,
                  style: headerStyle,
                ),
                subtitle: desc,
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0, bottom: 6.0),
                child: chipsData != null
                    ? Wrap(
                        crossAxisAlignment: WrapCrossAlignment.start,
                        spacing: 4.0,
                        children: chipsData
                            .map((data) => Chip(
                                  label: Text(
                                    data,
                                    style: descStyle.copyWith(fontSize: 10),
                                  ),
                                  padding: const EdgeInsets.all(0.0),
                                  labelPadding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 4.0),
                                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                ))
                            .toList(),
                      )
                    : SizedBox.shrink(),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
