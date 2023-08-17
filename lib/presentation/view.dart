import 'package:fl/presentation/mvvm/view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    GetFactModel _getFactModelProviderRead = context.watch<GetFactModel>();
    GetFactModel _getFactModelProviderWatch = context.watch<GetFactModel>();
    return Scaffold(
        appBar: AppBar(
          title: Text('Главная страница'),
        ),
        body: SafeArea(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            TextField(
                keyboardType: TextInputType.phone,
                onChanged: (value) {
                  _getFactModelProviderWatch.copyWhithGetFactNumberState(
                      uiStateNumber: int.parse(value));
                }),
            Text(_getFactModelProviderRead
                    .getFactsService.getFactEntitiesFromBack?.text ??
                'Тут пока ничего нет'),
            TextButton(
                onPressed: () {
                  _getFactModelProviderRead.get();
                },
                child: Text('Получить факт по выбранному числу')),
            TextButton(
                onPressed: () {
                  _getFactModelProviderRead.getRandomFactYear();
                },
                child: Text('Получить случайный факт по году')),
            TextButton(
                onPressed: () {
                  _getFactModelProviderRead.getRandomFactMath();
                },
                child: Text('Получить случайный математический факт')),
          ]),
        ));
  }
}
