import 'package:fl/data/repository/repository.dart';
import 'package:fl/domain.dart/use_cases/use_case_get_fact.dart';
import 'package:fl/presentation/mvvm/service.dart';
import 'package:fl/presentation/mvvm/view_model.dart';
import 'package:fl/presentation/view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'domain.dart/use_cases/use_case_getrandomfact_math.dart';
import 'domain.dart/use_cases/use_case_getrandomfact_year.dart';

class DiContainer {
  DiContainer._();
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<GetFactModel>(
          create: (_) => GetFactModel(
            getFactsService: GetFactsService(
                useCaseGetRandomFact:
                    UseCaseGetRandomFact(repository: RepositoryImpl()),
                useCaseGetRandomFactMath:
                    UseCaseGetRandomFactMath(repository: RepositoryImpl()),
                useCaseGetRandomFactYear:
                    UseCaseGetRandomFactYear(repository: RepositoryImpl())),
          ),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: MainScreen(),
      ),
    );
  }
}
