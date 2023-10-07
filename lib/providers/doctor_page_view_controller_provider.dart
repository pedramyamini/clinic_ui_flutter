import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class DoctorPageViewControllerProvider extends ChangeNotifier {
  PageController _PageViewController = PageController(
    viewportFraction: .8,
    initialPage: 1,
  );

  PageController get PageViewController => _PageViewController;

  void animateToPage(int pageIndex) {
    _PageViewController.animateToPage(pageIndex,
        duration: Duration(
          milliseconds: 200,
        ),
        curve: Curves.linear);
    notifyListeners();
  }
}
