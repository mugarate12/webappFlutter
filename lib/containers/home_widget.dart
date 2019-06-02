import 'package:flutter_web/material.dart';
import 'package:flutter_web/rendering.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - (MediaQuery.of(context).size.height / 4),
      child: ListView(
        // componentes que integram a página
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width / 2,
                height: MediaQuery.of(context).size.height,
                child: Center(
                  child: Text(
                    'Congrats'.toUpperCase(),
                    style: TextStyle(
                      fontSize: 45
                    ),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 2,
                height: MediaQuery.of(context).size.height,
                child: Center(
                  child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam iaculis nulla urna, non porta justo efficitur non. Mauris eleifend convallis quam, nec tincidunt erat dictum in. Nulla dapibus dolor in sapien pharetra, in vehicula arcu vehicula. Suspendisse iaculis nunc et condimentum tempus. Integer hendrerit, ligula a tempor finibus, lacus diam mollis sem, sed commodo elit dui et ex. Pellentesque venenatis odio ac risus commodo, non tempor ex consequat. Phasellus viverra leo velit, bibendum hendrerit ligula tincidunt pretium. Morbi faucibus tortor at justo sollicitudin, id hendrerit tortor sodales. Proin vitae tempor ante, vel sollicitudin mauris. Nullam tincidunt diam sit amet libero mollis, sed dignissim odio elementum. Duis venenatis, nunc nec vehicula auctor, nunc velit ullamcorper massa, in maximus ex elit ut purus. Cras convallis tortor in lacus pharetra, ac dictum urna vulputate. In sit amet erat malesuada, mollis tortor a, dapibus mauris. Donec faucibus tincidunt tincidunt.'),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
