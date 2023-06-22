import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class historyPage extends StatelessWidget {
  const historyPage({Key? key}) : super(key: key);

  Widget history(
      String img, String title, String place, String ammount, String date) {
    return Container(
      margin: EdgeInsets.fromLTRB(20, 20, 0, 20),
      padding: EdgeInsets.all(10),
      height: 75,
      width: 100,
      decoration: BoxDecoration(color: Colors.white),
      child: Row(
        children: [Container()],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        Container(
          height: 160,
          width: double.infinity,
          decoration: BoxDecoration(color: Colors.red),
          padding: EdgeInsets.fromLTRB(20, 30, 20, 0),
          child: Column(
            children: [
              Container(
                height: 45,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5)),
                child: TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                      ),
                      hintText: "Search",
                      hintStyle: GoogleFonts.poppins(fontSize: 15)),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 150,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                    child: Text(
                      "Tiket Aktif",
                      style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.normal),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: 150,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                    child: Text(
                      "Riwayat Transaksi",
                      style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.normal),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
          padding: EdgeInsets.all(15),
          height: 150,
          width: double.infinity,
          decoration: BoxDecoration(color: Colors.white),
          child: Row(
            children: [
              Container(
                height: double.infinity,
                width: 110,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/image_movie1.png"),
                        fit: BoxFit.cover)),
              ),
              Spacer(),
              Container(
                padding: EdgeInsets.all(10),
                height: double.infinity,
                width: 200,
                decoration: BoxDecoration(color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Ada Cinta di SMA",
                      style: GoogleFonts.poppins(
                          fontSize: 18,
                          color: Color(0xFF000000),
                          fontWeight: FontWeight.normal),
                    ),
                    Text(
                      "UBERTOS XXI",
                      style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: Color(0xFF000000),
                          fontWeight: FontWeight.normal),
                    ),
                    Text(
                      "TIKET (2)",
                      style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: Color(0xFF000000),
                          fontWeight: FontWeight.normal),
                    ),
                    Text(
                      "Selasa, 03 Feb 2023, 19.00",
                      style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: Color(0xFF000000),
                          fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    ));
  }
}
