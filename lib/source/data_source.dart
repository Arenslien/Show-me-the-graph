class GraphData {
  String title;
  int trueCount = 0;
  int falseCount = 0;
  List<bool> allCount = [];

  // GraphData 인스턴스를 만들기 위해서는 제목과 Conut리스트를 인자로 줘야 한다.
  // ex) GraphData('명사 "엄마"', [0, 0, 1, 1, 1, 1, 1, 0, 1, 1])
  GraphData(this.title, this.allCount) {
    for (var value in this.allCount) {
      if (value == 1) {
        trueCount++;
      } else {
        falseCount++;
      }
    }
  }

  // Title을 return 하는 함수
  String getTitle() {
    return title;
  }

  // trueCount를 return 하는 함수
  int getTrueCount() {
    return trueCount;
  }

  // falseCount를 return 하는 함수
  int getFalseCount() {
    return falseCount;
  }

  // allCount를 return 하는 함수
  List<bool?> getListData() {
    return allCount;
  }
}