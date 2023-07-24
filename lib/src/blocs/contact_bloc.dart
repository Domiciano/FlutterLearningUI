import 'dart:async';
import '../model/contact.dart';
import 'package:rxdart/rxdart.dart';


class ContactBloc {

  final BehaviorSubject<Contact> _currentContactSubject = BehaviorSubject<Contact>.seeded(Contact(name: "", number: ""));
  Stream<Contact> get currentContactStream => _currentContactSubject.stream;

  final BehaviorSubject<List<Contact>> _contactListSubject = BehaviorSubject<List<Contact>>.seeded([]);
  Stream<List<Contact>> get contactListStream => _contactListSubject.stream;

  void addContact() {
    _contactListSubject.add([..._contactListSubject.value, _currentContactSubject.value]);
  }

  void setName(String value) {
    _currentContactSubject.add(Contact(name: value, number: _currentContactSubject.value.number));
  }

  void setPhone(String value) {
    _currentContactSubject.add(Contact(name: _currentContactSubject.value.name, number: value));
  }

  void restoreCurrentSubject(){
    _currentContactSubject.add(Contact(name: "", number: ""));
  }

  void dispose() {
    _contactListSubject.drain();
    _contactListSubject.drain();
  }

}
