import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:master_detail/repository/master_detail_repo.dart';

part 'master_detail_event.dart';
part 'master_detail_state.dart';

class MasterDetailBloc<T>
    extends Bloc<MasterDetailEvent<T>, MasterDetailState<T>> {
  final MasterDetailRepository<T> repository;
  final String collectionName;
  MasterDetailBloc({required this.repository, required this.collectionName})
      : super(MasterDetailInitial<T>()) {
    on<MasterDetailEvent<T>>(_onEvent);
    on<GetAllEntitiesEvent<T>>(_onGetAllEntitiesEvent);
    on<GetEntityByIdEvent<T>>(_onGetEntityByIdEvent);
    on<SaveEntityEvent<T>>(_onSaveEntityEvent);
    on<UpdateEntityEvent<T>>(_onUpdateEntityEvent);
  }

  FutureOr<void> _onEvent(
      MasterDetailEvent<T> event, Emitter<MasterDetailState<T>> emit) {}

  FutureOr<void> _onGetAllEntitiesEvent(
      GetAllEntitiesEvent<T> event, Emitter<MasterDetailState<T>> emit) async {
    await repository.getAllData(collectionName).then((value) {
      emit(EntitiesRetrievedState<T>(entities: value));
    });
  }

  FutureOr<void> _onGetEntityByIdEvent(
      GetEntityByIdEvent<T> event, Emitter<MasterDetailState<T>> emit) async {
    await repository.getDataById(event.id, collectionName).then((value) {
      emit(EntityRetrievedState<T>());
    });
  }

  FutureOr<void> _onSaveEntityEvent(
      SaveEntityEvent<T> event, Emitter<MasterDetailState<T>> emit) async {
    await repository.saveData(event.data, collectionName).then((value) {
      emit(EntitySavedState<T>());
    });
  }

  FutureOr<void> _onUpdateEntityEvent(
      UpdateEntityEvent<T> event, Emitter<MasterDetailState<T>> emit) async {
    await repository.updateData(event.data, collectionName).then((value) {
      emit(EntityUpdatedState<T>());
    });
  }
}
