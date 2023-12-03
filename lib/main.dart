import 'package:dream_sto_fly/bloc/dreams_to_fly_bloc.dart';
import 'package:dream_sto_fly/screens/dashBoard.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp( MaterialApp(
debugShowCheckedModeBanner: false,
    color: Colors.white,
    home:  MultiProvider(
        
        providers: [
          ChangeNotifierProvider<DreamsToFlyBloc>(
              create: (_)=>DreamsToFlyBloc()
              ),
        ],
        child: DashBoard()),
  ));
}

