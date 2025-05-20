import 'package:flutter/material.dart';

class FavoriteUserAvatar extends StatelessWidget {
  final String label;
  final String? imagePath;
  final bool isAdd;

  const FavoriteUserAvatar({
    super.key,
    required this.label,
    this.imagePath,
    this.isAdd = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 25,
          backgroundColor: Colors.grey.shade200,
          backgroundImage:
              (isAdd || imagePath == null) ? null : AssetImage(imagePath!),
          child: isAdd ? const Icon(Icons.add, color: Colors.black) : null,
        ),
        const SizedBox(height: 8),
        Text(
          label,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 11, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
