/*
       _ _           _ 
      | (_)         | |
   ___| |_ _   _  __| |
  / _ \ | | | | |/ _` |
 |  __/ | | |_| | (_| |
  \___|_|_|\__,_|\__,_|
                       
 
 mona_style_attributes_form_state.dart
                       
 This code is generated. This is read only. Don't touch!

*/

import 'mona_style_attributes_model.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class MonaStyleAttributesFormState extends Equatable {
  const MonaStyleAttributesFormState();

  @override
  List<Object?> get props => [];
}

// Startup: menu has not been initialised yet and so we should show a "loading indicator" or something
class MonaStyleAttributesFormUninitialized extends MonaStyleAttributesFormState {
  @override
  List<Object?> get props => [];

  @override
  String toString() {
    return '''MonaStyleAttributesFormState()''';
  }
}

// MonaStyleAttributesModel has been initialised and hence MonaStyleAttributesModel is available
class MonaStyleAttributesFormInitialized extends MonaStyleAttributesFormState {
  final MonaStyleAttributesModel? value;

  @override
  List<Object?> get props => [ value ];

  const MonaStyleAttributesFormInitialized({ this.value });
}

// Menu has been initialised and hence a menu is available
abstract class MonaStyleAttributesFormError extends MonaStyleAttributesFormInitialized {
  final String? message;

  @override
  List<Object?> get props => [ message, value ];

  const MonaStyleAttributesFormError({this.message, MonaStyleAttributesModel? value }) : super(value: value);

  @override
  String toString() {
    return '''MonaStyleAttributesFormError {
      value: $value,
      message: $message,
    }''';
  }
}
class DocumentIDMonaStyleAttributesFormError extends MonaStyleAttributesFormError { 
  const DocumentIDMonaStyleAttributesFormError({ String? message, MonaStyleAttributesModel? value }): super(message: message, value: value);

  @override
  List<Object?> get props => [ message, value ];

  @override
  String toString() {
    return '''DocumentIDMonaStyleAttributesFormError {
      value: $value,
      message: $message,
    }''';
  }
}


class AppIdMonaStyleAttributesFormError extends MonaStyleAttributesFormError { 
  const AppIdMonaStyleAttributesFormError({ String? message, MonaStyleAttributesModel? value }): super(message: message, value: value);

  @override
  List<Object?> get props => [ message, value ];

  @override
  String toString() {
    return '''AppIdMonaStyleAttributesFormError {
      value: $value,
      message: $message,
    }''';
  }
}


class FormBackgroundMonaStyleAttributesFormError extends MonaStyleAttributesFormError { 
  const FormBackgroundMonaStyleAttributesFormError({ String? message, MonaStyleAttributesModel? value }): super(message: message, value: value);

  @override
  List<Object?> get props => [ message, value ];

  @override
  String toString() {
    return '''FormBackgroundMonaStyleAttributesFormError {
      value: $value,
      message: $message,
    }''';
  }
}


class AppBackgroundMonaStyleAttributesFormError extends MonaStyleAttributesFormError { 
  const AppBackgroundMonaStyleAttributesFormError({ String? message, MonaStyleAttributesModel? value }): super(message: message, value: value);

  @override
  List<Object?> get props => [ message, value ];

  @override
  String toString() {
    return '''AppBackgroundMonaStyleAttributesFormError {
      value: $value,
      message: $message,
    }''';
  }
}


class FormGroupTitleColorMonaStyleAttributesFormError extends MonaStyleAttributesFormError { 
  const FormGroupTitleColorMonaStyleAttributesFormError({ String? message, MonaStyleAttributesModel? value }): super(message: message, value: value);

  @override
  List<Object?> get props => [ message, value ];

  @override
  String toString() {
    return '''FormGroupTitleColorMonaStyleAttributesFormError {
      value: $value,
      message: $message,
    }''';
  }
}


class FormFieldTextColorMonaStyleAttributesFormError extends MonaStyleAttributesFormError { 
  const FormFieldTextColorMonaStyleAttributesFormError({ String? message, MonaStyleAttributesModel? value }): super(message: message, value: value);

  @override
  List<Object?> get props => [ message, value ];

  @override
  String toString() {
    return '''FormFieldTextColorMonaStyleAttributesFormError {
      value: $value,
      message: $message,
    }''';
  }
}


