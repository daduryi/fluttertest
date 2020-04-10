main(List<String> args) {

var u  =Uri.parse('http://192.168.0.1:9000/a/b/3?b=1');
//  var a = Uri(path: , queryParameters: {'a': '1'}).toString();
u.queryParameters.addAll({'a': '1'});
print(u.toString());
}