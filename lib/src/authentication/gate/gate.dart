typedef GateFunction = bool Function(dynamic user, dynamic resource);


class Gate {
  static final Gate _instance = Gate._internal();

  factory Gate() {
    return _instance;
  }

  Gate._internal();

  final Map<String, GateFunction> _gates = {};

  void define(String name, GateFunction function) {
    _gates[name] = function;
  }

  bool allows(String name, dynamic user, dynamic resource) {
    final gate = _gates[name];
    if (gate != null) {
      return gate(user, resource);
    }
    return false;
  }
}