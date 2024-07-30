import 'package:flutter/material.dart';

class master extends StatefulWidget {
  const master({super.key});

  @override
  State<master> createState() => _masterState();
}

class _masterState extends State<master> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("heyy there")),
      ),
      body: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          
            
            ElevatedButton(onPressed: (){},
             child:Text("press"),
            style: ButtonStyle(
              padding: WidgetStateProperty.all(EdgeInsets.fromLTRB(30, 20 , 30, 20)),
              foregroundColor: WidgetStateProperty.all(Colors.amber),
              overlayColor: WidgetStateProperty.resolveWith<Color?>(
                  (Set<WidgetState> states) {
                    if (states.contains(WidgetState.hovered))
                      return const Color.fromARGB(255, 243, 145, 33).withOpacity(0.04);
                    if (states.contains(WidgetState.focused) ||
                        states.contains(WidgetState.pressed))
                      return Color.fromARGB(255, 230, 100, 13).withOpacity(1);
                    return null; // Defer to the widget's default.
                  },
                ),
            
            
            ),
             ),
              DropdownButton(
              focusColor: const Color.fromARGB(255, 57, 59, 57),
              value: dropdownvalue,
              icon: const Icon(Icons.keyboard_arrow_down),
              items: items.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(
                    items,
                    style: TextStyle(
                      color: Color.fromARGB(255, 241, 241, 241),
                    ),
                  ),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  dropdownvalue = newValue!;
                });
              },
            ),
          ],

        ),
      ),
    );
  }
}
String dropdownvalue = 'Profile';
 
              var items = [
                'Profile',
                'Settings',
                'Account',
                'Go Premium',
                'Logout',
              ];
