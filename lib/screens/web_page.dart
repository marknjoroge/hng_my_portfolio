import 'package:flutter/material.dart';
import 'package:hng_my_portfolio/utils/constants.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebPage extends StatefulWidget {
  const WebPage({super.key});

  @override
  State<WebPage> createState() => _WebPageState();
}

class _WebPageState extends State<WebPage> {
  bool isLoading = true;
  int progress = 0;

  void setLoaded() {
    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    var webViewController = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color.fromARGB(49, 0, 0, 0))
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int leProgress) {},
          onPageStarted: (String url) {},
          onPageFinished: (String url) {
            // setLoaded();
          },
          onWebResourceError: (WebResourceError error) {},
          onNavigationRequest: (NavigationRequest request) {
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse(kMyGithubURL));

    return Scaffold(
      appBar: AppBar(
      centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_outlined),
        ),
        title: const Text('Mark Njoroge\'s Github'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back),),
          IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_forward),),
        ],
      ),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            bottom: 0,
            left: 0,
            right: 0,
            child: Image.asset('assets/images/loading.gif'),
          ),
          Positioned(
            top: 0,
            bottom: 0,
            left: 0,
            right: 0,
            child: WebViewWidget(controller: webViewController),
          ),
        ],
      ),
    );
  }
}
