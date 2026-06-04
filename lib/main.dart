import 'package:flutter/material.dart';

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

//هنا استخدمت stateless widget عشان تسهل عليه عمل hotreload للبيدج

class Imagepage extends StatelessWidget {
  const Imagepage({super.key});

  @override
  Widget build(BuildContext context) {
    //المحتوي هيبقي عباره عن عمود بداخله نص وصف الصف بنحط في صورتين
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          'حاول مره اخري',
          style: TextStyle(
            fontSize: 42,
            color: Colors.white,
          ),
        ),
        Row(
          children: [
            // ديه ودجيت بستخدمها بس مع الصفوف والاعمده عشان اخيلي حجم الصوره فليكسابول يعني مناسب لجميع الصفحات
            //او باختصار ان الصوره تاخد عرض الصفحه
            Expanded(
                //flex: 2,معناها ان الصوره دي تاخد ضعف المساحه
                child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Image.asset('images/frownie.png'),
            )),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Image.asset('images/frownie.png'),
            )
                /*
                طريقه تانيه لعرض الصور
                child: Image(
              image: AssetImage('images/frownie.png'),
            ),*/
                ),
          ],
        )
      ],
    );
  }
}
