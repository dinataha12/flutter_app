import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //هنا عملت ودجيت اسمها scaffold الودجيت دي بداخلها ودجيت اسمها safearea عشان ابعد عن البار اللي موجود في الفون من فوق
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 247, 237, 236),
        body: SafeArea(
          //هنا هخلي البيدج بتاعتي عباره عن عمود العمود ده مكون من صورة بروفايل تحته اسمي التايتل بتاعي
          //
            child: Column(
              //وكنت عايزه اسال برضو هنا علي حتت ان احط محتوي العمود في ال center والا بنعمل ابعاد افضل انا هسرش برضو عن الموضوع بس عاوزه اعرف رايك واي الافضل
          children: [
            CircleAvatar(
                radius: 50,
                //هنا انا انشأت فولدر سميته images وبحط فيه الصور اللي هحتاجها ورحت علي ملف pubspec.yaml عرفته هناك عشان فلاتر يقدر يستوعب الموضوع ويوصل للصور 
                backgroundImage: AssetImage("images/PersonalImage.png")),
            Text(
              "Dina Taha Nada",
              style: TextStyle(
                //هنا انا انشات فولدر للفونت وعرفته برضو في ملف اليامل زي الصور بس انا مش متأكدا انا كريته صح والا مسمعش محتاجه حضرتك تشوفه كدا معلش
                fontFamily: 'LucidaBrightRegular',
                fontSize: 30,
                color: const Color.fromARGB(255, 150, 6, 6),
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'flutter developer',
              style: TextStyle(
                fontFamily: 'LucidaBrightRegular',
                color: Colors.blueGrey,
                fontWeight: FontWeight.bold,
                fontSize: 30,
                

              ),

            ),
            //الكونتينر ده عباره عن ايقون تلفون + رقم الفون
            Container(
              color: Colors.blue,
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Icon(Icons.phone, color: Colors.white,),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    '+201033333333',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    ),
                ],
                    
              ),
            ),
            //ويدجيت لايقون ايميل + اسم الايميل
            Container(
              color: Colors.blue,
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Icon(Icons.email, color: Colors.white,),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    'dinataha@email.com',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    ),
                ],
                    
              ),
            ),
             
          
          ],
        )),
      ),
    );
  }
}