class FormFieldHeaderColorMonaStyleAttributesFormError extends MonaStyleAttributesFormError { 
  const FormFieldHeaderColorMonaStyleAttributesFormError({ String? message, MonaStyleAttributesModel? value }): super(message: message, value: value);

  @override
  List<Object?> get props => [ message, value ];

  @override
  String toString() {
    return '''FormFieldHeaderColorMonaStyleAttributesFormError {
      value: $value,
      message: $message,
    }''';
  }
}


class FormFieldFocusColorMonaStyleAttributesFormError extends MonaStyleAttributesFormError { 
  const FormFieldFocusColorMonaStyleAttributesFormError({ String? message, MonaStyleAttributesModel? value }): super(message: message, value: value);

  @override
  List<Object?> get props => [ message, value ];

  @override
  String toString() {
    return '''FormFieldFocusColorMonaStyleAttributesFormError {
      value: $value,
      message: $message,
    }''';
  }
}


class ListBackgroundMonaStyleAttributesFormError extends MonaStyleAttributesFormError { 
  const ListBackgroundMonaStyleAttributesFormError({ String? message, MonaStyleAttributesModel? value }): super(message: message, value: value);

  @override
  List<Object?> get props => [ message, value ];

  @override
  String toString() {
    return '''ListBackgroundMonaStyleAttributesFormError {
      value: $value,
      message: $message,
    }''';
  }
}


class ListTextItemColorMonaStyleAttributesFormError extends MonaStyleAttributesFormError { 
  const ListTextItemColorMonaStyleAttributesFormError({ String? message, MonaStyleAttributesModel? value }): super(message: message, value: value);

  @override
  List<Object?> get props => [ message, value ];

  @override
  String toString() {
    return '''ListTextItemColorMonaStyleAttributesFormError {
      value: $value,
      message: $message,
    }''';
  }
}


class FloatingButtonForegroundColorMonaStyleAttributesFormError extends MonaStyleAttributesFormError { 
  const FloatingButtonForegroundColorMonaStyleAttributesFormError({ String? message, MonaStyleAttributesModel? value }): super(message: message, value: value);

  @override
  List<Object?> get props => [ message, value ];

  @override
  String toString() {
    return '''FloatingButtonForegroundColorMonaStyleAttributesFormError {
      value: $value,
      message: $message,
    }''';
  }
}


class FloatingButtonBackgroundColorMonaStyleAttributesFormError extends MonaStyleAttributesFormError { 
  const FloatingButtonBackgroundColorMonaStyleAttributesFormError({ String? message, MonaStyleAttributesModel? value }): super(message: message, value: value);

  @override
  List<Object?> get props => [ message, value ];

  @override
  String toString() {
    return '''FloatingButtonBackgroundColorMonaStyleAttributesFormError {
      value: $value,
      message: $message,
    }''';
  }
}


class DividerColorMonaStyleAttributesFormError extends MonaStyleAttributesFormError { 
  const DividerColorMonaStyleAttributesFormError({ String? message, MonaStyleAttributesModel? value }): super(message: message, value: value);

  @override
  List<Object?> get props => [ message, value ];

  @override
  String toString() {
    return '''DividerColorMonaStyleAttributesFormError {
      value: $value,
      message: $message,
    }''';
  }
}


class TopicContainerBackgroundMonaStyleAttributesFormError extends MonaStyleAttributesFormError { 
  const TopicContainerBackgroundMonaStyleAttributesFormError({ String? message, MonaStyleAttributesModel? value }): super(message: message, value: value);

  @override
  List<Object?> get props => [ message, value ];

  @override
  String toString() {
    return '''TopicContainerBackgroundMonaStyleAttributesFormError {
      value: $value,
      message: $message,
    }''';
  }
}


class ActionContainerBackgroundMonaStyleAttributesFormError extends MonaStyleAttributesFormError { 
  const ActionContainerBackgroundMonaStyleAttributesFormError({ String? message, MonaStyleAttributesModel? value }): super(message: message, value: value);

  @override
  List<Object?> get props => [ message, value ];

  @override
  String toString() {
    return '''ActionContainerBackgroundMonaStyleAttributesFormError {
      value: $value,
      message: $message,
    }''';
  }
}


class AppBarBGMonaStyleAttributesFormError extends MonaStyleAttributesFormError { 
  const AppBarBGMonaStyleAttributesFormError({ String? message, MonaStyleAttributesModel? value }): super(message: message, value: value);

  @override
  List<Object?> get props => [ message, value ];

