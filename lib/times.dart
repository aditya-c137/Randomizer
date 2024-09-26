class Times {
  List<String> timeDurations = new List();

/*
  Times(String s) {
    this.timeDurations.add(s);
  }
*/

  int getSize() {
    return this.timeDurations.length;
  }

  List<String> getTimes() {
    return this.timeDurations;
  }
}
