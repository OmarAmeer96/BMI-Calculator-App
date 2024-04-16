import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GenderContainer extends StatefulWidget {
  GenderContainer({
    super.key,
    required this.label,
    required this.icon,
    required this.isSelected,
    required this.onTap,
    required this.isDarkMode,
  });

  String label;
  IconData icon;
  bool isSelected;
  VoidCallback onTap;
  bool isDarkMode;

  @override
  State<GenderContainer> createState() => _GenderContainerState();
}

class _GenderContainerState extends State<GenderContainer> {
  @override
  Widget build(BuildContext context) {
    final backgroundColor = widget.isSelected
        ? const Color(0xff55433C)
        : (widget.isDarkMode
            ? const Color(0xff272220)
            : const Color(0xff5a5f6d));

    final borderColor =
        widget.isSelected ? const Color(0xffA97C37) : Colors.transparent;
    return Expanded(
      child: GestureDetector(
        onTap: widget.onTap,
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Container(
            height: 185,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: backgroundColor,
              border: Border.all(color: borderColor),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  widget.icon,
                  color: const Color(0xffA97C37),
                  size: 60,
                ),
                const SizedBox(height: 10),
                Text(
                  widget.label,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontFamily: "Gilroy-Bold",
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
