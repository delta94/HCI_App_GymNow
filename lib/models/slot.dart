import 'package:flutter/material.dart';

class Slot {
  bool isBooked;
  bool isChose;

  Slot({
    @required this.isBooked,
    @required this.isChose
  });
}

class RowSlot{
  List<Slot> listSlotRow;
  String title;
  RowSlot({
    @required this.listSlotRow,
    @required this.title,
  });

  int totalChosenSlot() {
    int total = 0;
    for (var item in listSlotRow) {
      if(item.isChose) {
        total++;
      }
    }

    return total;
  }
}
final listRow = {
  RowSlot(
    listSlotRow: listSlot,
    title: '7:00-\n8:30'
  ),
  RowSlot(
    listSlotRow: listSlot2,
    title: '8:45-\n10:15'
  ),
  RowSlot(
    listSlotRow: listSlot3,
    title: '10:30-\n12:00'
  ),
  RowSlot(
    listSlotRow: listSlot4,
    title: '12:30-\n14:00'
  ),
  RowSlot(
    listSlotRow: listSlot5,
    title: '14:15-\n15:45'
  ),
  RowSlot(
    listSlotRow: listSlot6,
    title: '16:00-\n17:30'
  ),
};
final listSlot = [
  Slot(
    isBooked: true,
    isChose: false
  ),
  Slot(
    isBooked: false,
    isChose: false
  ),
  Slot(
    isBooked: true,
    isChose: false
  ),
  Slot(
    isBooked: false,
    isChose: false
  ),
  Slot(
    isBooked: true,
    isChose: false
  ),
  Slot(
    isBooked: false,
    isChose: false
  ),
  Slot(
    isBooked: false,
    isChose: false
  ),
];

final listSlot2 = [
  Slot(
    isBooked: true,
    isChose: false
  ),
  Slot(
    isBooked: false,
    isChose: false
  ),
  Slot(
    isBooked: true,
    isChose: false
  ),
  Slot(
    isBooked: false,
    isChose: false
  ),
  Slot(
    isBooked: true,
    isChose: false
  ),
  Slot(
    isBooked: false,
    isChose: false
  ),
  Slot(
    isBooked: false,
    isChose: false
  ),
];

final listSlot3 = [
  Slot(
    isBooked: true,
    isChose: false
  ),
  Slot(
    isBooked: false,
    isChose: false
  ),
  Slot(
    isBooked: true,
    isChose: false
  ),
  Slot(
    isBooked: false,
    isChose: false
  ),
  Slot(
    isBooked: true,
    isChose: false
  ),
  Slot(
    isBooked: false,
    isChose: false
  ),
  Slot(
    isBooked: false,
    isChose: false
  ),
];

final listSlot4 = [
  Slot(
    isBooked: true,
    isChose: false
  ),
  Slot(
    isBooked: false,
    isChose: false
  ),
  Slot(
    isBooked: true,
    isChose: false
  ),
  Slot(
    isBooked: false,
    isChose: false
  ),
  Slot(
    isBooked: true,
    isChose: false
  ),
  Slot(
    isBooked: false,
    isChose: false
  ),
  Slot(
    isBooked: false,
    isChose: false
  ),
];

final listSlot5 = [
  Slot(
    isBooked: true,
    isChose: false
  ),
  Slot(
    isBooked: false,
    isChose: false
  ),
  Slot(
    isBooked: true,
    isChose: false
  ),
  Slot(
    isBooked: false,
    isChose: false
  ),
  Slot(
    isBooked: true,
    isChose: false
  ),
  Slot(
    isBooked: false,
    isChose: false
  ),
  Slot(
    isBooked: false,
    isChose: false
  ),
];

final listSlot6 = [
  Slot(
    isBooked: true,
    isChose: false
  ),
  Slot(
    isBooked: false,
    isChose: false
  ),
  Slot(
    isBooked: true,
    isChose: false
  ),
  Slot(
    isBooked: false,
    isChose: false
  ),
  Slot(
    isBooked: true,
    isChose: false
  ),
  Slot(
    isBooked: false,
    isChose: false
  ),
  Slot(
    isBooked: false,
    isChose: false
  ),
];
