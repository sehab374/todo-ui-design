import 'package:flutter/material.dart';

class AddTaskBottomSheet extends StatefulWidget {
  const AddTaskBottomSheet({super.key});

  @override
  State<AddTaskBottomSheet> createState() => _AddTaskBottomSheetState();
}

class _AddTaskBottomSheetState extends State<AddTaskBottomSheet> {
  DateTime selectedDate = DateTime.now();

  var formkey= GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(children: [
        Text(
          "Add New Task",
          style: Theme.of(context).textTheme.titleMedium,
        ),
        Form(
          key: formkey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: "Enter Task Title"),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "please enter task title";
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "please enter task description";
                  }
                  return null;
                },
                decoration: InputDecoration(
                  labelText: "Enter Task Description",
                ),
                maxLines: 3,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Select Date",
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ),
              InkWell(
                onTap: () {
                  //show calender
                  showCalender();
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "${selectedDate.day}/${selectedDate.month}/${selectedDate.year}",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ),
              ),
              ElevatedButton(
                  onPressed: () {

                    ///addTask to firebase
                    ///

                    addTask();
                  },
                  child: Text(
                    "Add",
                    style: Theme.of(context).textTheme.titleLarge,
                  ))
            ],
          ),
        ),
      ]),
    );
  }

  void showCalender() async {
    var chosenDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime.now(),
        lastDate: DateTime.now().add(Duration(days: 365)));
    if (chosenDate != null) {
      selectedDate = chosenDate;
      setState(() {});
    }
  }
  addTask(){
    // validate fun loop on all validators in the form which key is formkey
    if(formkey.currentState?.validate()==true)
      {
        //add task to firebase
      }



  }
}
