import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketplace/bottomnavbar.dart';
import 'package:provider/provider.dart';
import 'api_cubit/cubit/catfact_cubit.dart';
import 'api_cubit/repository/catfact_repository.dart';
import 'api_cubit/views/catfact_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        BlocProvider<CatFactCubit>(
          create: (context) => CatFactCubit(CatFactRepository()),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: const MyAppHome(),
      ),
    );
  }
}

class MyAppHome extends StatelessWidget {
  const MyAppHome({super.key});

  @override
  Widget build(BuildContext context) {
    return const BottomNavBar();
  }
}

class CatFactApp extends StatelessWidget {
  const CatFactApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CatFactCubit(CatFactRepository()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const CatFactScreen(),
      ),
    );
  }
}
