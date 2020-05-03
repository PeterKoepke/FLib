<TeXmacs|1.0.7.4>

<style|generic>

<\body>
  <doc-data|<doc-title|Naproche 2 !>|<doc-date|10.-12. September 2012>>

  Im Zusammenhang mit dem Projekt, eine <em|Elementary Number Theory for Man
  and Machines> zu schreiben, wurden von Merlin Carl, Marcos Cramer, Peter
  Koepke und Torsten Nahm folgende Verbesserungsw�nsche f�r eine der n�chsten
  Versionen des Naproche-Systems formuliert und diskutiert.

  <em|Verbesserungen des Reasoners>:

  <em|Taschenrechner> Hier ist an Rechnen mit kleinen ganzen Zahlen gedacht,
  wie es in der Zahlentheorie gelegentlich vorkommt (Dezimalschreibweise?).

  <em|Termrechner> In der Zahlentheorie tauchen immer wieder Termgleichungen
  mit <math|+,\<cdot\>,- > der Art <math|(a-c)+(b-d)=(a+b)-(c+d)> auf. Hier
  lassen sich Gleichheiten am einfachsten durch vollst�ndiges Ausklammern und
  lexikografisches Umordnen nachweisen, w�hrend ATP-Beweise oft sehr
  schwierig mit vielen Zwischenschritten sind.

  <em|Br�che> <math|<frac|a|b>> f�r die ganze Zahl <math|t> mit
  <math|t\<cdot\>b=a>, falls diese existiert.

  <em|Ontologie>

  <em|Ellipsen> Zu <math|n\<in\>\<bbb-N\>> existieren
  <math|p<rsub|1>,\<ldots\>,p<rsub|m>\<in\>\<bbb-N\>> so dass
  <math|p<rsub|i>> f�r <math|i\<in\>m> prim ist und
  <math|n=<big|prod><rsub|i=1><rsup|m>p<rsub|i>> ...

  <em|Sonstiges>

  <em|Mehrteilige Theoreme> und Beweise, bei denen eine Liste von
  Behauptungen auf gewisse Art abgearbeitet wird.

  <em|Induktionstypen> (Induktion �ber Terme, starke Induktion)

  <em|Gleichungs/Ungleichungsketten> [<math|a\<leqslant\>b=c\<less\>d=f\<less\>e
  \<rightarrow\> a\<less\>e>

  <em|Allgemeine Relationsketten> <math|n\|a=b>

  <em|Bedingte Quantifikationen> Let <math|a\<gtr\>1> be a natural number.

  <em|Wlog> we may assume. Hierzu ist es n�tig, die gerade verfolgte
  Behauptung (<em|Thesis>) zu kennen, s.u.

  There are <em|infinitely many>. Dies k�nnte in der Zahlentheorie durchweg
  als <em|konfinal viele> interpretiert werden.

  ... if it exists.

  <emdash><emdash><emdash><emdash><emdash><emdash><emdash><emdash><emdash><emdash><emdash><emdash><emdash><emdash><emdash><emdash><emdash><emdash><emdash><emdash><emdash><emdash><emdash><emdash><emdash><emdash>

  <em|Derivations with Theses>

  Ein fundamentaler Unterschied zwischen Naproche und SAD ist folgender: In
  Naproche werden Beweise m.H. von Klammerstrukturen (Einf�hrung und
  Zur�cknahme von Annahmen) gef�hrt (natural deduction). Bei gew�hnlichen
  Behauptungen, etwa von Typ

  <\equation*>
    \<forall\>x\<forall\>\<varepsilon\>\<gtr\>0\<exists\>\<delta\>\<gtr\>0\<forall\>x<rprime|'>
    (\|x-x<rprime|'>\|\<less\>\<delta\> \<rightarrow\>
    \|f(x)-f(x<rprime|'>)\|\<less\>\<varepsilon\>)
  </equation*>

  und Beweisen gibt es eine Klammerstruktur, die so offensichtlich ist, dass
  sie zwar strukturell notwendig aber inhaltlich redundant ist. Diese
  Redundanz kann durch das Arbeiten mit jeweil angezielten <em|Theses>
  vermieden werden. Das geschieht deutlich in SAD und sollte auch in Naproche
  eingef�hrt werden. Dies w�re ein entscheidender Schritt, die Eleganz
  einiger SAD-Beweise nach Naproche zu �bertragen.

  <emdash><emdash><emdash><emdash><emdash><emdash><emdash><emdash><emdash><emdash><emdash><emdash><emdash><emdash><emdash><emdash><emdash><emdash><emdash><emdash><emdash><emdash><emdash><emdash><emdash><emdash>-

  <em|Weiteres Vorgehen>

  Die in \RPseudo-Naproche`` geschriebene Vorlage zur Zahlentheorie kann im
  Sinne von Naproche 2 weitergef�hrt und verbessert werden. Sollten oben
  genannte Eigenschaften nicht zur Verf�gung stellen, so k�nnen betroffene
  Textteile recht schematisch in ein einfacheres Naproche umformuliert
  werden.
</body>

<\initial>
  <\collection>
    <associate|language|british>
  </collection>
</initial>