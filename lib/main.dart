import 'package:flutter/material.dart';
import 'package:skripts/info_classes/m_inference.dart';
import 'package:skripts/info_classes/m_info.dart';
import 'package:skripts/info_classes/percent.dart';
import 'package:skripts/screen/Metod_Makulova/1/m_eighth_screen.dart';
import 'package:skripts/screen/Metod_Makulova/2/m_eleventh_screen.dart';
import 'package:skripts/screen/Metod_Makulova/1/m_fifth_screen.dart';
import 'package:skripts/screen/Metod_Makulova/1/m_first_screen.dart';
import 'package:skripts/screen/Metod_Makulova/2/m_fourtenteenth_screen.dart';
import 'package:skripts/screen/Metod_Makulova/1/m_fourth_screen.dart';
import 'package:skripts/screen/Metod_Makulova/1/m_ninth_screen.dart';
import 'package:skripts/screen/Metod_Makulova/1/m_second_screen.dart';
import 'package:skripts/screen/Metod_Makulova/1/m_seventh_screen.dart';
import 'package:skripts/screen/Metod_Makulova/2/vibration_yudro/m_seventeenth_screen.dart';
import 'package:skripts/screen/Metod_Makulova/2/vibration_yudro/m_sixteenth_screen.dart';
import 'package:skripts/screen/Metod_Makulova/1/m_sixth_screen.dart';
import 'package:skripts/screen/Metod_Makulova/1/m_tenth_screen.dart';
import 'package:skripts/screen/Metod_Makulova/2/m_thirteenth_screen.dart';
import 'package:skripts/screen/Metod_Makulova/2/m_tweilfth_screen.dart';
import 'package:skripts/screen/Metod_Makulova/1/m_trid_screen.dart';
import 'package:skripts/screen/Metod_Makulova/metod_makulova_screen.dart';
import 'package:skripts/screen/Piramida_Nevroza/piramida_nevroza.dart';
import 'package:skripts/screen/home_screen.dart';
import 'package:provider/provider.dart';
import 'package:skripts/screen/m_fifteenth_screen.dart';

import 'info_classes/m_yudro.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Name()),
        ChangeNotifierProvider(create: (_) => DTN()),
        ChangeNotifierProvider(create: (_) => Problem()),
        ChangeNotifierProvider(create: (_) => Situation()),
        ChangeNotifierProvider(create: (_) => Cangefelling()),
        ChangeNotifierProvider(create: (_) => Diagnostic()),
        ChangeNotifierProvider(create: (_) => Regresion()),
        ChangeNotifierProvider(create: (_) => Instinct()),
        ChangeNotifierProvider(create: (_) => InferenceClass()),
        ChangeNotifierProvider(create: (_) => InferenceY()),
        ChangeNotifierProvider(create: (_) => Yudro()),
        ChangeNotifierProvider(create: (_) => Percent()),
      ],
      child: MaterialApp(
        title: 'Skripts',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        // home: const HomeScreen(),
        initialRoute: '/',
        routes: {
          '/': (context) => const HomeScreen(),
          '/MetodMakulova': (context) => MetodMakulovaScreen(),
          '/PiramidaNevroza': (context) => const PiramidaNevrozaScreen(),
          // '/P1': (context) => const PFirstScreen(),
          '/M1': (context) => MFirstScreen(),
          '/M2': (context) => MSecondScreen(),
          '/M3': (context) => MTridScreen(),
          '/M4': (context) => MFourthScreen(),
          '/M5': (context) => MFifthScreen(),
          '/M6': (context) => MSixthScreen(),
          '/M7': (context) => MSeventhScreen(),
          '/M8': (context) => MEighthScreen(),
          '/M9': (context) => MNinthScreen(),
          '/M10': (context) => MTenthScreen(),
          '/M11': (context) => MEleventhScreen(),
          '/M11': (context) => MEleventhScreen(),
          '/M12': (context) => MTwelfScreen(),
          '/M13': (context) => MThirteenthfScreen(),
          '/M14': (context) => MFourteenthScreen(),
          '/M15': (context) => MFifteenthScreen(),
          '/M16': (context) => MSixteenthScreen(),
          '/M17': (context) => MSeventeenthScreen(),
          // '/M30': (context) => MThirtiethScreen(),
        },
      ),
    );
  }
}

// 1. С чем конкретно вы хотите поработать?(tasks)

// 2. В каких ситуациях это составляет проблему? (situation)

// 3. Как бы вы хотели себя чувствовать в этих ситуациях вместо этого?(changefelling) 

// Где это чувство? Там же в груди или сместилось? Например, сместилось в (places). 

// Итого: негативное самоопределение "(feeling)" в животе. С ним и будем работать. 

// Если Клиент не может сам ответить на вопрос: Какой ты если все это правда? Мы ему помогаем и перечисляем.(Imwho) 


// Где там в теле это дискомфортное чувство? (placesin)

// 4. Когда ты это чувство, что физически хочется сделать: (instinct)

// спрятаться, убежать, замереть, напасть? (Доп-но: Сжаться, Догнать, Исчезнуть)

// Как решил чувствовать себя в подобных ситуациях дальше? 

// Посмотри от этой ситуации вверх на «фефраль 2023го». Скажи мне,

// там эти выводы и решения помогают или мешают «взрослому Василию»?(inference)

// 'Хорошо, спроси у себя, « В каком я был возрасте, когда ты решило мне помогать таким образом?»',
// (old)

// Один или с кем-то?(people)

// Что там происходит, что возникает это чувство?'