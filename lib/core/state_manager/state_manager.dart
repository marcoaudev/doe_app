import 'package:flutter/material.dart';

abstract class StateManager<T> extends ValueNotifier<T>{
  StateManager(super.value);

  emit(T state){
    super.value = state;
  }
}