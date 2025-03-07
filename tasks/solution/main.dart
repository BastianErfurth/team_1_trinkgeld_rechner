// Gruppenprojekt: Trinkgeld Rechner als Konsolenprogramm

import 'dart:ffi';
import 'dart:io';

void main() {
  // Frage den Benutzer nach der Zahlsumme und speichere diese.

  print("Herzlich willkommen, wie hoch ist deine Rechnungssumme?");

  // Tipp: Nutze stdin.readLineSync() und double.parse(), um die Eingabe zu verarbeiten.
  String invoiceSum = stdin.readLineSync() ?? "";
  double sum = double.parse(invoiceSum);

  print("Deine Rechnungshöhe ist: $sum.");

  // Frage den Benutzer nach dem Trinkgeld-Prozentsatz und speichere diesen.
  print("Wieviel Trinkgeld (a: 5% oder b:10% oder c: 20%) möchtest du geben?");

  String percent = stdin.readLineSync() ?? "";
  double perc = 0.0;

  switch (percent) {
    case "a":
      perc = 5.0;
    case "b":
      perc = 10.0;
    case "c":
      perc = 20.0;
    default:
      print("Du gibst kein Trinkgeld");
  }

  print("Du gibst $perc % Trinkgeld");

  // Tipp: Wiederhole den Prozess wie bei der Zahlsumme.
  double totalSum = sum * perc / 100;

  print("Deine Gesamtsumme inkl. Trinkgeld beträgt: $totalSum");

  // Berechne das Trinkgeld basierend auf der Zahlsumme und dem Prozentsatz.
  // Formel: Trinkgeld = (Zahlsumme * Prozentsatz) / 100

  // Berechne die Gesamtsumme, indem du das Trinkgeld zur Zahlsumme addierst.

  // Gib die berechnete Gesamtsumme inklusive Trinkgeld aus.
  // Tipp: Verwende print(), um das Ergebnis anzuzeigen.
}
