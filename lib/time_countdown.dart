// Es importante saber que se debe pasar el mismo formato horario UTC para que funcione bien
class TimeCountdown {
  // Método para calcular los días hasta el próximo lunes
  // calculateDaysUntilNextWeek se relaciona con isSameWeek
  int calculateDaysUntilNextWeek() {
    // Obtiene la fecha y hora actuales en horario global UTC
    final now = DateTime.now().toUtc();

    int daysToMonday = DateTime.monday - now.weekday;

    if (daysToMonday <= 0) {
      daysToMonday +=
          7; // Si ya pasó el lunes, calcula el lunes de la próxima semana
    }

    return daysToMonday; // Devuelve el número de días hasta el próximo lunes
  }

  // Método para verificar si una fecha está en la misma semana que la fecha actual
  // Se debe pasar el date en horario UTC
  // true si es la misma semana, false si NO es la misma semana
  bool isSameWeek(DateTime date) {
    final now = DateTime.now().toUtc();

    // Obtener el primer día de la semana para la fecha actual
    DateTime startOfWeekNow = now.subtract(Duration(days: now.weekday - 1));

    // Obtener el primer día de la semana para la fecha dada
    DateTime startOfWeekGiven = date.subtract(Duration(days: date.weekday - 1));

    // Comparamos solo las fechas, ignorando las horas
    return startOfWeekNow.year == startOfWeekGiven.year &&
        startOfWeekNow.month == startOfWeekGiven.month &&
        startOfWeekNow.day == startOfWeekGiven.day;
  }

  // Método para calcular las horas y minutos hasta el próximo día a las 00:00
  // calculateTimeUntilNextDay se relaciona con isSameDay
  Map<String, int> calculateTimeUntilNextDay() {
    // Obtiene la fecha y hora actuales en horario global UTC
    final now = DateTime.now().toUtc();

    // El próximo día a las 00:00 en horario global UTC
    DateTime nextDay = DateTime.utc(now.year, now.month, now.day + 1, 0, 0);

    // Calcular la diferencia de tiempo entre ahora y el próximo día a las 00:00
    final duration = nextDay.difference(now);

    // Devolvemos un Map con horas y minutos
    return {
      'hours': duration.inHours,
      'minutes': duration.inMinutes % 60,
    };
  }

  // Método para verificar si una fecha es el mismo día que la fecha actual
  // Se debe pasar el date en horario UTC
  // true si es el mismo dia, false si NO es el mismo dia
  bool isSameDay(DateTime date) {
    final now = DateTime.now().toUtc();

    // Comparamos solo el año, mes y día de ambas fechas
    return now.year == date.year &&
        now.month == date.month &&
        now.day == date.day;
  }

  // Método para verificar si han pasado 14 días desde una fecha dada
  // Se debe pasar el date en horario UTC
  // true si han pasado 14 dias, false si NO han pasado 14 dias
  bool has14DaysPassed(DateTime date) {
    final now = DateTime.now().toUtc();
    final difference = now.difference(date);

    // Verificamos si han pasado al menos 14 días
    return difference.inDays >= 14;
  }

  // Se debe pasar el date en horario UTC
  int calculateDaysUntil14DaysFrom(DateTime date) {
    final now = DateTime.now().toUtc(); // Fecha y hora actuales

    // Calcular la fecha que corresponde a 14 días después de la fecha dada
    DateTime fourteenDaysLater = date.add(const Duration(days: 14)).toUtc();

    // Calcular la diferencia en días entre hoy y esa fecha
    int daysRemaining = fourteenDaysLater.difference(now).inDays;

    // Si la diferencia es negativa, significa que ya pasaron 14 días
    return daysRemaining > 0 ? daysRemaining : 0;
  }
}
