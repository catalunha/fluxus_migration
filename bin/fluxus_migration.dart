import 'dart:io';

import 'package:fluxus_migration/attendance/attendance_action_01.dart';
import 'package:fluxus_migration/event/event_action_01.dart';
import 'package:fluxus_migration/init_b4a.dart';

void main(List<String> arguments) async {
  // final isInitialized = await initB4AFluxus();
  final isInitialized = await initB4AFluxus3();
  if (!isInitialized) {
    print('B4A not conected...');
    exit(0);
  } else {
    print('B4A conected...');
  }
  // expertiseFluxus1ToJson();
  // expertiseJsonToFluxus2();
  // patientFluxusToJson();
  // patientJsonToFluxus2();
  // sharedAction01();
  // userProfileAction01();
  await attendanceAction01();
  await eventAction01();
}
