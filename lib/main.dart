import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:postagepro/routes.dart';
import 'package:postagepro/services/ongkir_service.dart';

import 'controller/cubit/check_cost_cubit.dart';
import 'controller/cubit/city_destination_cubit.dart';
import 'controller/cubit/city_origin_cubit.dart';
import 'controller/cubit/province_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ProvinceCubit(OngkirService())),
        BlocProvider(create: (context) => CityOriginCubit(OngkirService())),
        BlocProvider(
            create: (context) => CityDestinationCubit(OngkirService())),
        BlocProvider(create: (context) => CheckCostCubit(OngkirService())),
      ],
      child: MaterialApp.router(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routerConfig: appRouter,
      ),
    );
  }
}
