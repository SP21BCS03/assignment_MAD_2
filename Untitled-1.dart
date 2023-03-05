import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rana Don',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      scaffoldBackgroundColor: Colors.amber,
        primarySwatch: Colors.red,
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
  void _ranaincounter() {
    setState(() {
      
      _counter++;
    });
  }
  void _zubi() {
    setState(() {
      
      _counter=0;
    });
  }
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
       
        title: Center(child: Text("Abdul Rehman")),
      ),
      body: Center(
        
        child: Column(
         
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
       
      
       floatingActionButton: Padding(
         padding: const EdgeInsets.only(left: 20),
         child: Row(
           children: [
             Column(
               children: [
                 Padding(
                   padding: const EdgeInsets.all(20),
                   child: FloatingActionButton(
                    onPressed: _decrementcounter,
                    tooltip: 'decrement',
                    child: const Icon(Icons.minimize),     
                             ),
                 ),
                 Text("Incremeny Operator")
               ],
             ),
             FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: 'enjoy',
          child: const Icon(Icons.add),
          
             ),
             ElevatedButton(onPressed: _ranaincounter, child:const  Text("adding 2",style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
             ),)),
             InkWell(
              onTap: _zubi,
              onDoubleTap: _incrementCounter,
               child: Container(
                
                height: 40,
                width: 100,
                child:const Center(child: Text("RANA")),
                decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(10)),
                ),
                
               ),
             )
           ],
         ),
       ),
       drawer: const Drawer(),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
