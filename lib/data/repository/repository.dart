import '../../domain.dart/repository/repository.dart';
import '../data_souce/data_source.dart';

class RepositoryImpl implements Repository {
  @override
  getFact(factNumber) {
    return DataSource().getFact(factNumber);
  }

  @override
  getRandomFactMath() {
    return DataSource().getRandomFactMath();
  }

  @override
  getRandomFactYear() async {
    final request = await DataSource().getRandomFactYear();
    return request;
  }
}