  @override
  String toString() {
    return '''AppBarBGMonaStyleAttributesFormError {
      value: $value,
      message: $message,
    }''';
  }
}


class AppBarIconColorMonaStyleAttributesFormError extends MonaStyleAttributesFormError { 
  const AppBarIconColorMonaStyleAttributesFormError({ String? message, MonaStyleAttributesModel? value }): super(message: message, value: value);

  @override
  List<Object?> get props => [ message, value ];

  @override
  String toString() {
    return '''AppBarIconColorMonaStyleAttributesFormError {
      value: $value,
      message: $message,
    }''';
  }
}


class AppBarSelectedIconColorMonaStyleAttributesFormError extends MonaStyleAttributesFormError { 
  const AppBarSelectedIconColorMonaStyleAttributesFormError({ String? message, MonaStyleAttributesModel? value }): super(message: message, value: value);

  @override
  List<Object?> get props => [ message, value ];

  @override
  String toString() {
    return '''AppBarSelectedIconColorMonaStyleAttributesFormError {
      value: $value,
      message: $message,
    }''';
  }
}


class AppBarMenuBackgroundColorMonaStyleAttributesFormError extends MonaStyleAttributesFormError { 
  const AppBarMenuBackgroundColorMonaStyleAttributesFormError({ String? message, MonaStyleAttributesModel? value }): super(message: message, value: value);

  @override
  List<Object?> get props => [ message, value ];

  @override
  String toString() {
    return '''AppBarMenuBackgroundColorMonaStyleAttributesFormError {
      value: $value,
      message: $message,
    }''';
  }
}


class BottomNavigationBarBGMonaStyleAttributesFormError extends MonaStyleAttributesFormError { 
  const BottomNavigationBarBGMonaStyleAttributesFormError({ String? message, MonaStyleAttributesModel? value }): super(message: message, value: value);

  @override
  List<Object?> get props => [ message, value ];

  @override
  String toString() {
    return '''BottomNavigationBarBGMonaStyleAttributesFormError {
      value: $value,
      message: $message,
    }''';
  }
}


class DrawerBGMonaStyleAttributesFormError extends MonaStyleAttributesFormError { 
  const DrawerBGMonaStyleAttributesFormError({ String? message, MonaStyleAttributesModel? value }): super(message: message, value: value);

  @override
  List<Object?> get props => [ message, value ];

  @override
  String toString() {
    return '''DrawerBGMonaStyleAttributesFormError {
      value: $value,
      message: $message,
    }''';
  }
}


class DrawerHeaderBGMonaStyleAttributesFormError extends MonaStyleAttributesFormError { 
  const DrawerHeaderBGMonaStyleAttributesFormError({ String? message, MonaStyleAttributesModel? value }): super(message: message, value: value);

  @override
  List<Object?> get props => [ message, value ];

  @override
  String toString() {
    return '''DrawerHeaderBGMonaStyleAttributesFormError {
      value: $value,
      message: $message,
    }''';
  }
}


class ProfileDrawerBGMonaStyleAttributesFormError extends MonaStyleAttributesFormError { 
  const ProfileDrawerBGMonaStyleAttributesFormError({ String? message, MonaStyleAttributesModel? value }): super(message: message, value: value);

  @override
  List<Object?> get props => [ message, value ];

  @override
  String toString() {
    return '''ProfileDrawerBGMonaStyleAttributesFormError {
      value: $value,
      message: $message,
    }''';
  }
}


class ProfileDrawerHeaderBGMonaStyleAttributesFormError extends MonaStyleAttributesFormError { 
  const ProfileDrawerHeaderBGMonaStyleAttributesFormError({ String? message, MonaStyleAttributesModel? value }): super(message: message, value: value);

  @override
  List<Object?> get props => [ message, value ];

  @override
  String toString() {
    return '''ProfileDrawerHeaderBGMonaStyleAttributesFormError {
      value: $value,
      message: $message,
    }''';
  }
}


class BackgroundColorHomeMenuMonaStyleAttributesFormError extends MonaStyleAttributesFormError { 
  const BackgroundColorHomeMenuMonaStyleAttributesFormError({ String? message, MonaStyleAttributesModel? value }): super(message: message, value: value);

  @override
  List<Object?> get props => [ message, value ];

  @override
  String toString() {
    return '''BackgroundColorHomeMenuMonaStyleAttributesFormError {
      value: $value,
      message: $message,
    }''';
  }
}


