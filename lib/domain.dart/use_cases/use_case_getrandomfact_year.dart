import 'package:fl/domain.dart/repository/repository.dart';

class UseCaseGetRandomFactYear {
  final Repository repository;
  UseCaseGetRandomFactYear({required this.repository});
  call() async {
    final request = await repository.getRandomFactYear();
    return request;
  }
}
