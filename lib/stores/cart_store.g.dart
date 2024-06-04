// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CartStore on _CartStore, Store {
  late final _$cartItemsAtom =
      Atom(name: '_CartStore.cartItems', context: context);

  @override
  ObservableList<FoodItem> get cartItems {
    _$cartItemsAtom.reportRead();
    return super.cartItems;
  }

  @override
  set cartItems(ObservableList<FoodItem> value) {
    _$cartItemsAtom.reportWrite(value, super.cartItems, () {
      super.cartItems = value;
    });
  }

  late final _$checkoutAsyncAction =
      AsyncAction('_CartStore.checkout', context: context);

  @override
  Future<void> checkout() {
    return _$checkoutAsyncAction.run(() => super.checkout());
  }

  late final _$_CartStoreActionController =
      ActionController(name: '_CartStore', context: context);

  @override
  void addItemToCart(FoodItem item) {
    final _$actionInfo = _$_CartStoreActionController.startAction(
        name: '_CartStore.addItemToCart');
    try {
      return super.addItemToCart(item);
    } finally {
      _$_CartStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
cartItems: ${cartItems}
    ''';
  }
}
