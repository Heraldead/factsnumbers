import 'package:fl/domain.dart/repository/repository.dart';

class UseCaseGetRandomFactMath{
  final Repository repository;
  UseCaseGetRandomFactMath({required this.repository});
  call(){
    return repository.getRandomFactMath();
  }
}