
abstract class Token{
  factory Token({required access, required refresh}){
    return JWT(access: access, refresh: refresh);
  }
  String get access;
  String get refresh;
}


class JWT implements Token{
  const JWT({required this.access, required this.refresh});
  @override final String access;
  @override  final String refresh;
}
