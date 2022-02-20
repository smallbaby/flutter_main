import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class StatsButtonWidget extends StatelessWidget {
  final String title;
  final bool isActive;
  final VoidCallback onPress;
  final IconData iconData;
  const StatsButtonWidget({
    Key? key,
    required this.title,
    required this.isActive,
    required this.onPress,
    required this.iconData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton.icon(
          onPressed: onPress,
          icon: Icon(iconData),
          label: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
        isActive
            ? Container(
                height: 3,
                width: 100,
                decoration: const BoxDecoration(
                  color: Color(0xFF996EFF),
                  boxShadow: [
                    BoxShadow(
                        color: Color(0xFF996EFF),
                        blurRadius: 5,
                        spreadRadius: 2),
                  ],
                ),
              )
            : Container(),
      ],
    );
  }
}
