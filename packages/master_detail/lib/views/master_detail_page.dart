import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/master_detail_bloc.dart';

class MasterDetailView<T, MasterDetailState,
        BLOC extends Bloc<MasterDetailEvent<T>, MasterDetailState>>
    extends StatefulWidget {
  final String collectionName;
  final Widget Function(T item) onCLickWidget;
  final Widget Function(T item) onUpdateWidget;
  final Widget Function<T, STATE, BLOC>({
    List<T> data,
    BuildContext context,
    Widget Function(T item) onClickOnItem,
    Widget Function(T item) onDeletedItem,
    Widget Function(T item) onUpdatedItem,
  }) getAllItemBuilder;
  const MasterDetailView(
      {super.key,
      required this.collectionName,
      required this.getAllItemBuilder,
      required this.onCLickWidget,
      required this.onUpdateWidget});

  @override
  State<MasterDetailView<T, MasterDetailState, BLOC>> createState() =>
      _MasterDetailViewState<T, MasterDetailState, BLOC>();
}

class _MasterDetailViewState<T, STATE,
        BLOC extends Bloc<MasterDetailEvent<T>, STATE>>
    extends State<MasterDetailView<T, STATE, BLOC>> {
  @override
  void initState() {
    context.read<BLOC>().add(GetAllEntitiesEvent<T>());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BLOC, STATE>(
      buildWhen: (previous, current) {
        if (current is EntitiesRetrievedState<T>) {
          return true;
        }
        return false;
      },
      builder: (context, state) {
        return Container(
          child: widget.getAllItemBuilder<T, STATE, BLOC>(
            data: (state as EntitiesRetrievedState<T>).entities,
            context: context,
            onClickOnItem: (item) {
              return widget.onCLickWidget(item);
            },
            onUpdatedItem: (item) {
              return widget.onUpdateWidget(item);
            },
          ),
        );
      },
    );
  }
}
