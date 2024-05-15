class WeatherLocations {
  final String city, dateTime, temparature, weatherType, iconUrl;
  final int wind, rain, humidity;
  WeatherLocations(
      {required this.city,
      required this.dateTime,
      required this.humidity,
      required this.iconUrl,
      required this.rain,
      required this.temparature,
      required this.weatherType,
      required this.wind});
}

final location = [
  WeatherLocations(
      city: 'Comilla',
      dateTime: '07:50 PM - Monday, 9 Nov 2024',
      humidity: 10,
      iconUrl: 'assets/night.jpg',
      rain: 2,
      temparature: '35\u2103',
      weatherType: 'Night',
      wind: 10),
  WeatherLocations(
      city: 'New York',
      dateTime: '07:50 AM - Monday, 10 Nov 2024',
      humidity: 10,
      iconUrl: 'assets/galaxy.jpeg',
      rain: 2,
      temparature: '15\u2103',
      weatherType: 'Cloudy',
      wind: 8),
  WeatherLocations(
      city: 'Chaina',
      dateTime: '11:50 PM - Monday, 9 Nov 2024',
      humidity: 10,
      iconUrl: 'assets/night.jpg',
      rain: 2,
      temparature: '22\u2103',
      weatherType: 'Day',
      wind: 10),
  WeatherLocations(
      city: 'Delhi',
      dateTime: '08:20 PM - Monday, 9 Nov 2024',
      humidity: 10,
      iconUrl: 'assets/galaxy.jpeg',
      rain: 2,
      temparature: '40\u2103',
      weatherType: 'Night',
      wind: 10),
];
