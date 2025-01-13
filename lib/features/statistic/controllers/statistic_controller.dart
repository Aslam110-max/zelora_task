import 'package:get/get.dart';
import 'package:zelora_task/features/statistic/domain/services/statistic_services_interface.dart';

class StatisticController extends GetxController implements GetxService {
  final StatisticServiceInterface statisticServiceInterface;
  StatisticController({required this.statisticServiceInterface});

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
