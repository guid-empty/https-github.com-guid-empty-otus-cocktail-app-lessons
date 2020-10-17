import 'package:lesson04async/generics/model/model.dart';

///
/// И в таком случае я все свои репозитории мог бы привести к одному контракту
/// EntityDataStoreRepository, который мог бы обобщить типом обрабатываемой сущности
/// 
abstract class EntityDataStoreRepository<TEntity> {
  EntityDataStore get store;

  void create(TEntity entity);
  void remove(TEntity entity);
  void update(TEntity entity);
  void delete(TEntity entity);
}

abstract class EntityDataStore {
  void store(Entity entity);
}

//  todo: uncomment this
//  ///
//  /// Можем реализовать класс EmployeeRepository
//  ///
//  class EmployeeRepository implements EntityDataStoreRepository<EmployeeEntity> {
//    EntityDataStore get store => null;
//  }
//
//  todo: uncomment this
//  ///
//  /// Можем реализовать класс PaymentRepository, и ничто нас не останавливает от его реализации
//  ///
//  class PaymentRepository implements EntityDataStoreRepository<Payment> {
//    EntityDataStore get store => null;
//  }
//
//  todo: uncomment this
//  ///
//  /// Можем реализовать класс EmployeeRepository
//  /// Он мог бы выглядеть так
//  ///
//  class EmployeeRepository implements EntityDataStoreRepository<EmployeeEntity> {
//    EntityDataStore get store => null;
//
//    @override
//    void create(EmployeeEntity entity) {
//      store.store(entity);
//    }
//
//    @override
//    void delete(EmployeeEntity entity) {
//      // TODO: implement delete
//    }
//
//    @override
//    void remove(EmployeeEntity entity) {
//      // TODO: implement remove
//    }
//
//    @override
//    void update(EmployeeEntity entity) {
//      // TODO: implement update
//    }
//  }
//
//  todo: попробуем реализовать класс PaymentRepository
//  todo: uncomment this
//  ///
//  /// Было бы здорово еще на этапе работы с классом EntityDataStoreRepository ограничить его только теми
//  /// типами, которыми он может быть обобщен
//  ///

//  class PaymentRepository implements EntityDataStoreRepository<Payment> {
//    EntityDataStore get store => null;
//
//    @override
//    void create(Payment entity) {
//      store.store(entity;)
//      // TODO: implement create
//    }
//
//    @override
//    void delete(Payment entity) {
//      // TODO: implement delete
//    }
//
//    @override
//    void remove(Payment entity) {
//      // TODO: implement remove
//    }
//
//    @override
//    void update(Payment entity) {
//      // TODO: implement update
//    }
//
//  }
