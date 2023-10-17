// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_scaffold_mobx.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$BaseScaffoldRiverpod on _BaseScaffoldRiverpodBase, Store {
  Computed<Widget>? _$currentBodyComputed;

  @override
  Widget get currentBody =>
      (_$currentBodyComputed ??= Computed<Widget>(() => super.currentBody,
              name: '_BaseScaffoldRiverpodBase.currentBody'))
          .value;

  late final _$itemsAtom =
      Atom(name: '_BaseScaffoldRiverpodBase.items', context: context);

  @override
  List<BottomNavBarModel> get items {
    _$itemsAtom.reportRead();
    return super.items;
  }

  @override
  set items(List<BottomNavBarModel> value) {
    _$itemsAtom.reportWrite(value, super.items, () {
      super.items = value;
    });
  }

  late final _$currentIndexAtom =
      Atom(name: '_BaseScaffoldRiverpodBase.currentIndex', context: context);

  @override
  int get currentIndex {
    _$currentIndexAtom.reportRead();
    return super.currentIndex;
  }

  @override
  set currentIndex(int value) {
    _$currentIndexAtom.reportWrite(value, super.currentIndex, () {
      super.currentIndex = value;
    });
  }

  late final _$_BaseScaffoldRiverpodBaseActionController =
      ActionController(name: '_BaseScaffoldRiverpodBase', context: context);

  @override
  void setCurrentIndex(int index) {
    final _$actionInfo = _$_BaseScaffoldRiverpodBaseActionController
        .startAction(name: '_BaseScaffoldRiverpodBase.setCurrentIndex');
    try {
      return super.setCurrentIndex(index);
    } finally {
      _$_BaseScaffoldRiverpodBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
items: ${items},
currentIndex: ${currentIndex},
currentBody: ${currentBody}
    ''';
  }
}
