import 'package:book_store/core/utils/text_style_manager.dart';
import 'package:book_store/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key, required this.url});

  final String url;

  @override
  Widget build(BuildContext context) {
    final WebViewController webViewController = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse(url));
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          const Expanded(
            child: CustomButton(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
              backgroundColor: Colors.white,
              textColor: Colors.black,
              text: 'Free',
            ),
          ),
          Expanded(
            child: CustomButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Scaffold(
                      appBar: AppBar(
                        backgroundColor: Colors.white,
                        centerTitle: true,
                        title: const Text(
                          'Preview',
                          style: TextStyleManager.bold20black
                        ),
                        leading: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(
                              Icons.arrow_back,
                              color: Colors.black,
                              size: 24,
                            )),
                      ),
                      body: WebViewWidget(controller: webViewController),
                    ),
                  ),
                );
              },
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
              backgroundColor: const Color(0xffEF8262),
              textColor: Colors.white,
              text: 'Free Preview',
            ),
          ),
        ],
      ),
    );
  }
}
