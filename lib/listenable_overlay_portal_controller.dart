library listenable_overlay_portal_controller;

import 'package:flutter/cupertino.dart';

typedef OverlayVisibilityChangedCallback = void Function(bool isShowing);

class ListenableOverlayPortalController extends OverlayPortalController {
  ListenableOverlayPortalController();

  final _listeners = <OverlayVisibilityChangedCallback>[];

  void addListener(OverlayVisibilityChangedCallback listener) {
    _listeners.add(listener);
  }

  void removeListener(OverlayVisibilityChangedCallback listener) {
    _listeners.remove(listener);
  }

  void _notifyListeners() {
    for (final listener in _listeners) {
      listener(super.isShowing);
    }
  }

  @override
  void hide() {
    super.hide();
    _notifyListeners();
  }

  @override
  void show() {
    super.show();
    _notifyListeners();
  }

  @override
  void toggle() {
    super.toggle();
    _notifyListeners();
  }
}