import 'package:flutter/material.dart';

class MenuItem{

final String title; 
final String subtitle;
final String link;
final IconData icon;

MenuItem({
  required this.title , 
  required this.subtitle , 
  required this.link , 
  required this.icon});
}

 List<MenuItem> appMenuItems = <MenuItem> [
  MenuItem(
    title: 'Buttons', 
    subtitle: 'buttons in flutter' , 
    link: '/buttons', 
    icon: Icons.smart_button_outlined),
    
  MenuItem(
    title: 'Cards', 
    subtitle: 'Container stylized', 
    link: '/cards', 
    icon: Icons.credit_card)  
];
