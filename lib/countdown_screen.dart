import 'package:flutter/material.dart';
import 'package:flutter_timer/time_countdown.dart';

class CountdownScreen extends StatefulWidget {
  const CountdownScreen({super.key});

  @override
  State<CountdownScreen> createState() => _CountdownScreenState();
}

class _CountdownScreenState extends State<CountdownScreen> {
  @override
  Widget build(BuildContext context) {
    // Se inicializa la clase TimeCountdown
    final TimeCountdown timeCountdown = TimeCountdown();

    DateTime dateToCheck = DateTime(2024, 12, 10); // Fecha de ejemplo
    DateTime dateNowUtc = DateTime.now().toUtc(); // Fecha actual en utc

    // para ver si estan en la misma semana o dia
    bool isSameWeek = timeCountdown.isSameWeek(dateToCheck);
    bool isSameDay = timeCountdown.isSameDay(dateToCheck);

    // para ver si han pasado 14 dias
    bool has14DaysPassed = timeCountdown.has14DaysPassed(dateToCheck);

    int days = 3;
    bool hasXDaysPassed = timeCountdown.hasXDaysPassed(dateToCheck, days);

    debugPrint("booleano week: $isSameWeek");
    debugPrint("booleano day: $isSameDay");
    debugPrint("booleano has14: $has14DaysPassed");
    debugPrint("booleano hasX: $hasXDaysPassed");

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // para acceder al tiempo de cuanto falta pa la otra semana
        Text(
          'Faltan ${timeCountdown.calculateDaysUntilNextWeek()} días hasta la proxima semana.',
          style: const TextStyle(fontSize: 24),
        ),

        // para acceder al tiempo de cuanto falta pal otro dia
        Text(
          'Faltan ${timeCountdown.calculateTimeUntilNextDay()["hours"]} horas y ${timeCountdown.calculateTimeUntilNextDay()["minutes"]} minutos hasta el próximo día a las 00:00.',
          style: const TextStyle(fontSize: 24),
        ),
        // para acceder a los dias restantes para llegar a 14 dias
        Text(
          'Faltan ${timeCountdown.calculateDaysUntil14DaysFrom(dateToCheck)} dias para que terminen los 14 dias',
          style: const TextStyle(fontSize: 24),
        ),
        // para acceder a los dias restantes para llegar a X dias
        Text(
          'Faltan ${timeCountdown.calculateDaysUntilXDaysFrom(dateToCheck, days)} dias para que terminen los $days dias',
          style: const TextStyle(fontSize: 24),
        ),
        isSameWeek
            ? Text("Estan en la misma Semana: $dateToCheck y $dateNowUtc")
            : Text("NO estan en la misma Semana: $dateToCheck y $dateNowUtc"),
        isSameDay
            ? Text("Estan en el mismo Dia: $dateToCheck y $dateNowUtc")
            : Text("NO estan en el mismo Dia: $dateToCheck y $dateNowUtc"),
        has14DaysPassed
            ? Text("Han pasado 14 dias: $dateToCheck y $dateNowUtc")
            : Text("NO han pasado 14 dias: $dateToCheck y $dateNowUtc"),
      ],
    );
  }
}
