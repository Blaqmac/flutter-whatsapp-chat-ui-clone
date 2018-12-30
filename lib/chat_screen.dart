import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    var chats = getChats();

    return Container(
      child: ListView.separated(
        padding: EdgeInsets.only(top: 15),
        itemCount: chats.length,
        itemBuilder: (context, index){
            return buildChatItem(chats[index]);
        },
        separatorBuilder: (context, index){
          return Divider(color: Colors.grey, indent: 83.0,);
        },
      )
    );
  }

  ListTile buildChatItem(ChatContent chat) {
    return ListTile(
            leading: ClipOval(
                child: chat.image
            ),
            title: Padding(
              padding: const EdgeInsets.only(bottom: 3.0),
              child: Text(chat.name,),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 6.0, bottom: 0),
              child: Text(chat.text,),
            ),
            trailing: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom: 14.0),
                  child: Text(chat.time, style: TextStyle(color: Colors.grey, ),),
                ),
                CircleAvatar(
                  child: Text(3.toString()),
                  backgroundColor: Colors.blue,
                  radius: 10,
                ),
              ],
            )
          );
  }

  List<ChatContent> getChats() {
    List<ChatContent> chats = List<ChatContent>();

    chats.add(ChatContent("Karounwi anu", "We will be talking about the changes...", "9:52 PM", Image.asset("assets/profile.jpg", width: 50, height: 50, fit: BoxFit.cover,)));
    chats.add(ChatContent("Gbolahan femi", "We will be talking about the changes...", "5:32 PM", Image.asset("assets/profile.jpg", width: 50, height: 50, fit: BoxFit.cover,)));
    chats.add(ChatContent("Olatunji jumoke", "We will be talking about the changes...", "3:55 PM", Image.asset("assets/profile.jpg", width: 50, height: 50, fit: BoxFit.cover,)));
    chats.add(ChatContent("Alayo funmi", "We will be talking about the changes...", "4:22 PM", Image.asset("assets/profile.jpg", width: 50, height: 50, fit: BoxFit.cover,)));
    chats.add(ChatContent("Dami sofoluwe", "We will be talking about the changes...", "7:56 PM", Image.asset("assets/profile.jpg", width: 50, height: 50, fit: BoxFit.cover,)));
    chats.add(ChatContent("Kunle oseni", "We will be talking about the changes...", "3:05 PM", Image.asset("assets/profile.jpg", width: 50, height: 50, fit: BoxFit.cover,)));
    chats.add(ChatContent("Kayode sholanke", "We will be talking about the changes...","9:32 PM", Image.asset("assets/profile.jpg", width: 50, height: 50, fit: BoxFit.cover,)));
    chats.add(ChatContent("Jubril dupe", "We will be talking about the changes...", "11:52 PM", Image.asset("assets/profile.jpg", width: 50, height: 50, fit: BoxFit.cover,)));
    chats.add(ChatContent("Ayotunde idris", "We will be talking about the changes...", "2:38 PM", Image.asset("assets/profile.jpg", width: 50, height: 50, fit: BoxFit.cover,)));
    chats.add(ChatContent("Fatai abdul", "We will be talking about the changes...", "1:42 PM", Image.asset("assets/profile.jpg", width: 50, height: 50, fit: BoxFit.cover,)));
    chats.add(ChatContent("Ayomide adekanye", "We will be talking about the changes...", "6:12 PM", Image.asset("assets/profile.jpg", width: 50, height: 50, fit: BoxFit.cover,)));
    chats.add(ChatContent("Shittu demilade", "We will be talking about the changes...", "6:35 PM", Image.asset("assets/profile.jpg", width: 50, height: 50, fit: BoxFit.cover,)));

    return chats;
  }
}

class ChatContent {

  String name;
  String text;
  String time;
  Image image;

  ChatContent(String name, String text, String time, Image image) {
    this.name = name;
    this.text = text;
    this.time = time;
    this.image = image;
  }
}
