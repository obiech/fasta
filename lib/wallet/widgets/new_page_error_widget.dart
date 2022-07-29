import 'package:fasta/wallet/widgets/footer_note.dart';
import 'package:flutter/material.dart';

class NewPageErrorIndicator extends StatelessWidget {
  const NewPageErrorIndicator({
    Key? key,
    this.onTap,
    required this.message,
  }) : super(key: key);
  final VoidCallback? onTap;
  final String message;

  @override
  Widget build(BuildContext context) => InkWell(
        onTap: onTap,
        child: FooterTile(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$message. Tap to try again.',
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 4,
              ),
              const Icon(
                Icons.refresh,
                size: 16,
              ),
            ],
          ),
        ),
      );
}

