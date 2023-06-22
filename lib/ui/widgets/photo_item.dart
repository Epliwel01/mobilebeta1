import 'package:flutter/material.dart';
import 'package:airplane/shared/theme.dart';

class PhotoItem extends StatelessWidget {
  final String ImageUrl;
  const PhotoItem({
    Key? key,
    required this.ImageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
      margin: EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            ImageUrl,
          ),
        ),
      ),
    );
  }
}
