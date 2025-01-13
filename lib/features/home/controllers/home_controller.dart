import 'package:get/get.dart';
import 'package:zelora_task/features/home/domain/services/home_services_interface.dart';

class HomeController extends GetxController implements GetxService {
  final HomeServiceInterface homeServiceInterface;
  HomeController({required this.homeServiceInterface});

  double? _deliveryFee;
  double? get deliveryFee => _deliveryFee;

  // void _validateSlot(List<TimeSlotModel> slots, int dateIndex, int? interval,
  //     {bool notify = true}) {
  //   _timeSlots =
  //       cartServiceInterface.validateTimeSlot(slots, dateIndex, interval, true);

  //   if (notify) {
  //     WidgetsBinding.instance.addPostFrameCallback((_) {
  //   update();
  // });
  //   }
  // }

}
