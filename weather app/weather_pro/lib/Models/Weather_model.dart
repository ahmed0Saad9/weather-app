class WeatherModel {
  final String CityName;
  final DateTime Date;
  final String? Image;
  final double Temp;
  final double MaxTemp;
  final double MinTemp;
  final String WeaterConditon;

  WeatherModel(
      {required this.CityName,
      required this.Date,
      this.Image,
      required this.Temp,
      required this.MaxTemp,
      required this.MinTemp,
      required this.WeaterConditon});


  factory WeatherModel.fromJson(json) {
    return WeatherModel(
      Image: json['forecast']['forecastday'][0]['day']['condition']['icon'],
      CityName: json['location']['name'],
      Date: DateTime.parse(json['current']['last_updated']),
      Temp: json['forecast']['forecastday'][0]['day']['avgtemp_c'],
      MaxTemp: json['forecast']['forecastday'][0]['day']['maxtemp_c'],
      MinTemp: json['forecast']['forecastday'][0]['day']['mintemp_c'],
      WeaterConditon: json['forecast']['forecastday'][0]['day']['condition']['text'],
    );
  }
}
