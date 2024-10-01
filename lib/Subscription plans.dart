import 'package:flutter/material.dart';

class TaskScreen extends StatefulWidget {
  const TaskScreen({Key? key}) : super(key: key);

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  List<String> taskCategories = [
    'User Interface',
    'User Experience',
    'User Research',
    'UX Writing',
    'User Testing',
    'Service Design',
    'Strategy',
    'Design Systems',
  ];

  List<bool> isExpandedList = List.filled(8, false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        title: const Text('taks'),
        actions: const [
          Icon(Icons.more_vert),
        ],
      ),
      body: ListView.builder(
        itemCount: taskCategories.length,
        itemBuilder: (context, index) {
          return ExpansionPanelList(
            expansionCallback: (int panelIndex, bool isExpanded) {
              setState(() {
                isExpandedList[index] = !isExpanded;
              });
            },
            children: [
              ExpansionPanel(
                headerBuilder: (BuildContext context, bool isExpanded) {
                  return ListTile(
                    title: Text(taskCategories[index]),
                  );
                },
                body: Container(),
                isExpanded: isExpandedList[index],
              ),
            ],
          );
        },
      ),
    );
  }
}
