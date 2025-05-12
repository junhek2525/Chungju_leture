import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TodoLocalPage extends StatefulWidget {
  const TodoLocalPage({super.key});

  @override
  State<TodoLocalPage> createState() => _TodoLocalPageState();
}

class _TodoLocalPageState extends State<TodoLocalPage> {
  final TextEditingController _controller = TextEditingController();
  final List<String> _todos = [];

  void _addTodo()
  {
    final text = _controller.text.trim();
    if(text.isNotEmpty)
      {
        setState(() {
          _todos.add(text);
          _controller.clear();
        });
      }
  }

  Future<void> _saveTodo() async{
    final prefs = await SharedPreferences.getInstance();
    await prefs.setStringList('todos', _todos);

}
  Future<void> _loadTodo() async{
    final prefs = await SharedPreferences.getInstance();
    await prefs.setStringList('todos') ?? [];
    setState(() {
      _todos.addAll(saveList);
    });
  }

  void _deleteTodo(int index)
  {
    final delete =
    setState(() {
  _todos.removeAt(index);
  });
    ScaffoldMessenger.
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: const Text("로컬 To-Do"),
      ),
      body: Column(
        children: [
          Padding(
          padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Expanded(child: TextField(
                  controller: _controller,
                  onSubmitted: (_) => _addTodo() ,
                  decoration: const InputDecoration(
                    hintText: "할일",
                    border: DutlineInputBorder()
                  ),
                ),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                    onPressed: _addTodo, child: const Text("추가"))
  ],

          ),
    ),
    Expanded(
    child: ListView.builder(
    itemBuilder: (context,index){
    return ListTile(
     title: Text(_todos[index]),
        onLongPress:

        },
         );
        }


    )
    )
        ],
        )

    );
  }


}

