class UnnamedData {
  int index = 0;
  int maxIndex = 0;
  List<String> name = [];
  Map<String, List<bool>> data = Map();

  UnnamedData() {}

  void addData(String newName, List<bool> newData) {
    name.add(newName);
  }
}