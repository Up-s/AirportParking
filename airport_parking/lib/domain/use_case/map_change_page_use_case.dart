import 'package:airport_parking/data/data_source/airport_data.dart';
import 'package:airport_parking/domain/model/airport.dart';

class MapChangePageUseCase {
  final AirportData data;

  MapChangePageUseCase(this.data);

  List<Airport> call(List<Airport> airportList, int index) {
    final airport = airportList[index];

    final newData = airportList.map(
      (element) {
        return element.copyWith(
          opacity: element.en == airport.en ? 1 : 0,
        );
      },
    ).toList();

    return newData;
  }
}
