/// UseCase: abstract class, has call method
abstract class UseCase<Type,Params> {
  Future<Type> call({Params params});
}