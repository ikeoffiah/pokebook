import 'package:flutter/material.dart';
import 'package:pokebook/bloc/color_bloc/color_bloc.dart';
import 'package:pokebook/bloc/nav_bloc/nav_bloc.dart';
import 'package:pokebook/views/home.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        
        BlocProvider<NavBloc>(create: (context) => NavBloc()),
                
        BlocProvider<ColorBloc>(create: (context) => ColorBloc())
      ],
      child: MaterialApp(
        title: 'Pokebook',
        theme: ThemeData(
          
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const HomeScreen(),
      ),
    );
  }
}

