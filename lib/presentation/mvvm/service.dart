import 'package:fl/domain.dart/entites/entities.dart';
import 'package:fl/domain.dart/use_cases/use_case_get_fact.dart';
import 'package:fl/domain.dart/use_cases/use_case_getrandomfact_math.dart';
import 'package:fl/domain.dart/use_cases/use_case_getrandomfact_year.dart';

class GetFactsService {
  GetFactEntitiesFromBack? getFactEntitiesFromBack;
  UseCaseGetRandomFact? useCaseGetRandomFact;
  UseCaseGetRandomFactYear? useCaseGetRandomFactYear;
  UseCaseGetRandomFactMath? useCaseGetRandomFactMath;

  GetFactsService({
    required this.useCaseGetRandomFact,
    required this.useCaseGetRandomFactYear,
    required this.useCaseGetRandomFactMath,
  });

  getFact(factNumber) async {
    final answer = await useCaseGetRandomFact?.call(factNumber);
    getFactEntitiesFromBack = GetFactEntitiesFromBack.fromJson(answer['data']);
  }

  getRandomFactYear() async {
    final yearAnswer = await useCaseGetRandomFactYear?.call();
    getFactEntitiesFromBack =
        GetFactEntitiesFromBack.fromJson(yearAnswer['data']);
  }

  getRandomFactMath() async {
    final mathAnswer = await useCaseGetRandomFactMath?.call();
    getFactEntitiesFromBack =
        GetFactEntitiesFromBack.fromJson(mathAnswer['data']);
  }
}
