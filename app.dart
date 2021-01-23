import 'code.dart';

var linkedlist = LinkedList(LNode(0));
main() {
  for (var item in [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]) {
    linkedlist.append(item);
  }
  List.from(printAll())
      .forEach((e) => e % 2 == 0 ? linkedlist.remove(e) : null);
  print(printAll());
}

printAll() {
  List r = [];
  linkedlist.getAll((data) {
    data = data as List<dynamic>;
    for (var item in data) {
      r.add(item["data"]);
    }
  });
  return r;
}
