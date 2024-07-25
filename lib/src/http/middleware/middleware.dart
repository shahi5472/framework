import 'dart:io';

import 'package:vania/vania.dart';

abstract class Middleware {
  Future handle(Request req);

  @Deprecated('Will be deleted in the next versions')
  Middleware? next;
}

abstract class WebSocketMiddleware {
  Future handle(HttpRequest req);

  @Deprecated('Will be deleted in the next versions')
  WebSocketMiddleware? next;
}
