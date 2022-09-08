import 'package:flutter/material.dart';

import '../../../text_style.dart';

class CheckPointWidget extends StatelessWidget {
  final String title;
  final Color color;
  final void Function() onTap;

  const CheckPointWidget({
    Key? key,
    required this.title,
    required this.color,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: TextTypography.subtitle(),
        ),
        const SizedBox(height: 8),
        _point(color, onTap),
      ],
    );
  }

  Widget _point(Color color, void Function()? onTap) {
    var boder = BorderRadius.circular(32.0);
    return ClipRRect(
      borderRadius: boder,
      child: InkWell(
        borderRadius: boder,
        onTap: onTap,
        child: Container(
          color: color,
          width: 64,
          height: 64,
        ),
      ),
    );
  }
}
