import 'package:flutter/material.dart';
import 'package:learn_flutter_68_1/model/person.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learn_flutter_68_1/screen/addForm.dart';

class Item extends StatefulWidget {
  const Item({super.key});

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  @override
  Widget build(BuildContext context) {
    // return ListView.builder(
    //   itemCount: people.length,
    //   itemBuilder: (context, index) {
    //     return Container(
    //       decoration: BoxDecoration(
    //         color: people[index].job.color,
    //         borderRadius: BorderRadius.circular(10),
    //       ),
    //       margin: const EdgeInsets.symmetric(
    //         vertical: 5,
    //         horizontal: 5,
    //       ),
    //       padding: const EdgeInsets.all(10),
    //       child: Row(
    //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //         children: [
    //           Column(
    //             crossAxisAlignment: CrossAxisAlignment.start,
    //             children: [
    //               Text(
    //                 people[index].name,
    //                 style: GoogleFonts.kanit(
    //                   fontSize: 20,
    //                   fontWeight: FontWeight.bold,
    //                 ),
    //               ),
    //               Text(
    //                 'อายุ: ${people[index].age} ปี',
    //                 style: GoogleFonts.kanit(
    //                   fontSize: 16,
    //                 ),
    //               ),
    //               Text(
    //                 'อาชีพ: ${people[index].job.title}',
    //                 style: GoogleFonts.kanit(
    //                   fontSize: 16,
    //                 ),
    //               ),
    //             ],
    //           ),
    //           Image.asset(
    //             people[index].job.image,
    //             width: 80,
    //             height: 80,
    //             fit: BoxFit.cover,
    //           ),
    //         ],
    //       ),
    //     );
    //   },
    // );
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: people.length,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  color: people[index].job.color,
                  borderRadius: BorderRadius.circular(10),
                ),
                margin: const EdgeInsets.symmetric(vertical: 5,horizontal: 5,),
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "ชื่อ: ${people[index].name}",
                          style: GoogleFonts.kanit(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "อายุ: ${people[index].age} ปี",
                          style: GoogleFonts.kanit(
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          'อาชีพ: ${people[index].job.title}',
                          style: GoogleFonts.kanit(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    Image.asset(
                      people[index].job.image,
                      width: 80,
                      height: 80,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: SizedBox(
            height: 100,
            width: 100,
            child: IconButton(
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.green.shade300),
              ),
              onPressed:(){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder:(context){
                      return AddForm();
                    },
                  ),
                ).then(_) => setState(() {});
              },
              icon: Icon(Icons.add, size: 30, color: Colors.white),
            ),
          )
        ),
      ],
    );
  }
}