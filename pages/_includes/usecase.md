

## Use Case

Der nachfolgende Use Case dient der Illustration der Prozesse im Zusammenhang mit der Krebsregistrierung. Im Use Case werden Situationen geschildert, mit welchen die verschiedenen, an der Behandlung eines Patienten beteiligten Gesundheitsfachpersonen im Alltag konfrontiert werden können. Der Use Case deckt die enorme Komplexität der Prozesse im Gesundheitswesen auf. Die übermittelten Informationen sollen einerseits in menschenlesbarer Form zur Verfügung stehen, andererseits sollte das IT-System der Krebsregister diese Informationen elektronisch verarbeiten können.

* Use Case 1a: Resultate werden als **PDF** übermittelt   
* Use Case 1b: Resultate werden als **strukturierte Daten** übermittelt

#### Erstbesuch bei der Hausärztin 
*Arztbesuch vom 29. November 2018*  
[Franz Minimum](Patient-FranzMinimum.html), geboren am 27. Januar 1955, kommt mit Beschwerden zu seiner [Hausärztin Emma Bauer](Practitioner-EmmaBauer.html). Sie diagnostiziert einen Verdacht auf Darmkrebs und überweist [Franz Minimum](Patient-FranzMinimum.html) an einen Spezialisten der [Abteilung Gastroenterologie](Organization-AbteilungGastro.html) im [Spital Seeblick](Organization-SpitalSeeblick.html) für eine Koloskopie.

#### Besuch beim Gastroenterologen
*Arztbesuch vom 1. Dezember 2018*  
[Franz Minimum](Patient-FranzMinimum.html) erhält einen Termin auf der [Abteilung Gastroenterologie](Organization-AbteilungGastro.html) im [Spital Seeblick](Organization-SpitalSeeblick.html). Der Gastroenterologe führt die Koloskopie durch und entnimmt eine Biopsie vom vermuteten Tumor. Der Gastroenterologe **informiert das Krebsregister über die Koloskopie.**
* Use Case 1a:   
* Use Case 1b:

#### Pathologische Untersuchung
*Diagnostik vom 2. Dezember 2018*  
Das Biopsiematerial wird im [pathologischen Institut](Organization-AbteilungPatho.html) des [Spitals Seeblick](Organization-SpitalSeeblick.html) untersucht. Dabei wird ein Karzinom festgestellt. **Das Institut übermittelt das Resultat** an die [Hausärztin](Practitioner-EmmaBauer.html), die [Gastroenterologie](Organization-AbteilungGastro.html) und **das Krebsregister**.
* Use Case 1a:   
* Use Case 1b:

#### Zweitbesuch bei der Hausärztin
*Arztbesuch vom 7. Dezember 2018*  
[Franz Minimum](Patient-FranzMinimum.html) wird von [Emma Bauer](Practitioner-EmmaBauer.html) über die Diagnose informiert. Sie informiert ihn über das weitere Vorgehen und informiert ihn, dass seine Daten auch an das Krebsregister ([Information des Patienten](Communication-CommMinimum.html)) gesendet werden. [Franz Minimum](Patient-FranzMinimum.html) entscheidet sich für eine sofortige Operation und seine [Hausärztin](Practitioner-EmmaBauer.html) vereinbart einen Operationstermin im [Spital Seeblick](Organization-SpitalSeeblick.html). [Emma Bauer](Practitioner-EmmaBauer.html) **informiert das Krebsregister über das Datum der Patienteninformation und die Diagnose**.
* Use Case 1a:   
* Use Case 1b:

#### Operation
*Hospitalisierung vom 14. Dezember 2018*  
Bei [Franz Minimum](Patient-FranzMinimum.html) wird im [Spital Seeblick](Organization-SpitalSeeblick.html) eine Hemikolektomie durchgeführt. Das Exzisat wird an das [pathologische Institut](Organization-AbteilungPatho.html) zur Untersuchung geschickt. Der Abteilungsarzt Hans Egli, als zuständig Ansprechperson des [Spitals](Organization-SpitalSeeblick.html), **informiert das Krebsregister über die Operation.**
* Use Case 1a:   
* Use Case 1b:

#### Pathologische Untersuchung
*Diagnostik vom 15. Dezember 2018*  
Das Exzisionsmaterial wird im [pathologischen Institut](Organization-AbteilungPatho.html) untersucht. Dabei kann das Karzinom genauer beschrieben werden. Das [Institut](Organization-AbteilungPatho.html) **übermittelt das Resultat** an die [Hausärztin](Practitioner-EmmaBauer.html), die [Gastroenterologie](Organization-AbteilungGastro.html) und **das Krebsregister**.
* Use Case 1a:   
* Use Case 1b: