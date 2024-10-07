import 'package:get/get.dart';

class HomeController extends GetxController{

 final RxInt _currentIndex = 0.obs;

  int get currentIndex => _currentIndex.value;

  // Setter pour modifier _currentIndex
  void updateIndex(int index) {
    _currentIndex.value = index;
  }
  
}