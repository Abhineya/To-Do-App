class ToDo {
  String? id;
  String? todoText;
  bool isDone;

  ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });

  static List<ToDo> todoList() {
    return [
      ToDo(
        id: '01',
        todoText: 'Morning Exercise',
        isDone: false,
      ),
      ToDo(
        id: '02',
        todoText: 'AAA',
        isDone: false,
      ),
      ToDo(
        id: '03',
        todoText: 'BBB',
        isDone: false,
      ),
      ToDo(
        id: '04',
        todoText: 'CCC',
        isDone: false,
      ),
      ToDo(
        id: '05',
        todoText: 'DDD',
        isDone: false,
      ),
      ToDo(
        id: '06',
        todoText: 'DDD',
        isDone: false,
      ),
      ToDo(
        id: '07',
        todoText: 'DDD',
        isDone: true,
      ),
    ];
  }
}
