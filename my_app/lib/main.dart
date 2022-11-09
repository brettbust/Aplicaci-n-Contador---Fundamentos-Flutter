
import 'package:flutter/material.dart';
import 'package:my_app/screens/counter_screen.dart';
import 'screens/home_screen.dart';


void main() {
  runApp(const Myapp());
}

//todos los widgets son clases que extienden de StatelessWidget o StatefulWidget



class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp( //MaterialApp es un widget que nos permite usar los widgets de material design de google
      debugShowCheckedModeBanner: false,
      home: CounterScreen()
      /* home: HomeScreen() */
      );
  }
}

//Los stateless widgets son inmutables, no pueden cambiar su estado

//Los stateful widgets pueden cambiar su estado

//En la carpeta lib vamos a crear los directorios que vamos a necesitar para nuestra app

//A continuación se enumeran los principales 70 widgets que se usan en Flutter:

/* 

1. Container
2. Row
3. Column 
4. Stack
5. ListView
6. GridView
7. ListTile
8. Card
9. Image
10. Icon
11. Text
12. TextField
13. RaisedButton
14. FlatButton
15. FloatingActionButton
16. Checkbox
17. Radio
18. Switch
19. Slider
20. AlertDialog
21. BottomNavigationBar
22. BottomSheet
23. ExpansionPanel
24. SnackBar
25. Stepper
26. DataTable
27. Divider
28. Drawer
29. AppBar
30. Scaffold
31. MediaQuery
32. Theme
33. DefaultTextStyle
34. AnimatedContainer
35. DecoratedBoxTransition
36. FadeTransition
37. PositionedTransition
38. RotationTransition
39. ScaleTransition
40. SizeTransition
41. SlideTransition
42. AnimatedBuilder
43. AnimatedListState
44. AnimatedModalBarrier
45. AnimatedOpacity
46. AnimatedPositioned
47. AnimatedSize
48. AnimatedWidget
49. Hero
50. Dismissible
51. IgnorePointer
52. AbsorbPointer
53. IndexedStack
54. LayoutBuilder
55. LimitedBox
56. Offstage
57. OverflowBox
58. SizedBox
59. Spacer
60. Transform
61. CustomSingleChildLayout
62. CustomMultiChildLayout
63.Wrap
64. Flow
65. Table
66. RichText
67. DefaultTabController
68. TabBar
69. TabBarView
70. DataTable

 */







