class HospitalsModel{
  final String name;
  final int id;
  final double latitude_location;
  final double longitude_location;
  final int phone_number;
  final int work_time;
  final String services;
  final String departments;

HospitalsModel({this.name,this.id,this.latitude_location,this.longitude_location,this.phone_number,this.work_time,this.services,this.departments});

factory HospitalsModel.fromJson(final json){
  return HospitalsModel(
  name: json["name"],
  id: json["id"],
   phone_number: json["phone_number"],
    latitude_location: json ["latitude_location"],
    longitude_location: json["longitude_location"],
    services: json["services"],
    departments: json["departements"]
  );
}

}
