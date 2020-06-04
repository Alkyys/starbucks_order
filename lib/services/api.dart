class Api {

  String state;

  Future<String> initApp() =>
  Future.delayed(
    Duration(seconds: 8),
        () => state = 'init app',
  );

}