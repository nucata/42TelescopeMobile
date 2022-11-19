part of 'master_detail_bloc.dart';

abstract class MasterDetailState<T> extends Equatable {
  const MasterDetailState();

  @override
  List<Object> get props => [];
}

class MasterDetailInitial<T> extends MasterDetailState<T> {}

/* Entities retrieved state */
class EntitiesRetrievedState<T> extends MasterDetailState<T> {
  final List<T> entities;

  const EntitiesRetrievedState({required this.entities});

  @override
  List<Object> get props => [entities];
}

/* Entity retrieved state */
class EntityRetrievedState<T> extends MasterDetailState<T> {}

/* Entity saved state */
class EntitySavedState<T> extends MasterDetailState<T> {}

/* Entity updated state */
class EntityUpdatedState<T> extends MasterDetailState<T> {}
