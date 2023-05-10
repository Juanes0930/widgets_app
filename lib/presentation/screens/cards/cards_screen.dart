import 'package:flutter/material.dart';

final card = <Map<String , dynamic>>[
    {'elevation' : 0.0 , 'label' : 'elevation 0'},
    {'elevation' : 1.0 , 'label' : 'elevation 1'},    
    {'elevation' : 2.0 , 'label' : 'elevation 2'},    
    {'elevation' : 3.0 , 'label' : 'elevation 3'},   
    {'elevation' : 4.0 , 'label' : 'elevation 4'},
    {'elevation' : 5.0 , 'label' : 'elevation 5'},
   
    ];

class CardsScreen extends StatelessWidget {
  static const String name = 'Card_Screen';
  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Cards Screens'),
      ),
      body: _CardsView());
  }
}

class _CardsView extends StatelessWidget {
    
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
          children: [
            ...card.map((card) => _CardType1(elevation: card['elevation'], label: card['label'] ) ),
            ...card.map((card) => _CardType2(elevation: card['elevation'], label: card['label'] ) ),
            ...card.map((card) => _CardType3(elevation: card['elevation'], label: card['label'] ) ),
            ...card.map((card) => _CardType4(elevation: card['elevation'], label: card['label'] ) ),
            const SizedBox(height: 50,)
        ],
      ),
    );
  }
}


class _CardType1 extends StatelessWidget {
  final double elevation;
  final String label;
  const _CardType1({required this.elevation, required this.label});

  @override
  Widget build(BuildContext context) {
    return  Card(
      elevation: elevation,
      child:  Padding(padding: const  EdgeInsets.fromLTRB(10, 7 , 10, 7,),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                 icon: const Icon(Icons.more_vert_outlined), onPressed: (){})),
              Align(
                 alignment: Alignment.topLeft,
                 child: Text(label),
                 
              )   
            ],
          ),
      ),
    );
  }
}


class _CardType2 extends StatelessWidget {
  
  final double elevation;
  final String label;
  const _CardType2({required this.elevation, required this.label});

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;
    return  Card(
      shape:  RoundedRectangleBorder(
        borderRadius:const  BorderRadius.only(topLeft:Radius.circular(15), bottomRight: Radius.circular(15)),
        side: BorderSide(color : colors.outline)
      ),
      elevation: elevation,
      child:  Padding(padding: const  EdgeInsets.fromLTRB(10, 7 , 10, 7,),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                 icon: const Icon(Icons.more_vert_outlined), onPressed: (){})),
              Align(
                 alignment: Alignment.topLeft,
                 child: Text('$label - border'),   
              )   
            ],
          ),
      ),
    );
  }
}


class _CardType3 extends StatelessWidget {
  
  final double elevation;
  final String label;
  const _CardType3({required this.elevation, required this.label});

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;
    return  Card(
      color: colors.surface,
      elevation: elevation,
      child:  Padding(padding: const  EdgeInsets.fromLTRB(10, 7 , 10, 7,),
          child: Column(
            children: [
              
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                 icon: const Icon(Icons.more_vert_outlined), onPressed: (){})),
              Align(
                 alignment: Alignment.topLeft,
                 child: Text('$label - filled'),    
              )   
            ],
          ),
      ),
   );
  }
}

class _CardType4 extends StatelessWidget {
  
  final double elevation;
  final String label;
  const _CardType4({required this.elevation, required this.label});

  @override
  Widget build(BuildContext context) {

    return  Card( 
      clipBehavior: Clip.hardEdge,
      shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(15)),     
      elevation: elevation,
      child:  Stack(
        children: [
          Image.network('https://picsum.photos/id/${elevation.toInt()}/600/250', 
          height: 300 ,
          fit: BoxFit.cover,),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              decoration: const BoxDecoration(color: Colors.white , borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20))),
              child: IconButton(
               icon: const Icon(Icons.more_vert_outlined), onPressed: (){}),
            )), 
        ],
      ),
   );
  }
}