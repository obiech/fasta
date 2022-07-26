import 'package:fasta/app.dart';
import 'package:fasta/bootstrap.dart';
import 'package:fasta/injection.dart';

void main() { 
  initLocator();
  bootstrap((() => const Fasta()));}
