import 'package:lesson04async/generics/model/model.dart';

abstract class CRUDRepository {
  void create(Entity entity);
  void remove(Entity entity);
  void update(Entity entity);
  void delete(Entity entity);
}

//  todo: uncomment this
//  сначала у нас есть репозиторий, который для каждого типа Entity использует свой стор
//  class EmployeeRepository implements CRUDRepository {
//
//  }
//
//  class OrderRepository implements CRUDRepository {
//
//  }

//  todo: uncomment this
//  на определенной стадии разработки мы понимаем, что все Entity могут обладать некими метаданными
//  и их можно обрабатывать однотипно в вашем хранилище данных, используя один стор
//  То есть нам становится не важно, как с ними будет работать EntityDataStore
//  abstract class Entity {
//    void getMetaDataToWorkWithDataStore();
//  }
//
//
  abstract class EntityDataStore {
    ///
    /// uses getMetaDataToWorkWithDataStore to save entity to db
    ///
    void store(Entity entity);
  }
