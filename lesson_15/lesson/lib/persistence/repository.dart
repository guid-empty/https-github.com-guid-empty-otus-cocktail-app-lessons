abstract class Repository<T> {

  Future setUp();

  Future add(String key,T value);

  Future get(String key);

  Future update(String key,T value);

  Future remove(String key);

  Future addAll(Iterable<T> values);

  Future<Iterable<T>> getAll();

  Future<Iterable<T>> getFavourites();

}