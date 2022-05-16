import "package:get/get.dart";

enum NUM { FIRST, SECOND }

class User {
  String? name;
  int? age;

  String? addrss;
  User(this.name, this.age, {this.addrss});
}

class CountControllerWithReactive extends GetxController{
  RxInt count = 0.obs;
  Rx<double> _double = 0.0.obs;
  Rx<String> value = "".obs;
  Rx<NUM> nums = NUM.FIRST.obs;
  Rx<User> user = User("홍길똥", 22).obs;
  RxList<dynamic> list = ["aaa", "bbbb"].obs;

  void insrease() {
    count++;
    _double++;
    _double(424.89);

    nums(NUM.SECOND);
    user(User('sss', 10, addrss:'ssss'));
    user.update((orign) {
      orign!;
      orign.name = "길똥홍";
      orign.age = 100;
    });

    // list.add('ccc');
    // list.addAll(['dddd', 'eeee']);
    // list.addIf(user.value.name=='길똥홍', '길똥홍');
    // list.addAllIf(user.value.name=='홍길똥', ['zzz', 'jjj']);
  }

  void putNumber(int value) {
    count(value);
  }
  
  @override
  void onInit() {
    ever(count, (_) => print("매번 호출"));
    once(count, (_) => print("한번만 호출"));
    debounce(count, (_) => print("마지막 변경에 한번만 호출"), time: Duration(seconds: 1)); //검색시 auto complate할때 서버부하 줄일때
    interval(count, (_) => print("변경되고 있는 동안 1초마다 호출"), time: Duration(seconds: 1));
    super.onInit();
  }
}