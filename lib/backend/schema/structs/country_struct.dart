// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CountryStruct extends BaseStruct {
  CountryStruct({
    String? name,
    String? dialCode,
    String? image,
  })  : _name = name,
        _dialCode = dialCode,
        _image = image;

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "DialCode" field.
  String? _dialCode;
  String get dialCode => _dialCode ?? '';
  set dialCode(String? val) => _dialCode = val;

  bool hasDialCode() => _dialCode != null;

  // "Image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;

  bool hasImage() => _image != null;

  static CountryStruct fromMap(Map<String, dynamic> data) => CountryStruct(
        name: data['Name'] as String?,
        dialCode: data['DialCode'] as String?,
        image: data['Image'] as String?,
      );

  static CountryStruct? maybeFromMap(dynamic data) =>
      data is Map ? CountryStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'Name': _name,
        'DialCode': _dialCode,
        'Image': _image,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Name': serializeParam(
          _name,
          ParamType.String,
        ),
        'DialCode': serializeParam(
          _dialCode,
          ParamType.String,
        ),
        'Image': serializeParam(
          _image,
          ParamType.String,
        ),
      }.withoutNulls;

  static CountryStruct fromSerializableMap(Map<String, dynamic> data) =>
      CountryStruct(
        name: deserializeParam(
          data['Name'],
          ParamType.String,
          false,
        ),
        dialCode: deserializeParam(
          data['DialCode'],
          ParamType.String,
          false,
        ),
        image: deserializeParam(
          data['Image'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CountryStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CountryStruct &&
        name == other.name &&
        dialCode == other.dialCode &&
        image == other.image;
  }

  @override
  int get hashCode => const ListEquality().hash([name, dialCode, image]);
}

CountryStruct createCountryStruct({
  String? name,
  String? dialCode,
  String? image,
}) =>
    CountryStruct(
      name: name,
      dialCode: dialCode,
      image: image,
    );
