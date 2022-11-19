part of 'master_detail_bloc.dart';

abstract class MasterDetailEvent<T> {
  const MasterDetailEvent();
}

/* getAll Event */
class GetAllEntitiesEvent<T> extends MasterDetailEvent<T> {
  const GetAllEntitiesEvent();
}

/* getById Event */
class GetEntityByIdEvent<T> extends MasterDetailEvent<T> {
  final String id;

  const GetEntityByIdEvent({
    required this.id,
  });
}

/* save Event */
class SaveEntityEvent<TModel> extends MasterDetailEvent<TModel> {
  final TModel data;

  const SaveEntityEvent({
    required this.data,
  });
}

/* update Event */
class UpdateEntityEvent<T> extends MasterDetailEvent<T> {
  final T data;

  const UpdateEntityEvent({
    required this.data,
  });
}
