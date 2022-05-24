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
  EliudQuery? eliudQuery;
  int pages = 1;
  final bool? paged;
  final String? orderBy;
  final bool? descending;
  final bool? detailed;
  final int monaStyleAttributesLimit;

  MonaStyleAttributesListBloc({this.paged, this.orderBy, this.descending, this.detailed, this.eliudQuery, required MonaStyleAttributesRepository monaStyleAttributesRepository, this.monaStyleAttributesLimit = 5})
      : assert(monaStyleAttributesRepository != null),
        _monaStyleAttributesRepository = monaStyleAttributesRepository,
        super(MonaStyleAttributesListLoading()) {
    on <LoadMonaStyleAttributesList> ((event, emit) {
      if ((detailed == null) || (!detailed!)) {
        _mapLoadMonaStyleAttributesListToState();
      } else {
        _mapLoadMonaStyleAttributesListWithDetailsToState();
      }
    });
    
    on <NewPage> ((event, emit) {
      pages = pages + 1; // it doesn't matter so much if we increase pages beyond the end
      _mapLoadMonaStyleAttributesListWithDetailsToState();
    });
    
    on <MonaStyleAttributesChangeQuery> ((event, emit) {
      eliudQuery = event.newQuery;
      if ((detailed == null) || (!detailed!)) {
        _mapLoadMonaStyleAttributesListToState();
      } else {
        _mapLoadMonaStyleAttributesListWithDetailsToState();
      }
    });
      
    on <AddMonaStyleAttributesList> ((event, emit) async {
      await _mapAddMonaStyleAttributesListToState(event);
    });
    
    on <UpdateMonaStyleAttributesList> ((event, emit) async {
      await _mapUpdateMonaStyleAttributesListToState(event);
    });
    
    on <DeleteMonaStyleAttributesList> ((event, emit) async {
      await _mapDeleteMonaStyleAttributesListToState(event);
    });
    
    on <MonaStyleAttributesListUpdated> ((event, emit) {
      emit(_mapMonaStyleAttributesListUpdatedToState(event));
    });
  }

  Future<void> _mapLoadMonaStyleAttributesListToState() async {
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

  Future<void> _mapLoadMonaStyleAttributesListWithDetailsToState() async {
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

  Future<void> _mapAddMonaStyleAttributesListToState(AddMonaStyleAttributesList event) async {
    var value = event.value;
    if (value != null) {
      await _monaStyleAttributesRepository.add(value);
    }
  }

  Future<void> _mapUpdateMonaStyleAttributesListToState(UpdateMonaStyleAttributesList event) async {
    var value = event.value;
    if (value != null) {
      await _monaStyleAttributesRepository.update(value);
    }
  }

  Future<void> _mapDeleteMonaStyleAttributesListToState(DeleteMonaStyleAttributesList event) async {
    var value = event.value;
    if (value != null) {
      await _monaStyleAttributesRepository.delete(value);
    }
  }

  MonaStyleAttributesListLoaded _mapMonaStyleAttributesListUpdatedToState(
      MonaStyleAttributesListUpdated event) => MonaStyleAttributesListLoaded(values: event.value, mightHaveMore: event.mightHaveMore);

  @override
  Future<void> close() {
    _monaStyleAttributessListSubscription?.cancel();
    return super.close();
  }
}


