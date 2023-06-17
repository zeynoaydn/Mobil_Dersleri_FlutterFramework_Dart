import 'package:flutter/material.dart';

class TemelButonlar extends StatelessWidget {
  const TemelButonlar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () {},
          child: Text('text button'),
          style: TextButton.styleFrom(
            backgroundColor: Color.fromARGB(255, 7, 230, 255),
          ),
        ),
        TextButton.icon(
          onPressed: () {},
          icon: Icon(Icons.add),
          label: Text('text button with icon'),
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.pressed)) {
              return Colors.blue;
            }
            if (states.contains(MaterialState.hovered)) {
              return Colors.green;
            }
            //diğer bütün durumlarda varsayılanı renk olarak ata
            return null;
          }),
          foregroundColor: MaterialStateProperty.all(Colors.red),
          overlayColor: MaterialStateProperty.all(Colors.white.withOpacity(0.5))),
          
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            primary: Colors.red,
            onPrimary: Colors.yellow,
          ),
          child: Text('elevated button'),
        ),
        ElevatedButton.icon(
          onPressed: () {},
          icon: Icon(Icons.add),
          label: Text('elevated with ıcon'),
        ),
        OutlinedButton(
          onPressed: () {},
          child: Text('outline button'),
        ),
        OutlinedButton.icon(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            shape: StadiumBorder(),
            side: BorderSide(
              color: Color.fromARGB(255, 52, 55, 52),
              width: 2),
          ),
          icon: Icon(Icons.add),
          label: Text('outline button with ıcon'),
        ),
        OutlinedButton.icon(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius:BorderRadius.all(
                Radius.circular(10),),
            ),
            side: BorderSide(
              color:Colors.red,width: 7,
            )
            
          ),
          icon: Icon(Icons.add),
          label: Text('outline button with ıcon'),
        ),

      ],
    );
  }
}
   