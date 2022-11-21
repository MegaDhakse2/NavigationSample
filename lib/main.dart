import 'package:flutter/material.dart';

void main(){
  runApp(const NavRoute());
}
class NavRoute extends StatelessWidget {
  const NavRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const  MaterialApp(
      title:'Navigation Routes',
      home: NavFstRoute(),
    );
  }
}
class NavFstRoute extends StatefulWidget {
  const NavFstRoute({Key? key}) : super(key: key);

  @override
  State<NavFstRoute> createState() => _NavFstRouteState();
}

class _NavFstRouteState extends State<NavFstRoute> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title:const Text('1stPage'),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.end,
             children:  [
               Align(
                  alignment: Alignment.bottomRight,
                 child:
                 ElevatedButton(

                   onPressed:(){
                     Navigator.push(
                       context,
                       MaterialPageRoute(builder: (context)
                       {
                        return const NavSecdRoute();
                       }
                       )
                     );
                   },
                     child: const Text('Next Page'),),
               )
             ],
          ),

        ),

    );
  }
}

class NavSecdRoute extends StatefulWidget {
  const NavSecdRoute({Key? key}) : super(key: key);

  @override
  State<NavSecdRoute> createState() => _NavSecdRouteState();
}

class _NavSecdRouteState extends State<NavSecdRoute> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
           title:  const Text('Second Page'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,

          children: [
            // const SizedBox(height: 500),
            Align(
              alignment: Alignment.bottomLeft,
              child: TextButton(onPressed:() {
                Navigator.pop(context);
              },
                  child: const Text('Go Back'),
              ),
            ),
          ],
        ),
      )
    );
  }
}

