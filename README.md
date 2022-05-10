# navigate_named_routes

This project was developed while going through the following cookbook on navigation from flutter's official documentation:

https://docs.flutter.dev/cookbook/navigation/named-routes

The app uploaded in this branch has the same three-screen structure and navigation design as the app uploaded in the repository's following branch: 
https://github.com/BMEmobile/Flutter_Practice/tree/navigation_demo

The difference is that instead of using Navigator.push(), Navigator.pushReplacement() and Navigator.pushAndRemoveUntil() methods, this app uses the .pushNamed() counterpart of these methods i.e., Navigator.pushNamed(), Navigator.pushReplacementNamed() and Navigator.pushNamedAndRemoveUntil(). Using the named routes for navigation avoids code duplication.
