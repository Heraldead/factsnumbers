import 'package:fl/domain.dart/repository/repository.dart';

class UseCaseGetRandomFact{
  final Repository repository;
  UseCaseGetRandomFact({required this.repository});
  call(factNumber){
   return repository.getFact(factNumber);
  }
}