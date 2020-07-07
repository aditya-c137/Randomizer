class TaskObj {
  List<String> tasks = new List<String>();

  void addTask(String s) {
    this.tasks.add(s);
  }

  List<String> getTasks() {
    return this.tasks;
  }

  int getSize() {
    return this.tasks.length;
  }
}
