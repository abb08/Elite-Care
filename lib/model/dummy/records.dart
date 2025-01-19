import 'package:elite_care/routes/routes_helper.dart';

List<Map<dynamic,String>> recordslist =[
  {
    "title":'test results',
    "img":"assets/images/online-physician-consultation-icon.png"},
  {
    "title":'medical record',
    "img":"assets/images/Path 523.png"},
  {
    "title":'medications',
    "img":"assets/images/Path 524.png"},
];


Map<String,String> recordsdis ={
  "test results":RouteHelpler.testResults,
  "medical record":RouteHelpler.medicalRecordsPage,
  "medications":RouteHelpler.medicationsPage,


};