// Copyright (c) 2016, Will Streuli. All rights reserved. Use of this source code

// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:html';

ButtonElement buttonOne = querySelector('#button-one');
ButtonElement buttonTwo = querySelector('#button-two');
ButtonElement buttonThree = querySelector('#button-three');
ButtonElement buttonAdd = querySelector('#button-add');
ButtonElement buttonSub = querySelector('#button-sub');
//ButtonElement buttonEquals = querySelector('#button-equals');
//SpanElement spanIn = querySelector('#span-in');
SpanElement spanOut = querySelector('#span-out');

var accumulator = 0;
var total = 0;
var add = false;
var sub = false;

void main() {
  querySelector('#output').text = 'Your Dart app is running.';

//  buttonEquals.onClick.listen((Event e) {
//    add = false;
//    sub = false;
//    accumulator = 0;
//    //maths(0);
//    updateDisplay();
//    print('equals');
//  });

}

void doButtons() {
  buttonOne.onClick.listen((Event e) {
    maths(1);
    updateDisplay();
    print('one');
  });
  buttonTwo.onClick.listen((Event e) {
    maths(2);
    updateDisplay();
    print('two');
  });
  buttonThree.onClick.listen((Event e) {
    maths(3);
    updateDisplay();
    print('three');
  });
  buttonAdd.onClick.listen((Event e) {
    add = true;
    updateDisplay();
    print('add');
  });
  buttonSub.onClick.listen((Event e) {
    sub = true;
    updateDisplay();
    print('sub');
  });
}

void maths(var val) {
  if (add) {
    total = total + accumulator + val;
    accumulator = 0;
    add = false;
  } else if (sub) {
    total = total - accumulator - val;
    accumulator = 0;
    sub = false;
  } else {
    accumulator = val;
  }
}

void updateDisplay() {
  spanOut.text = total;
  //spanIn.text = accumulator;
}