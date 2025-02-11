import 'package:counter_app_flutter_bloc/bloc/switch/switch_bloc.dart';
import 'package:counter_app_flutter_bloc/bloc/switch/switch_event.dart';
import 'package:counter_app_flutter_bloc/bloc/switch/switch_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SwitchExample extends StatefulWidget {
  const SwitchExample({super.key});

  @override
  State<SwitchExample> createState() => _SwitchState();
}

class _SwitchState extends State<SwitchExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Switch Example"),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Text("Notification"),
              BlocBuilder<SwitchBloc, SwitchStates>(
                buildWhen: (previous, current) => previous.isSwitch != current.isSwitch,
                builder: (context, state) {
                  return Switch(
                    value: state.isSwitch,
                    onChanged: (value) {
                      print("Notifications");
                      context
                          .read<SwitchBloc>()
                          .add(EnableOrDisableNotification());
                    },
                  );
                },
              )
            ],
          ),
          BlocBuilder<SwitchBloc, SwitchStates>(
            buildWhen: (previous, current) => previous.slider != current.slider,

            builder: (context, state) {
              print("Container");
              return Container(
                height: 200,
                color: Colors.teal.withOpacity(state.slider),
              );
            },
          ),
          BlocBuilder<SwitchBloc, SwitchStates>(
            buildWhen: (previous, current) => previous.slider != current.slider,

            builder: (context, state) {
              return Slider(
                value: state.slider,
                onChanged: (value) {
                  print("slider");
                  context.read<SwitchBloc>().add(SliderEvent(slider: value));
                },
              );
            },
          )
        ],
      ),
    );
  }
}
