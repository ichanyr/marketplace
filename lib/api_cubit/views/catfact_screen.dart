import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketplace/bottomnavbar.dart';
import '../cubit/catfact_cubit.dart';
import '../cubit/catfact_state.dart';

class CatFactScreen extends StatefulWidget {
  const CatFactScreen({super.key});

  @override
  State<CatFactScreen> createState() => _CatFactScreenState();
}

class _CatFactScreenState extends State<CatFactScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      final cubit = context.read<CatFactCubit>();
      cubit.fetchCatFact();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Get API Using Cubit"),
        ),
        body: BlocBuilder<CatFactCubit, CatFactState>(
          builder: (context, state) {
            if (state is InitCatFactState || state is LoadingCatFactState) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is ResponseCatFactState) {
              final catfacts = state.catfacts;
              return ListView.builder(
                  itemCount: catfacts.length,
                  itemBuilder: (context, index) {
                    final catfact = catfacts[index];
                    return ListTile(
                      title: Column(
                        children: [Text(catfact.text), Text(catfact.user)],
                      ),
                      subtitle: Text(catfact.verified == true
                          ? "Verified"
                          : "Tidak Verified"),
                    );
                  });
            }
            return Center(child: Text(state.toString()));
          },
        ));
  }
}
