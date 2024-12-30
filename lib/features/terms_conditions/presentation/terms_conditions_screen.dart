import 'package:flutter/material.dart';
import 'package:fursan_travel_app/common/widgets/appbar/appbar.dart';
import 'package:fursan_travel_app/utils/constants/sizes.dart';
import 'package:webview_flutter/webview_flutter.dart';
import '../../../generated/l10n.dart';

class TermsConditionsScreen extends StatefulWidget {
  @override
  _TermsConditionsScreenState createState() => _TermsConditionsScreenState();
}

class _TermsConditionsScreenState extends State<TermsConditionsScreen> {
  late WebViewController _controller;

  @override
  void initState() {
    super.initState();
    _controller = WebViewController()
      ..loadRequest(Uri.parse("https://sites.google.com/view/furasnapp/home"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DAppBar(
        title: S.current.privacyPolicy,
        showBackArrow: true,
        fontSize: AppSizes.fontSizeMd,
      ),
      body: WebViewWidget(
        controller: _controller, // Assign the controller to WebViewWidget
      ),
    );
  }
}
