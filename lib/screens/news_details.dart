import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class NewsDetails extends StatefulWidget {
  const NewsDetails({super.key, required this.link});
  final String link;

  @override
  State<NewsDetails> createState() => _NewsDetailsState();
}

class _NewsDetailsState extends State<NewsDetails> {
  bool isLoading = true;
  bool catg = true;
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();
    controller =
        WebViewController()
          ..setJavaScriptMode(JavaScriptMode.unrestricted)
          ..setBackgroundColor(Colors.transparent)
          ..setNavigationDelegate(
            NavigationDelegate(
              onPageFinished: (url) {
                setState(() => isLoading = false);
                controller.runJavaScript(
                  "document.querySelectorAll('video').forEach(v => v.setAttribute('autoplay', 'true'));",
                );
                controller.runJavaScript(
                  "document.querySelectorAll('video').forEach(v => v.play());",
                );
              },
            ),
          )
          ..loadRequest(Uri.parse(widget.link));

    catg =
        !(widget.link == "https://onefootball.com/en/matches" ||
            widget.link == 'https://www.beinsports.com/ar-mena');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: catg),
      body: Stack(
        children: [
          RepaintBoundary(
            child: WebViewWidget(
              controller: controller,
              gestureRecognizers: {
                Factory<OneSequenceGestureRecognizer>(
                  () => EagerGestureRecognizer(),
                ),
              },
            ),
          ),
          if (isLoading) Center(child: CircularProgressIndicator()),
        ],
      ),
    );
  }
}
