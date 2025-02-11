
import 'package:bloc/bloc.dart';
import 'package:counter_app_flutter_bloc/bloc/switch/switch_event.dart';
import 'package:counter_app_flutter_bloc/bloc/switch/switch_states.dart';
import 'package:flutter/material.dart';

class SwitchBloc extends Bloc<SwitchEvents, SwitchStates> {

  SwitchBloc() : super(SwitchStates()) {
    on<EnableOrDisableNotification> (_enableOrDisableNotification);
    on<SliderEvent> (_slider);
  }

  void _enableOrDisableNotification(EnableOrDisableNotification events, Emitter<SwitchStates> emit) {
  emit(state.copyWith(isSwitch: !state.isSwitch));
  }

  void _slider(SliderEvent events, Emitter<SwitchStates> emit) {
    emit(state.copyWith(slider: events.slider));
  }
}