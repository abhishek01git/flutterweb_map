import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class webScreen extends StatefulWidget {
  const webScreen({super.key});

  @override
  State<webScreen> createState() => _webScreenState();
}

class _webScreenState extends State<webScreen> {
  WebViewController webController = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..loadRequest(
        Uri.parse('https://youtu.be/D-6Ojgy5_1w?si=i6h7kl1--VtjC1ny'));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: WebViewWidget(
        controller: webController,
      )),
    );
  }
}
