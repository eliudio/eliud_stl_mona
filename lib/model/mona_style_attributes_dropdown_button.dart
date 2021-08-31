/*
       _ _           _ 
      | (_)         | |
   ___| |_ _   _  __| |
  / _ \ | | | | |/ _` |
 |  __/ | | |_| | (_| |
  \___|_|_|\__,_|\__,_|
                       
 
 mona_style_attributes_list.dart
                       
 This code is generated. This is read only. Don't touch!

*/

import 'package:eliud_core/package/packages.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:eliud_core/style/style_registry.dart';
import 'package:eliud_core/core/access/bloc/access_state.dart';
import 'package:eliud_core/core/access/bloc/access_bloc.dart';


import 'package:eliud_stl_mona/model/mona_style_attributes_list_bloc.dart';
import 'package:eliud_stl_mona/model/mona_style_attributes_list_state.dart';
import 'package:eliud_stl_mona/model/mona_style_attributes_model.dart';


typedef MonaStyleAttributesChanged(String? value);

class MonaStyleAttributesDropdownButtonWidget extends StatefulWidget {
  final String? value;
  final MonaStyleAttributesChanged? trigger;
  final bool? optional;

  MonaStyleAttributesDropdownButtonWidget({ this.value, this.trigger, this.optional, Key? key }): super(key: key);

  @override
  State<StatefulWidget> createState() {
    return MonaStyleAttributesDropdownButtonWidgetState();
  }
}

class MonaStyleAttributesDropdownButtonWidgetState extends State<MonaStyleAttributesDropdownButtonWidget> {
  MonaStyleAttributesListBloc? bloc;

  MonaStyleAttributesDropdownButtonWidgetState();

  @override
  void didChangeDependencies() {
    bloc = BlocProvider.of<MonaStyleAttributesListBloc>(context);
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    if (bloc != null) bloc!.close();
    super.dispose();
  }

List<Widget> widgets(MonaStyleAttributesModel pm) {
var widgets = <Widget>[];
if (pm.documentID! != null) widgets.add(new Text(pm.documentID!));
if (pm.description! != null) widgets.add(new Text(pm.description!));
return widgets;
}


  @override
  Widget build(BuildContext context) {
    var accessState = AccessBloc.getState(context);
    return BlocBuilder<MonaStyleAttributesListBloc, MonaStyleAttributesListState>(builder: (context, state) {
      if (state is MonaStyleAttributesListLoading) {
        return StyleRegistry.registry().styleWithContext(context).adminListStyle().progressIndicator(context);
      } else if (state is MonaStyleAttributesListLoaded) {
        String? valueChosen;
        if (state.values!.indexWhere((v) => (v!.documentID == widget.value)) >= 0)
          valueChosen = widget.value;
        else
          if (widget.optional != null && widget.optional!) valueChosen = null;
          
        final values = state.values;
        final items = <DropdownMenuItem<String>>[];
        if (state.values!.isNotEmpty) {
          if (widget.optional != null && widget.optional!) {
            items.add(new DropdownMenuItem<String>(
                value: null,
                child: new Container(
                  padding: const EdgeInsets.only(bottom: 5.0),
                  height: 100.0,
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget> [ new Text("None") ],
                  ),
                )));
          }
          state.values!.forEach((element) {
            items.add(new DropdownMenuItem<String>(
                value: element!.documentID,
                child: new Container(
                  padding: const EdgeInsets.only(bottom: 5.0),
                  height: 100.0,
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: widgets(element),
                  ),
                )));
          });
        }
        DropdownButton button = 
                    DropdownButton<String>(
                      isDense: false,
                      isExpanded: false,
                      items: items,
                      value: valueChosen,
                      hint: Text('Select a monaStyleAttributes'),
                      onChanged: !accessState.memberIsOwner() ? null : _onChange,
                    );
        if (false) {
          return Container(height:48, child: Center(child: button));
        } else {
          return Center(child: button);
        }
      } else {
        return StyleRegistry.registry().styleWithContext(context).adminListStyle().progressIndicator(context);
      }
    });
  }

  void _onChange(String? value) {
    widget.trigger!(value);
  }
}

