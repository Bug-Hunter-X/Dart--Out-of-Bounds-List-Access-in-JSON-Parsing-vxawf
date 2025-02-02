```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body);

      // Check if the list has at least 11 elements before accessing index 10
      if (data.length > 10 && data[10] is Map && data[10].containsKey('someKey')) {
        final String value = data[10]['someKey'];
        print(value);
      } else {
        print('Element at index 10 not found or does not contain the key.');
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```