/*
       _ _           _ 
      | (_)         | |
   ___| |_ _   _  __| |
  / _ \ | | | | |/ _` |
 |  __/ | | |_| | (_| |
  \___|_|_|\__,_|\__,_|
                       
 
 mona_style_attributes_list_bloc.dart
                       
 This code is generated. This is read only. Don't touch!

*/

import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import 'package:eliud_stl_mona/model/mona_style_attributes_repository.dart';
import 'package:eliud_stl_mona/model/mona_style_attributes_list_event.dart';
import 'package:eliud_stl_mona/model/mona_style_attributes_list_state.dart';
import 'package:eliud_core/tools/query/query_tools.dart';



class MonaStyleAttributesListBloc extends Bloc<MonaStyleAttributesListEvent, MonaStyleAttributesListState> {
  final MonaStyleAttributesRepository _monaStyleAttributesRepository;
  StreamSubscription? _monaStyleAttributessListSubscription;
  final EliudQuery? eliudQuery;
  int pages = 1;
  final bool? paged;
  final String? orderBy;
  final bool? descending;
  final bool? detailed;
  final int monaStyleAttributesLimit;

  MonaStyleAttributesListBloc({this.paged, this.orderBy, this.descending, this.detailed, this.eliudQuery, required MonaStyleAttributesRepository monaStyleAttributesRepository, this.monaStyleAttributesLimit = 5})
      : assert(monaStyleAttributesRepository != null),
        _monaStyleAttributesRepository = monaStyleAttributesRepository,
        super(MonaStyleAttributesListLoading());

  Stream<MonaStyleAttributesListState> _mapLoadMonaStyleAttributesListToState() async* {
    int amountNow =  (state is MonaStyleAttributesListLoaded) ? (state as MonaStyleAttributesListLoaded).values!.length : 0;
    _monaStyleAttributessListSubscription?.cancel();
    _monaStyleAttributessListSubscription = _monaStyleAttributesRepository.listen(
          (list) => add(MonaStyleAttributesListUpdated(value: list, mightHaveMore: amountNow != list.length)),
      orderBy: orderBy,
      descending: descending,
      eliudQuery: eliudQuery,
      limit: ((paged != null) && paged!) ? pages * monaStyleAttributesLimit : null
    );
  }

  Stream<MonaStyleAttributesListState> _mapLoadMonaStyleAttributesListWithDetailsToState() async* {
    int amountNow =  (state is MonaStyleAttributesListLoaded) ? (state as MonaStyleAttributesListLoaded).values!.length : 0;
    _monaStyleAttributessListSubscription?.cancel();
    _monaStyleAttributessListSubscription = _monaStyleAttributesRepository.listenWithDetails(
            (list) => add(MonaStyleAttributesListUpdated(value: list, mightHaveMore: amountNow != list.length)),
        orderBy: orderBy,
        descending: descending,
        eliudQuery: eliudQuery,
        limit: ((paged != null) && paged!) ? pages * monaStyleAttributesLimit : null
    );
  }

  Stream<MonaStyleAttributesListState> _mapAddMonaStyleAttributesListToState(AddMonaStyleAttributesList event) async* {
    var value = event.value;
    if (value != null) 
      _monaStyleAttributesRepository.add(value);
  }

  Stream<MonaStyleAttributesListState> _mapUpdateMonaStyleAttributesListToState(UpdateMonaStyleAttributesList event) async* {
    var value = event.value;
    if (value != null) 
      _monaStyleAttributesRepository.update(value);
  }

  Stream<MonaStyleAttributesListState> _mapDeleteMonaStyleAttributesListToState(DeleteMonaStyleAttributesList event) async* {
    var value = event.value;
    if (value != null) 
      _monaStyleAttributesRepository.delete(value);
  }

  Stream<MonaStyleAttributesListState> _mapMonaStyleAttributesListUpdatedToState(
      MonaStyleAttributesListUpdated event) async* {
    yield MonaStyleAttributesListLoaded(values: event.value, mightHaveMore: event.mightHaveMore);
  }

  @override
  Stream<MonaStyleAttributesListState> mapEventToState(MonaStyleAttributesListEvent event) async* {
    if (event is LoadMonaStyleAttributesList) {
      if ((detailed == null) || (!detailed!)) {
        yield* _mapLoadMonaStyleAttributesListToState();
      } else {
        yield* _mapLoadMonaStyleAttributesListWithDetailsToState();
      }
    }
    if (event is NewPage) {
      pages = pages + 1; // it doesn't matter so much if we increase pages beyond the end
      yield* _mapLoadMonaStyleAttributesListWithDetailsToState();
    } else if (event is AddMonaStyleAttributesList) {
      yield* _mapAddMonaStyleAttributesListToState(event);
    } else if (event is UpdateMonaStyleAttributesList) {
      yield* _mapUpdateMonaStyleAttributesListToState(event);
    } else if (event is DeleteMonaStyleAttributesList) {
      yield* _mapDeleteMonaStyleAttributesListToState(event);
    } else if (event is MonaStyleAttributesListUpdated) {
      yield* _mapMonaStyleAttributesListUpdatedToState(event);
    }
  }

  @override
  Future<void> close() {
    _monaStyleAttributessListSubscription?.cancel();
    return super.close();
  }
}


