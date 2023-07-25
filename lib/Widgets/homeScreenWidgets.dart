import 'package:flutter/material.dart';

Widget status(bool color, String img) {
  bool isColor = color;
  return Padding(
    padding: const EdgeInsets.all(4.0),
    child: CircleAvatar(
      radius: 45,
      backgroundColor: isColor ? const Color(0xffff4d67) : Colors.grey,
      child: CircleAvatar(
        radius: 42,
        backgroundImage: AssetImage('assets/images/'+img),
      ),
    ),
  );
}

Widget posts(String name,String jobProfile,int likes,int comments,wdt,String img){
  String namee = name;
  return Container(
    child: Column(
      children: [
       /* Row(
          children: [

            const SizedBox(
              width: 20,
            ),
            const CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('assets/images/img2.jpeg'),
            ),
            const SizedBox(width: 20,),
             Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name),
                Text(jobProfile,style: TextStyle(fontSize: 11,color: Colors.grey),)
              ],
            ),
            // SizedBox(width: wdt*.35,),
            // Image.asset('assets/icons/more.png',height: 20,)
            const ImageIcon(AssetImage('assets/icons/more.png'))
          ],
        ), */
        ListTile(
          leading: CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage('assets/images/'+img),
          ),
          title: Text(name),
          subtitle: Text(jobProfile,style: TextStyle(color: Colors.grey)),
          trailing: ImageIcon(AssetImage('assets/icons/more.png')),
        ),
        const SizedBox(height: 10,),
        Container(
          height: 370,
          width: 350,
          decoration: BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.circular(30),
              image: DecorationImage(image: AssetImage('assets/images/'+img),fit: BoxFit.cover)
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
          child: Row(
            children: [
              const Icon(Icons.heart_broken),
              const SizedBox(width: 5,),
              Text('${likes}'),
              const SizedBox(width: 20,),
              const Icon(Icons.comment_outlined),
              const SizedBox(width: 5,),
              Text('${comments}'),
              const SizedBox(width: 20,),
              const Icon(Icons.share_outlined),
              SizedBox(width: wdt*.30,),
              const Icon(Icons.save_alt_outlined),

            ],
          ),
        )
      ],
    ),
  );
}