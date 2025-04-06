import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<CountryStruct> _CountryCode = [
    CountryStruct.fromSerializableMap(jsonDecode(
        '{\"Name\":\"United Kingdom\",\"DialCode\":\"+44\",\"Image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/huber-eats-consumer-app-38yn7u/assets/bmazu9pdyhmy/Vector.png\"}')),
    CountryStruct.fromSerializableMap(jsonDecode(
        '{\"Name\":\"United States\",\"DialCode\":\"+1\",\"Image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/huber-eats-consumer-app-38yn7u/assets/9mv55n0w6je3/United_States_of_America_(US).png\"}')),
    CountryStruct.fromSerializableMap(jsonDecode(
        '{\"Name\":\"Uruguay\",\"DialCode\":\"+598\",\"Image\":\"https://upload.wikimedia.org/wikipedia/commons/thumb/f/fe/Flag_of_Uruguay.svg/1200px-Flag_of_Uruguay.svg.png\"}')),
    CountryStruct.fromSerializableMap(jsonDecode(
        '{\"Name\":\"Ukraine\",\"DialCode\":\"+380\",\"Image\":\"https://upload.wikimedia.org/wikipedia/commons/thumb/4/49/Flag_of_Ukraine.svg/800px-Flag_of_Ukraine.svg.png\"}')),
    CountryStruct.fromSerializableMap(jsonDecode(
        '{\"Name\":\"Japan\",\"DialCode\":\"+81\",\"Image\":\"https://upload.wikimedia.org/wikipedia/en/thumb/9/9e/Flag_of_Japan.svg/1200px-Flag_of_Japan.svg.png\"}'))
  ];
  List<CountryStruct> get CountryCode => _CountryCode;
  set CountryCode(List<CountryStruct> value) {
    _CountryCode = value;
  }

  void addToCountryCode(CountryStruct value) {
    CountryCode.add(value);
  }

  void removeFromCountryCode(CountryStruct value) {
    CountryCode.remove(value);
  }

  void removeAtIndexFromCountryCode(int index) {
    CountryCode.removeAt(index);
  }

  void updateCountryCodeAtIndex(
    int index,
    CountryStruct Function(CountryStruct) updateFn,
  ) {
    CountryCode[index] = updateFn(_CountryCode[index]);
  }

  void insertAtIndexInCountryCode(int index, CountryStruct value) {
    CountryCode.insert(index, value);
  }

  bool _Liked = false;
  bool get Liked => _Liked;
  set Liked(bool value) {
    _Liked = value;
  }

  List<MessageStruct> _Chat = [];
  List<MessageStruct> get Chat => _Chat;
  set Chat(List<MessageStruct> value) {
    _Chat = value;
  }

  void addToChat(MessageStruct value) {
    Chat.add(value);
  }

  void removeFromChat(MessageStruct value) {
    Chat.remove(value);
  }

  void removeAtIndexFromChat(int index) {
    Chat.removeAt(index);
  }

  void updateChatAtIndex(
    int index,
    MessageStruct Function(MessageStruct) updateFn,
  ) {
    Chat[index] = updateFn(_Chat[index]);
  }

  void insertAtIndexInChat(int index, MessageStruct value) {
    Chat.insert(index, value);
  }
}
