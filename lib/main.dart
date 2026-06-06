import 'package:flutter/material.dart';
import 'dart:math';

//هقوم بانشاء جيم تعمل علي مقارنة صورتين بحيث لو الصورتين متطابقتين يظهر جمله تمت المهمه بنجاح
//لو لا يظهر حاول مره اخري
void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        title: Text(
          'تطابق صورتين',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.indigo[900],
      ),
      body: Imagepage(),
    ),
  ));
}

class Imagepage extends StatefulWidget {
  const Imagepage({super.key});

  @override
  State<Imagepage> createState() => _ImagepageState();
}

class _ImagepageState extends State<Imagepage> {
  int imagenum = 1;
  int imagenum1 = 1;
  void changeimage() {
    imagenum = Random().nextInt(3) + 1;
    imagenum1 = Random().nextInt(3) + 1;
  }

  @override
  Widget build(BuildContext context) {
    //المحتوي هيبقي عباره عن عمود بداخله نص وصف الصف بنحط في صورتين
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          imagenum == imagenum1 ? 'مبروووك لقد نجحت' : 'حاول مره اخري',
          style: TextStyle(
            fontSize: 42,
            color: Colors.white,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              // ديه ودجيت بستخدمها بس مع الصفوف والاعمده عشان اخيلي حجم الصوره فليكسابول يعني مناسب لجميع الصفحات
              //او باختصار ان الصوره تاخد عرض الصفحه
              Expanded(
                child: TextButton(
                    //تم اضافة زرار مخفي وحطيت بداخله صوره ولو ضغطنا عليها هيتم طبع الجمله
                    onPressed: () {
                      setState(() {
                        changeimage();
                      });
                    },
                    child: Image.asset('images/img-$imagenum.png')),
              ),
              Expanded(
                child: TextButton(
                    onPressed: () {
                      setState(() {
                        changeimage();
                      });
                    },
                    child: Image.asset('images/img-$imagenum1.png')),
              ),
              /*
                  طريقه تانيه لعرض الصور
                  child: Image(
                image: AssetImage('images/frownie.png'),
              ),*/
            ],
          ),
        )
      ],
    );
  }
}