class H1MonaStyleAttributesFormError extends MonaStyleAttributesFormError { 
  const H1MonaStyleAttributesFormError({ String? message, MonaStyleAttributesModel? value }): super(message: message, value: value);

  @override
  List<Object?> get props => [ message, value ];

  @override
  String toString() {
    return '''H1MonaStyleAttributesFormError {
      value: $value,
      message: $message,
    }''';
  }
}


class H2MonaStyleAttributesFormError extends MonaStyleAttributesFormError { 
  const H2MonaStyleAttributesFormError({ String? message, MonaStyleAttributesModel? value }): super(message: message, value: value);

  @override
  List<Object?> get props => [ message, value ];

  @override
  String toString() {
    return '''H2MonaStyleAttributesFormError {
      value: $value,
      message: $message,
    }''';
  }
}


class H3MonaStyleAttributesFormError extends MonaStyleAttributesFormError { 
  const H3MonaStyleAttributesFormError({ String? message, MonaStyleAttributesModel? value }): super(message: message, value: value);

  @override
  List<Object?> get props => [ message, value ];

  @override
  String toString() {
    return '''H3MonaStyleAttributesFormError {
      value: $value,
      message: $message,
    }''';
  }
}


class H4MonaStyleAttributesFormError extends MonaStyleAttributesFormError { 
  const H4MonaStyleAttributesFormError({ String? message, MonaStyleAttributesModel? value }): super(message: message, value: value);

  @override
  List<Object?> get props => [ message, value ];

  @override
  String toString() {
    return '''H4MonaStyleAttributesFormError {
      value: $value,
      message: $message,
    }''';
  }
}


class H5MonaStyleAttributesFormError extends MonaStyleAttributesFormError { 
  const H5MonaStyleAttributesFormError({ String? message, MonaStyleAttributesModel? value }): super(message: message, value: value);

  @override
  List<Object?> get props => [ message, value ];

  @override
  String toString() {
    return '''H5MonaStyleAttributesFormError {
      value: $value,
      message: $message,
    }''';
  }
}


class TextFieldHeaderMonaStyleAttributesFormError extends MonaStyleAttributesFormError { 
  const TextFieldHeaderMonaStyleAttributesFormError({ String? message, MonaStyleAttributesModel? value }): super(message: message, value: value);

  @override
  List<Object?> get props => [ message, value ];

  @override
  String toString() {
    return '''TextFieldHeaderMonaStyleAttributesFormError {
      value: $value,
      message: $message,
    }''';
  }
}


class FontTextMonaStyleAttributesFormError extends MonaStyleAttributesFormError { 
  const FontTextMonaStyleAttributesFormError({ String? message, MonaStyleAttributesModel? value }): super(message: message, value: value);

  @override
  List<Object?> get props => [ message, value ];

  @override
  String toString() {
    return '''FontTextMonaStyleAttributesFormError {
      value: $value,
      message: $message,
    }''';
  }
}


class FontSmallTextMonaStyleAttributesFormError extends MonaStyleAttributesFormError { 
  const FontSmallTextMonaStyleAttributesFormError({ String? message, MonaStyleAttributesModel? value }): super(message: message, value: value);

  @override
  List<Object?> get props => [ message, value ];

  @override
  String toString() {
    return '''FontSmallTextMonaStyleAttributesFormError {
      value: $value,
      message: $message,
    }''';
  }
}


class FontHighlight1MonaStyleAttributesFormError extends MonaStyleAttributesFormError { 
  const FontHighlight1MonaStyleAttributesFormError({ String? message, MonaStyleAttributesModel? value }): super(message: message, value: value);

  @override
  List<Object?> get props => [ message, value ];

  @override
  String toString() {
    return '''FontHighlight1MonaStyleAttributesFormError {
      value: $value,
      message: $message,
    }''';
  }
}


class FontHighlight2MonaStyleAttributesFormError extends MonaStyleAttributesFormError { 
  const FontHighlight2MonaStyleAttributesFormError({ String? message, MonaStyleAttributesModel? value }): super(message: message, value: value);

  @override
  List<Object?> get props => [ message, value ];

  @override
  String toString() {
    return '''FontHighlight2MonaStyleAttributesFormError {
      value: $value,
      message: $message,
    }''';
  }
}


