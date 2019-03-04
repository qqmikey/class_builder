library class_builder;

typedef T Constructor<T>();

class ClassBuilder {
  static Map<String, Constructor<Object>> _constructors = <String, Constructor<Object>>{};

  static void register<T>(Constructor<T> constructor) {
    _constructors[T.toString()] = constructor;
  }

  static dynamic fromString(String type) {
    return _constructors[type]();
  }
}
