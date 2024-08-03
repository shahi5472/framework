extension MapExtensions on Map<dynamic, dynamic> {
  Map<dynamic, dynamic> removeParam(String keys) {
    List<String> parts = keys.split('.');
    Map<dynamic, dynamic> data = this;
    for (int i = 0; i < parts.length - 1; i++) {
      if (data[parts[i]] is Map) {
        data = data[parts[i]];
      } else {
        return this; // Early exit if path is invalid
      }
    }
    data.remove(parts.last);
    return this;
  }

  dynamic getParam(String keys) {
    List<String> parts = keys.split('.');
    Map<dynamic, dynamic> data = this;
    for (int i = 0; i < parts.length - 1; i++) {
      if (data[parts[i]] is Map) {
        data = data[parts[i]];
      } else {
        return null; // Return null if the path breaks
      }
    }
    return data[parts.last];
  }
}
