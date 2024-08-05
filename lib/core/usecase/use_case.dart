abstract class UseCase<Type, param> {
  Future<Type> execute([param param]);
}

class NoParam {}
