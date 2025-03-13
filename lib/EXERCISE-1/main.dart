
enum RidePreference {
  train,
  carpool,
  bus,
}

abstract class RidePreferencesListener{
    void onPreferenceSelected(RidePreference SelecedPreference);
    
}
// RidePreferencesService
class RidePreferencesService {
  RidePreference _currentPreference;
  RidePreferencesService(this._currentPreference);

  final List<RidePreferencesListener> _listeners = [];

  void addListener(RidePreferencesListener listener) {
    _listeners.add(listener);
  }

  void setRidePreference(RidePreference newPreference) {
    _currentPreference = newPreference;
    notifyListeners();
  }

  void notifyListeners() {
    for (var listener in _listeners) {
      listener.onPreferenceSelected(_currentPreference);
    }
  }
}
  

class ConsoleLogger implements RidePreferencesListener {
  @override
  void onPreferenceSelected(RidePreference selectedPreference) {
    print('Preference changed to: $selectedPreference');
  }
}


void main() {
  // Create the service 
  final ridePreferencesService = RidePreferencesService(RidePreference.train);

  // Create the logger
  final consoleLogger = ConsoleLogger();

  // Add the logger as a listener
  ridePreferencesService.addListener(consoleLogger);

  // Change the ride preference and observe the output
  ridePreferencesService.setRidePreference(RidePreference.carpool);
  ridePreferencesService.setRidePreference(RidePreference.bus);
  ridePreferencesService.setRidePreference(RidePreference.train);



}