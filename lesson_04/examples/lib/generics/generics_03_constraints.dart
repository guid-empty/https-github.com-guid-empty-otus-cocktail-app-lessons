import 'package:lesson04async/generics/model/model.dart';

abstract class CRUDRepository<TEntity extends Entity> {
  void create(TEntity entity);
  void remove(TEntity entity);
  void update(TEntity entity);
  void delete(TEntity entity);
}

abstract class EntityDataStore {
  void store(Entity entity);
}

//  todo: uncomment this
//  class PaymentRepository implements CRUDRepository<Payment> {
//    EntityDataStore store;
//  }
//  class EmployeeRepository implements CRUDRepository<EmployeeEntity> {
//    EntityDataStore store;
//  }
