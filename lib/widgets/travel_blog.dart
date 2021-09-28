import 'package:flutter/material.dart';
import '/models/travel.dart';

class TravelBlog extends StatelessWidget {
  final _list = Travel.getTravelBlog();

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      physics: BouncingScrollPhysics(),
      itemCount: _list.length,
      itemBuilder: (context, index) {
        var travel = _list[index];
        return Row(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(
                  travel.url,
                  fit: BoxFit.cover,
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
