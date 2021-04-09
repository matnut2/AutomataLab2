# automataLab2

In questo laboratorio vi si chiede di utilizzare il generatore di parser ANTLR v4 per creare un parser per un frammento del linguaggio di programmazione Pascal. Il file laboratorio_antlr.zip contiene la grammatica che definisce i costrutti di base del Pascal, il codice del syntax checker descritto nel tutorial ed il Makefile per la compilazione. 

Nel documento laboratorio_02.pdf potete trovare un tutorial che descrive la grammatica, il codice e dà le istruzioni per la compilazione ed esecuzione del syntax checker in ambiente Linux.

Estendete la grammatica del linguaggio Pascal con le seguenti funzionalità:

liste di variabili nelle dichiarazioni
var
    x, y, z: integer;
    a : integer ;
cicli repeat-until
repeat   
    istruzione1;
    istruzione2;
    ...
until guardia;
dove le istruzioni sono racchiuse tra repeat e until, senza la necessità di un blocco begin ... end

estendere costrutto if-then con il ramo else:
if guardia then
  blocco_di_codice
else
  blocco_di_codice ;

il ramo else è opzionale e può essere omesso. blocco_di_codice è una singola istruzione oppure un blocco begin ... end.
espressioni aritmetiche che usano gli operatori +, -, *, / e % (modulo), e le parentesi
espressioni booleane complesse che utilizzano gli operatori logici and, or, not, e le parentesi
la procedura readln(variabile) che legge un valore intero dallo standard input e lo memorizza in variabile
permettere alla procedura writeln di scrivere stringhe sullo schermo
writeln ( stringa ) 
dove stringa è una qualsiasi sequenza di caratteri compresi tra apici '    '

Potete trovare alcuni esempi dei nuovi costrutti nella directory pascal/tests da usare per testare la grammatica estesa. 
