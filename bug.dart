```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Assuming the response is a JSON array
      final List<dynamic> data = jsonDecode(response.body);
      // Accessing an element at an index that might be out of bounds
      final String value = data[10]['someKey']; // Potential error here
      print(value);
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```