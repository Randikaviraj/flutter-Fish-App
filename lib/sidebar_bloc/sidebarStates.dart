import 'package:flutter/material.dart';

import '../views/home.dart';
import '../views/logout.dart';
import '../views/more.dart';
import '../views/tanks.dart';

abstract class SideBarStates {
  Widget updateView();
}

class HomeState extends SideBarStates {
  @override
  Widget updateView() {
    // TODO: implement updateView
    return Home();
  }
}

class TanksState extends SideBarStates {
  @override
  Widget updateView() {
    // TODO: implement updateView
    return Tanks();
  }
}

class MoreState extends SideBarStates {
  @override
  Widget updateView() {
    // TODO: implement updateView
    return More();
  }
}

class LogOutState extends SideBarStates {
  @override
  Widget updateView() {
    // TODO: implement updateView
    return LogOut();
  }
}
