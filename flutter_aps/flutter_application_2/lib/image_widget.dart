import 'package:flutter/material.dart';

class ImageOrnekleri extends StatelessWidget {
  const ImageOrnekleri({super.key});

  @override
  Widget build(BuildContext context) {
    String _imgUrl =
        'https://images.unsplash.com/photo-1552519507-da3b142c6e3d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80';
    String _logoUrl =
        'https://emrealtunbilek.com/wp-content/uploads/2016/10/apple-icon-72x72.png';

    return Center(
      child: Column(
        children: [
          IntrinsicHeight(
            //IntrinsiceHeight:resimlerden hangisinin yüksekliği
            //en büyükse diğerlerinin yüksekliği o yükseklikle
            //aynı olur
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              //resimlerin yükseklikleri aynı oldu
              children: [
                Expanded(
                  child: Container(
                    child: Image.asset(
                      'assets/images/car.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Image.network(
                      _imgUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        // child: Text(
                        //   'Z',
                        //   style: Theme.of(context).textTheme.headline3,
                        // ),
                        backgroundImage: NetworkImage(_logoUrl),
                        backgroundColor: Colors.amber,
                        foregroundColor: Colors.red,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),

          //resim yüklenene ekrana başka bir şey yükleyebiliriz
          Container(
            child: FadeInImage.assetNetwork(
                fit: BoxFit.cover,
                placeholder: 'assets/images/loading.gif',
                image: _imgUrl),
          ),
          
          //yer tutucu
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Expanded(child: Placeholder()),
          ),
        ],
      ),
    );
  }
}
