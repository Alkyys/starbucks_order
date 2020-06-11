class Api {

  String state;

  Future<String> initApp() =>
  Future.delayed(
    Duration(seconds: 1),
        () => state = 'init app',
  );

}