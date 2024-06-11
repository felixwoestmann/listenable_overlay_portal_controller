# ListenableOverlayPortalController

Small Flutter package extending Flutter's [OverlayPortalController](https://api.flutter.dev/flutter/widgets/OverlayPortalController-class.html) so it can be listened to.

## Usage

```dart

final listenableController=ListenableOverlayPortalController();
listenableController.addListener((isVisible) => print('Is the overlay visible? $isVisible'));

final portal=OverlayPortal(
  controller: listenableController,
  ...
);
```