import 'package:flutter/material.dart';
import 'package:solid_chat_app/data/models/contact_model.dart';
import 'package:solid_chat_app/ui/screens/message_screen.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List<ContactModel> contacts = [
    ContactModel(
      contactId: 1,
      contactName: "Jhone",
      contactLastname: "Jhones",
      isOnlie: true,
      imageUrl:
          "https://avatars.mds.yandex.net/i?id=53596c735c1076eccb5ca421a9ebe27ac6fbee29-5333204-images-thumbs&n=13",
      lastOnlineTime: DateTime.now(),
    ),
    ContactModel(
      contactId: 1,
      contactName: "Daniel",
      contactLastname: "Corme",
      isOnlie: true,
      imageUrl:
          "https://avatars.mds.yandex.net/i?id=53596c735c1076eccb5ca421a9ebe27ac6fbee29-5333204-images-thumbs&n=13",
      lastOnlineTime: DateTime.now(),
    ),
    ContactModel(
      contactId: 1,
      contactName: "Stipe",
      contactLastname: "Meochech",
      isOnlie: true,
      imageUrl:
          "https://avatars.mds.yandex.net/i?id=53596c735c1076eccb5ca421a9ebe27ac6fbee29-5333204-images-thumbs&n=13",
      lastOnlineTime: DateTime.now(),
    ),
    ContactModel(
      contactId: 1,
      contactName: "Yan",
      contactLastname: "Blaxvich",
      isOnlie: true,
      imageUrl:
          "https://avatars.mds.yandex.net/i?id=53596c735c1076eccb5ca421a9ebe27ac6fbee29-5333204-images-thumbs&n=13",
      lastOnlineTime: DateTime.now(),
    ),
    ContactModel(
      contactId: 1,
      contactName: "Jorge",
      contactLastname: "Santper",
      isOnlie: true,
      imageUrl:
          "https://avatars.mds.yandex.net/i?id=53596c735c1076eccb5ca421a9ebe27ac6fbee29-5333204-images-thumbs&n=13",
      lastOnlineTime: DateTime.now(),
    ),
    ContactModel(
      contactId: 1,
      contactName: "Israil",
      contactLastname: "Adesaniya",
      isOnlie: true,
      imageUrl:
          "https://avatars.mds.yandex.net/i?id=53596c735c1076eccb5ca421a9ebe27ac6fbee29-5333204-images-thumbs&n=13",
      lastOnlineTime: DateTime.now(),
    ),
    ContactModel(
      contactId: 1,
      contactName: "Alex",
      contactLastname: "Parera",
      isOnlie: true,
      imageUrl:
          "https://avatars.mds.yandex.net/i?id=53596c735c1076eccb5ca421a9ebe27ac6fbee29-5333204-images-thumbs&n=13",
      lastOnlineTime: DateTime.now(),
    ),
    ContactModel(
      contactId: 1,
      contactName: "Lione",
      contactLastname: "Edvers",
      isOnlie: true,
      imageUrl:
          "https://avatars.mds.yandex.net/i?id=53596c735c1076eccb5ca421a9ebe27ac6fbee29-5333204-images-thumbs&n=13",
      lastOnlineTime: DateTime.now(),
    ),
    ContactModel(
      contactId: 1,
      contactName: "Micel",
      contactLastname: "Chendler",
      isOnlie: true,
      imageUrl:
          "https://avatars.mds.yandex.net/i?id=53596c735c1076eccb5ca421a9ebe27ac6fbee29-5333204-images-thumbs&n=13",
      lastOnlineTime: DateTime.now(),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Conversations'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: contacts.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        child: Image.network(
                          contacts[index].imageUrl,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text(contacts[index].contactName),
                    ],
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: contacts.length,
              itemBuilder: (context, index) {
                return ZoomTapAnimation(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const MessageScreen();
                        },
                      ),
                    );
                  },
                  child: ListTile(
                    leading: CircleAvatar(
                      child: Image.network(
                        contacts[index].imageUrl,
                        fit: BoxFit.fill,
                      ),
                    ),
                    title: Text(contacts[index].contactName),
                    subtitle: Text(contacts[index].contactLastname),
                    trailing: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("11:02 PM"),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
