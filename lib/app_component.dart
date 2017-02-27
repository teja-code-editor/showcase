// Copyright (c) 2016, Ravi Teja Gudapati. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:html';
import 'package:angular2/core.dart';
import 'package:angular2/angular2.dart';

import 'package:writecode/view/import.dart' as wView;
import 'package:writecode/source/import.dart' as wSource;

@Component(
    selector: 'my-app',
    styleUrls: const ['app_component.css'],
    templateUrl: 'app_component.html',
    directives: const [CORE_DIRECTIVES])
class AppComponent {
  AppComponent() {
    view.updateView();
  }

  wView.View view =
      new wView.View(new wSource.Source(["First line is awesome!"]));

  keydown(KeyboardEvent event) {
    view.processKeyInput(event.keyCode, event.charCode, event.shiftKey,
        event.ctrlKey, event.altKey, event.metaKey);
  }

  keypress(KeyboardEvent event) {
    view.processKeyInput(event.keyCode, event.charCode, event.shiftKey,
        event.ctrlKey, event.altKey, event.metaKey);
  }
}
