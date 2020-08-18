import 'package:coach_better/ViewModels/base_model.dart';
import 'package:coach_better/models/staff_model.dart';
import 'package:coach_better/services/staff_service.dart';

class AdminRightsViewModel extends BaseModel {
  StaffService _staffService = StaffService();
  Staff staff;
  Future getStaffs() async {
    setstate(ViewState.Busy);
    staff = await _staffService.fetchallstaff();
    setstate(ViewState.Idle);
  }
}
