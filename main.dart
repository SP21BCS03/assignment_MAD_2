import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget  build (BuildContext context) {
    return MaterialApp(
      title: 'my first counter app',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      scaffoldBackgroundColor: Color.fromARGB(255,211,244,241),
        primarySwatch:Colors.indigo,
         ),
      home:MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

//.................FUNCTIONS FOR PUSH AND POP...................

  void _incrementCounter() {
    setState(() {
     
      _counter+=3; 
      
    });
  }
void _decrementcounter() {
    setState(() {
      
      _counter-=3;
    });
  }
  void _incrementincounter() {
    setState(() {
      
      _counter++;
    });
  }
  void _reset() {
    setState(() {
      
      _counter=0;
    });
  }

  //.........................BODY.................................

  @override   //USE FOR CHANGING IN PARENTS CLASS................ 
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
       
        title:Center(child: Text("Awesome counter App",style:TextStyle(color: Color.fromARGB(197, 222, 240, 228),fontWeight:FontWeight.w800)))
      ),
      body: Center(
        
        child: Row(
         
          mainAxisAlignment: MainAxisAlignment.start,
            
          children: <Widget>[
            const Text('Your counts for your pushing button -> ',
            style:TextStyle(color: Color.fromARGB(197, 241, 3, 3),fontWeight:FontWeight.w800,fontFamily: AutofillHints.organizationName)

            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
       
       //........................BUTTONS STYYLE / DECORATIONS ...............................

       floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
       floatingActionButton: Padding(
         padding: const EdgeInsets.all(20),
         child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          
           children: [
             FloatingActionButton(
              
                    onPressed: _decrementcounter,
                    tooltip: '-3',
                    child: const Icon(Icons.minimize),
                    
                    backgroundColor: Colors.purpleAccent,  
             ),
            
             FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: 'increment 3',
          child: const Icon(Icons.add),
          
             ),

             ElevatedButton(onPressed: _incrementincounter, child:const  Text("add 1",style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w300
             ),)),

             InkWell(
              onTap: _reset,
               child: Container(
                height: 40,
                width: 60,
                child:const Center(child: Text("reset")),
                decoration: const BoxDecoration(
                color: Color.fromARGB(133, 108, 62, 208),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(10)),
                boxShadow:[BoxShadow(color:Color.fromRGBO(122, 108, 62, 208))
                ],
        
                ),
                
               ),
             )
           ,
        ] ),
       ),
       drawer: const Drawer(),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
