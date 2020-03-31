import 'location_fact.dart';

class Location {
  final int id;
  String name;
  String imagePath;
  final List<LocationFact> facts;

  Location(this.id, this.name, this.imagePath, this.facts);

  static Location fetchById(locationID) {
    List<Location> locations = Location.fetchAll();
    for (var i = 0; i < locations.length; i++) {
      if (locations[i].id == locationID) {
        return locations[i];
      }
    }
    return null;
  }

  // Simulate fetching a list of Location objects from an API. Use a real endpoint later
  static List<Location> fetchAll() {
    return [
      Location(1, 'Blarney Castle', 'assets/images/blarney-castle.jpg', [
        LocationFact('Sumary', 
        'Blarney Castle is a medieval stronghold in Blarney, near Cork, Ireland.The current keep was built by the MacCarthy of Muskerry dynasty, a cadet branch of the Kings of Desmond, and dates from 1446.'),
         LocationFact('How to get there', 
        'So when you get to Cork train station (Kent), which is the only train station in the city, you can walk to the bus station (an easy 10 minute flat walk), and from there take the 215 bus to Blarney.'),
      ]),
        Location(2, 'Dublin Castle', 'assets/images/dublin-castle.jpg', [
        LocationFact('Sumary', 
        'Dublin Castle is a major Irish government complex, conference centre, and tourist attraction. It is located off Dame Street in Dublin. Until 1922 it was the seat of the British government s administration in Ireland.'),
         LocationFact('How to get there', 
        'Dublin City South, Carnegie Centre is 105 meters away, 2 min walk. Temple Bar, Parliament Street is 148 meters away, 3 min walk.'),
      ]),
        Location(3, 'Killarney National Park', 'assets/images/killarney-national-park.jpg', [
        LocationFact('Sumary', 
        'Killarney National Park Facts. Killarney National Park is a 25,425 acre park in Ireland. It was the country s first national park, established in 1932 after being donated by the Muckross Estate. The park contains many historical buildings and ruins as well many beautiful sites for visitors to explore.'),
         LocationFact('How to get there', 
        'From Cork. Duration: 1.5 - 2 hours. A 1.5-hour drive along national road N22.'),
      ]),
    ];
  }
}