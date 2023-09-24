import 'package:flutter/material.dart';
import '../local_notification/service/flutter_local_notification.dart';

class NotificationScreen extends StatelessWidget {
  NotificationScreen({super.key});

  TextEditingController title = TextEditingController();
  TextEditingController subtitle = TextEditingController();

  @override
  Widget build(BuildContext context) =>
      Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('noti screen'),
        ),
        body: Padding(
          padding:  const EdgeInsets.symmetric(horizontal: 28),
          child: Column(children: [
         const   SizedBox(height: 50),
            TextField(
              controller: title,
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(hintText: 'title',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(color: Colors.yellow)
                  )),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: subtitle,
              textInputAction: TextInputAction.done,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  hintText: 'subtitlr', border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(color: Colors.yellow)
              )),

            ),
          ],),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              LocalNotification.instance.showNotification(title.text,subtitle.text);
            },
            child: const Icon(Icons.telegram),
      )

  ,

  );
}
