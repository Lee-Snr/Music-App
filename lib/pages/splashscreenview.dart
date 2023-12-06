import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_projects/widgets/text_widget.dart';
import 'package:get/get.dart';
import 'package:image_fade/image_fade.dart';
import 'package:flutter_projects/widgets/button.dart';

class SplashScreenView extends GetView{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body:Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,

              child:

                ImageFade(
                width: 250,
                // whenever the image changes, it will be loaded, and then faded in:
                image: AssetImage("assets/img.png"),

                // slow fade for newly loaded images:
                duration: const Duration(milliseconds: 900),

                // if the image is loaded synchronously (ex. from memory), fade in faster:
                syncDuration: const Duration(milliseconds: 150),

                // supports most properties of Image:
                alignment: Alignment.center,
                fit: BoxFit.cover,

                // shown behind everything:
                placeholder: Container(
                  color: const Color(0xFFCFCDCA),
                  alignment: Alignment.center,
                  child: const Icon(Icons.photo, color: Colors.white30, size: 128.0),
                ),

                // shows progress while loading an image:
                loadingBuilder: (context, progress, chunkEvent) =>
                    Center(child: CircularProgressIndicator(value: progress)),

                // displayed when an error occurs:
                errorBuilder: (context, error) => Container(
                  color: const Color(0xFF6F6D6A),
                  alignment: Alignment.center,
                  child: const Icon(Icons.warning, color: Colors.black26, size: 128.0),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: TextWidget(text: 'Harmony Hub',
                color: Colors.black,
                size :30, fontFamily: "Monteserrat",
                fontWeight: FontWeight.w800,
                textAlign:TextAlign.center,),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: TextWidget(text: 'Discover.Listen.Enjoy',
                color: Color(0xff335571).withOpacity(0.4),
                size : 20,fontFamily :"",
                fontWeight:FontWeight.w500,
                textAlign:TextAlign.center,),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: TextWidget(
                text: 'Explore new music,listen to Your favourite and enjoy the ultimate music experience with our app',
                color: Colors.black,
                size :16, fontFamily: "Monteserrat",
                fontWeight: FontWeight.w800,
                textAlign:TextAlign.center,),
            ),
            ButtonWidget(widget: TextWidget(
                text: " Play ",
                color: Color(0xffF5F5F7),
                textAlign: TextAlign.center,
                fontFamily: "Monteserrat",
                fontWeight: FontWeight.w500, size: 20), color: Color(0xff335571), radius: 100, width: 120)
          ],



        ),
      ),
    );
  }

}