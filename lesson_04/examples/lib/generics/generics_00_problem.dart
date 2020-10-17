abstract class MyCollectionItem {}

abstract class MyOptimizedCollection {
  void add(MyCollectionItem item);
  void remove(MyCollectionItem item);
}

abstract class OtherCollectionItem {}

abstract class OtherOptimizedCollection {
  void add(OtherCollectionItem item);
  void remove(OtherCollectionItem item);
}

//  todo: uncomment this
abstract class OptimizedCollection<T> {
  void add(T item);
  void remove(T item);
}

