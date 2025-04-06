// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MessageStruct extends BaseStruct {
  MessageStruct({
    String? text,
    DateTime? date,
    UserStruct? createBy,
  })  : _text = text,
        _date = date,
        _createBy = createBy;

  // "Text" field.
  String? _text;
  String get text => _text ?? '';
  set text(String? val) => _text = val;

  bool hasText() => _text != null;

  // "Date" field.
  DateTime? _date;
  DateTime? get date => _date;
  set date(DateTime? val) => _date = val;

  bool hasDate() => _date != null;

  // "CreateBy" field.
  UserStruct? _createBy;
  UserStruct get createBy => _createBy ?? UserStruct();
  set createBy(UserStruct? val) => _createBy = val;

  void updateCreateBy(Function(UserStruct) updateFn) {
    updateFn(_createBy ??= UserStruct());
  }

  bool hasCreateBy() => _createBy != null;

  static MessageStruct fromMap(Map<String, dynamic> data) => MessageStruct(
        text: data['Text'] as String?,
        date: data['Date'] as DateTime?,
        createBy: data['CreateBy'] is UserStruct
            ? data['CreateBy']
            : UserStruct.maybeFromMap(data['CreateBy']),
      );

  static MessageStruct? maybeFromMap(dynamic data) =>
      data is Map ? MessageStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'Text': _text,
        'Date': _date,
        'CreateBy': _createBy?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Text': serializeParam(
          _text,
          ParamType.String,
        ),
        'Date': serializeParam(
          _date,
          ParamType.DateTime,
        ),
        'CreateBy': serializeParam(
          _createBy,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static MessageStruct fromSerializableMap(Map<String, dynamic> data) =>
      MessageStruct(
        text: deserializeParam(
          data['Text'],
          ParamType.String,
          false,
        ),
        date: deserializeParam(
          data['Date'],
          ParamType.DateTime,
          false,
        ),
        createBy: deserializeStructParam(
          data['CreateBy'],
          ParamType.DataStruct,
          false,
          structBuilder: UserStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'MessageStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MessageStruct &&
        text == other.text &&
        date == other.date &&
        createBy == other.createBy;
  }

  @override
  int get hashCode => const ListEquality().hash([text, date, createBy]);
}

MessageStruct createMessageStruct({
  String? text,
  DateTime? date,
  UserStruct? createBy,
}) =>
    MessageStruct(
      text: text,
      date: date,
      createBy: createBy ?? UserStruct(),
    );
