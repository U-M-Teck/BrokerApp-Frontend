import 'package:get_storage/get_storage.dart';

class StorageService {
  static final GetStorage _storage = GetStorage(); // Singleton instance

  /// Save data with a key
  static Future<void> setData<T>(String key, T value) async {
    await _storage.write(key, value);
  }

  /// Retrieve data with a key
  static T? getData<T>(String key) {
    return _storage.read<T>(key);
  }

  /// Remove data for a specific key
  static void removeData(String key) {
    _storage.remove(key);
  }

  /// Clear all stored data
  static void removeAll() {
    _storage.erase();
  }
}
