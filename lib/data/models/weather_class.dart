import 'package:equatable/equatable.dart';

class Weather extends Equatable{

  String cityName;
  double temperature;
  double humidity;
  int pressure;
  double windSpeed;


  Weather(this.cityName, this.temperature, this.humidity, this.pressure, this.windSpeed);

  Weather.fromJson(Map<String,dynamic> json){
    cityName = json["city"]["name"];
    temperature = json[];
    humidity = json[];
    humidity = json[];
    windSpeed = json[];
  }

  @override
  // TODO: implement props
  List<Object?> get props => [];

}