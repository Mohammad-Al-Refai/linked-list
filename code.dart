class LinkedList {
  LNode head;
  LinkedList(LNode _head) {
    this.head = _head;
  }

  append(data) {
    var _head = this.head;
    while (true) {
      if (_head.next != null) {
        _head = _head.next;
      } else {
        _head.next = new LNode(data);
        break;
      }
    }
  }

  remove(target) {
    var _head = this.head;
    if (_head.data == target) {
      this.head = _head.next;
      return;
    }

    while (_head.next != null) {
      if (_head.next.data == target) {
        _head.next = _head.next.next;
        return;
      }

      _head = _head.next;
    }
  }

  size(_head) {
    int count = -1;
    while (_head != null) {
      count++;
      _head = _head.next;
    }
    return count;
  }

  getAll(data) {
    var current = this.head;
    List result = [];
    while (current.next != null) {
      result.add({"data": current.data, "next": current.next?.data});
      current = current.next;
    }
    result.add({"data": current.data, "next": current.next?.data});
    data(result);
  }
}

class LNode {
  int data = null;
  LNode next = null;
  LNode(int _data) {
    this.data = _data;
  }
}
