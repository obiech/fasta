import 'package:fasta/wallet/widgets/first_page_indicator_widget.dart';
import 'package:flutter/material.dart';

class FirstPageErrorIndicator extends StatelessWidget {
  const FirstPageErrorIndicator({
    required this.onTryAgain,
    required this.message,
    Key? key,
  }) : super(key: key);

  final VoidCallback onTryAgain;
  final String message;

  @override
  Widget build(BuildContext context) => FirstPageExceptionIndicator(
        title: message,
        message: 'The application has encountered an unknown error.\n'
            'Please try again later.',
        onTryAgain: onTryAgain,
      );
}