class FontLinkMonaStyleAttributesFormError extends MonaStyleAttributesFormError { 
  const FontLinkMonaStyleAttributesFormError({ String? message, MonaStyleAttributesModel? value }): super(message: message, value: value);

  @override
  List<Object?> get props => [ message, value ];

  @override
  String toString() {
    return '''FontLinkMonaStyleAttributesFormError {
      value: $value,
      message: $message,
    }''';
  }
}


class RouteBuilderMonaStyleAttributesFormError extends MonaStyleAttributesFormError { 
  const RouteBuilderMonaStyleAttributesFormError({ String? message, MonaStyleAttributesModel? value }): super(message: message, value: value);

  @override
  List<Object?> get props => [ message, value ];

  @override
  String toString() {
    return '''RouteBuilderMonaStyleAttributesFormError {
      value: $value,
      message: $message,
    }''';
  }
}


class RouteAnimationDurationMonaStyleAttributesFormError extends MonaStyleAttributesFormError { 
  const RouteAnimationDurationMonaStyleAttributesFormError({ String? message, MonaStyleAttributesModel? value }): super(message: message, value: value);

  @override
  List<Object?> get props => [ message, value ];

  @override
  String toString() {
    return '''RouteAnimationDurationMonaStyleAttributesFormError {
      value: $value,
      message: $message,
    }''';
  }
}


class DialogBackgroundColorMonaStyleAttributesFormError extends MonaStyleAttributesFormError { 
  const DialogBackgroundColorMonaStyleAttributesFormError({ String? message, MonaStyleAttributesModel? value }): super(message: message, value: value);

  @override
  List<Object?> get props => [ message, value ];

  @override
  String toString() {
    return '''DialogBackgroundColorMonaStyleAttributesFormError {
      value: $value,
      message: $message,
    }''';
  }
}


class DialogSeperatorColorMonaStyleAttributesFormError extends MonaStyleAttributesFormError { 
  const DialogSeperatorColorMonaStyleAttributesFormError({ String? message, MonaStyleAttributesModel? value }): super(message: message, value: value);

  @override
  List<Object?> get props => [ message, value ];

  @override
  String toString() {
    return '''DialogSeperatorColorMonaStyleAttributesFormError {
      value: $value,
      message: $message,
    }''';
  }
}


class PopupMenuButtonColorMonaStyleAttributesFormError extends MonaStyleAttributesFormError { 
  const PopupMenuButtonColorMonaStyleAttributesFormError({ String? message, MonaStyleAttributesModel? value }): super(message: message, value: value);

  @override
  List<Object?> get props => [ message, value ];

  @override
  String toString() {
    return '''PopupMenuButtonColorMonaStyleAttributesFormError {
      value: $value,
      message: $message,
    }''';
  }
}


class TextBubbleBackgroundColorMonaStyleAttributesFormError extends MonaStyleAttributesFormError { 
  const TextBubbleBackgroundColorMonaStyleAttributesFormError({ String? message, MonaStyleAttributesModel? value }): super(message: message, value: value);

  @override
  List<Object?> get props => [ message, value ];

  @override
  String toString() {
    return '''TextBubbleBackgroundColorMonaStyleAttributesFormError {
      value: $value,
      message: $message,
    }''';
  }
}


class DropdownButtonnColorMonaStyleAttributesFormError extends MonaStyleAttributesFormError { 
  const DropdownButtonnColorMonaStyleAttributesFormError({ String? message, MonaStyleAttributesModel? value }): super(message: message, value: value);

  @override
  List<Object?> get props => [ message, value ];

  @override
  String toString() {
    return '''DropdownButtonnColorMonaStyleAttributesFormError {
      value: $value,
      message: $message,
    }''';
  }
}


class MonaStyleAttributesFormLoaded extends MonaStyleAttributesFormInitialized { 
  const MonaStyleAttributesFormLoaded({ MonaStyleAttributesModel? value }): super(value: value);

  @override
  List<Object?> get props => [ value ];

  @override
  String toString() {
    return '''MonaStyleAttributesFormLoaded {
      value: $value,
    }''';
  }
}


class SubmittableMonaStyleAttributesForm extends MonaStyleAttributesFormInitialized { 
  const SubmittableMonaStyleAttributesForm({ MonaStyleAttributesModel? value }): super(value: value);

  @override
  List<Object?> get props => [ value ];

  @override
  String toString() {
    return '''SubmittableMonaStyleAttributesForm {
      value: $value,
    }''';
  }
}


