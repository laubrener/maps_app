import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maps_app/blocs/blocs.dart';

class BtnToggle extends StatelessWidget {
  const BtnToggle({super.key});

  @override
  Widget build(BuildContext context) {
    final mapBloc = BlocProvider.of<MapBloc>(context);
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: CircleAvatar(
          maxRadius: 30,
          backgroundColor: Colors.white,
          child: IconButton(
            icon: const Icon(Icons.more_horiz_rounded),
            onPressed: () {
              mapBloc.add(OnToggleUserRoute());
            },
          )),
    );
  }
}
