import 'package:get/get.dart';

class DashboardController extends GetxController implements GetxService {
  int _currentIndex =0;
  int get currentIndex=>_currentIndex;


  void setCurrentIndex(int index){
    _currentIndex = index;
    update();
  }

}