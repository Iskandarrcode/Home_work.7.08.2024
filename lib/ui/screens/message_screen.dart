import 'package:flutter/material.dart';
import 'package:solid_chat_app/data/models/message_model.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({super.key});

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  List<MessageModel> messages = [
    MessageModel(
      messageId: 1,
      messageText: "Salom qalaysan",
      isFile: true,
      createdTime: DateTime.now().toString(),
      contactId: 2,
      status: 5,
    ),
    MessageModel(
      messageId: 1,
      messageText: "Nima gaplar hammasi joyidami",
      isFile: true,
      createdTime: DateTime.now().toString(),
      contactId: 2,
      status: 5,
    ),
    MessageModel(
      messageId: 1,
      messageText: "Kecha ziyofatga kelmading",
      isFile: true,
      createdTime: DateTime.now().toString(),
      contactId: 2,
      status: 5,
    ),
    MessageModel(
      messageId: 1,
      messageText: "Nima ishlar bilan band bo'lb yurbsan ",
      isFile: true,
      createdTime: DateTime.now().toString(),
      contactId: 2,
      status: 5,
    ),
    MessageModel(
      messageId: 1,
      messageText: "Kun issiq bolibdi siz taraflarda ham shundaymi",
      isFile: true,
      createdTime: DateTime.now().toString(),
      contactId: 2,
      status: 5,
    ),
    MessageModel(
      messageId: 1,
      messageText: "Qayerda ishlayabsan qo'lingdan nimalar keladi",
      isFile: true,
      createdTime: DateTime.now().toString(),
      contactId: 2,
      status: 5,
    ),
    MessageModel(
      messageId: 1,
      messageText: "IT bo'yicha o'qiyabdi den eshtdim shu gap rostmi",
      isFile: true,
      createdTime: DateTime.now().toString(),
      contactId: 2,
      status: 5,
    ),
    MessageModel(
      messageId: 1,
      messageText: "Meni kampyuerimni tuzatib bera olasanmi ",
      isFile: true,
      createdTime: DateTime.now().toString(),
      contactId: 2,
      status: 5,
    ),
    MessageModel(
      messageId: 1,
      messageText: "Yana nima ishlar qo'lingdan keladi gapirchi",
      isFile: true,
      createdTime: DateTime.now().toString(),
      contactId: 2,
      status: 5,
    ),
    MessageModel(
      messageId: 1,
      messageText: "Qaysi davlatda yashayabsan sizda havo qanaqa bo'lyabdi",
      isFile: true,
      createdTime: DateTime.now().toString(),
      contactId: 2,
      status: 5,
    ),
    MessageModel(
      messageId: 1,
      messageText: "Qachon uylanasan so'taqo'zi tezroq uylan",
      isFile: true,
      createdTime: DateTime.now().toString(),
      contactId: 2,
      status: 5,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(188, 7, 29, 94),
        centerTitle: true,
        title: const Text(
          "Message",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: messages.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    width: 120,
                    height: 70,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 155, 170, 239),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(16),
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Center(child: Text(messages[index].messageText)),
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
