import 'dart:developer';

import 'package:fasta/core/constants.dart';
import 'package:fasta/wallet/cubit/wallet_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PayStackPaymentView extends StatefulWidget {
  final String url;
  final int creditAmount;
  static const String route = '/PayStackPaymentView';
  const PayStackPaymentView(
      {Key? key, required this.url, required this.creditAmount})
      : super(key: key);

  @override
  State<PayStackPaymentView> createState() => _PayStackPaymentViewState();
}

class _PayStackPaymentViewState extends State<PayStackPaymentView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebView(
        initialUrl: widget.url,
        javascriptMode: JavascriptMode.unrestricted,
        userAgent: 'Flutter;WebView',
        navigationDelegate: (navigation) {
          log(navigation.url.toString());
          if (navigation.url == Constants.validateSuccessPayment) {
            Navigator.of(context).pop(); //close PayStackPaymentView
          }
          if (navigation.url ==
              Constants.validateSuccessPaymentForCardExceptions) {
            Navigator.of(context).pop(); //close PayStackPaymentView
          }
          if (navigation.url.contains('https://google.com')) {
            context.read<WalletCubit>().creditWallet(widget.creditAmount);
            Navigator.of(context).pop(); //close PayStackPaymentView

          }
          return NavigationDecision.navigate;
        },
      ),
    );
  }
}
