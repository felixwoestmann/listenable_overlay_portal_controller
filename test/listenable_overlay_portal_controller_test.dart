import 'package:flutter_test/flutter_test.dart';

import 'package:listenable_overlay_portal_controller/listenable_overlay_portal_controller.dart';

void main() {
final controller=ListenableOverlayPortalController();
controller.addListener((isVisible)=>print('Is the overlay visible? $isVisible'));
}
