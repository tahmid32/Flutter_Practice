# navigation_demo

This project was developed while going through the following cookbook on navigation from flutter's official documentation:

https://docs.flutter.dev/cookbook/navigation/navigation-basics

In Flutter, screens and pages are called routes. The cookbook demonstrates the navigation process from one route to another route with Navigator widget. Navigator class in flutter is a widget that manages a set of child widgets i.e., the routes with a stack discipline. The cookbook demonstrates the navigation process with a simple app with two screens. Here, the app created has three routes or screens. From every screen, the other two screens can be accessed. For example, from first route, both second and final routes can be accessed by pressing the buttons named 'Open Route' and 'Directly to Final Screen' respectively. From both second and final screen, previous screen can be accessed via pressing the 'Go back' named button. 

The cookbook demostrates the use of two methods from Navigator class, Navigator.push() and Navigator.pop(). To maintain the intended navigation design, the Navigator.pop() method is not used. The app uploaded in this branch also contains some additional methods from Navigator class to maintain the intended navigation design. These are: Navigator.pushAndRemoveUntil() and Navigator.pushReplacement(). Besides, the back button in the appBar of the screens actually acts as Navigator.pop() method. Please note that, to maintain the intended design, the first screen will not display any back button after navigating from other screens.

The following medium article can be looked at for having a solid understanding of the usage of common methods in the Navigator class:

https://medium.com/flutter-community/flutter-push-pop-push-1bb718b13c31
