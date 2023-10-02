import 'package:counter_number_bloc/counter_bloc/counter_bloc.dart';
import 'package:counter_number_bloc/counter_bloc/counter_event.dart';
import 'package:counter_number_bloc/counter_bloc/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(218, 0, 0, 0),
      appBar: AppBar(
        title: Text('github : aidinasgary'),
        backgroundColor: Color.fromARGB(255, 94, 5, 153),
      ),
      body: SafeArea(
        child: Center(
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            BlocBuilder<CounterBloc, CounterState>(builder: ((context, state) {
              if (state is CounterInit) {
                return Text(
                  '${state.counter}',
                  style: TextStyle(fontSize: 60, color: state.color),
                );
              }
              if (state is UpdateCounter) {
                return Text(
                  '${state.counter}',
                  style: TextStyle(fontSize: 60, color: Colors.white),
                );
              }

              return Text('error');
            })),
            SizedBox(
              height: 19,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: const Color.fromARGB(255, 94, 5, 153),
                ),
                onPressed: () {
                  context.read<CounterBloc>().add(DecreamentPressed());
                },
                child: Text(
                  '-',
                  style: TextStyle(fontSize: 25),
                )),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: const Color.fromARGB(255, 94, 5, 153),
                ),
                onPressed: () {
                  context.read<CounterBloc>().add(IncreamentPressed());
                },
                child: Text(
                  '+',
                  style: TextStyle(fontSize: 25),
                )),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: const Color.fromARGB(255, 94, 5, 153),
                ),
                onPressed: () {
                  context.read<CounterBloc>().add(ResetPress());
                },
                child: Text(
                  'Reset',
                  style: TextStyle(fontSize: 25),
                ))
          ]),
        ),
      ),
    );
  }
}
