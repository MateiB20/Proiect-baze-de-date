 
Universitatea Tehnică “Gheorghe Asachi” Iași
Facultatea Automatică și Calculatoare
Specializarea Calculatoare și Tehnologia Informației
Disciplina: Baze de date-proiect


Baza de date a unui magazin de pachete de construcție PC







Student: Bărîlă Matei  		Cadru didactic coordonator: Cătălin Mironeanu
Grupa:1310A

Scopul aplicației:
Analiza, proiectarea și implementarea unei baze de date care să modeleze un magazin online de pachete de construcție PC care vinde exclusiv plăci RAM, unități centrale de procesare și unități de procesare grafică compatibile între ele.
În prima parte vom avea nevoie de informațiile pentru stabilirea compatibilității componentelor pentru a valida o comandă și implicit pentru a-o introduce în baza de date. Ele sunt legate de tipul de memorie al plăcilor RAM și a CPU-urilor, cât și măsura în care CPU-ul are un slot PCI Express și dacă un eventual GPU îl necesită în mod obligatoriu.
Componentele cât și comandă (dacă este validă) sunt identificate printr-un id numeric propriu care se incrementează automat la o nouă inserare, și informațiile aferente. 
În a doua parte avem nevoie de detalii despre comandă, în speță detaliile de contact ale clientului ca numărul de telefon sau adresa la care se dorește livrarea și data la care este posibilă livrarea propriu zisă. Și acestea sunt supuse la posibile incongruențe ca faptul ca numărul nu este de România sau ca data livrării este înaintea datei și orei curente furnizate de Oracle.
Ca tehnologii software am utilizat Oracle SQL Developer, Oracle SQL Developer Data Modeler pentru crearea tabelelor, realizarea modelului logic si a modelului relațional.
Principalele funcții ale aplicației sunt:
•	Evidența comenzilor
•	Evidența componentelor
•	Evidența compatibilităților dintre oricare două componente 
•	Evidența detaliilor livrării comenzii




 
Structura și inter-relaționarea tabelelor:
Tabelele din această aplicație sunt: Comanda, CPU, Detalii_Comanda, GPU, RAM, CPU_GPU, CPU_RAM, GPU_RAM
Cele trei din urmă gestionează relațiile many-to-many dintre unele din tabelele aplicației.
În proiectarea acestei baze de date s-au identificat următoarele tipuri de relații: 1:1 (one-to-one), 1:n (one-to-many), n:n (many-to-many).
Între componente și comandă se stabilește o relație one-to-many. O comandă poate conține aceleași sau parțial aceleași componente ca o alta, dar fără să gestioneze indisponibilitatea vreunui stoc al unei componente.
Între detaliile comenzii și comandă se stabilește o relație one-to-one. O comandă are detaliile sale proprii care pot sau nu să fie unice, astfel același client poate figura cu două comenzi separate.  
Între componente se stabilesc relații many-to-many. În acestea se includ combinații valide cunoscute de două componente. 


Normalizare:
Tabela Comanda respectă a treia formă normală (3NF), deoarece:
•	Nu există dependențe tranzitive între atributele non-cheie.
•	Toate atributele non-cheie (inclusiv cpu_id, gpu_id, ram_id, d_id, email, data, cantitate) depind direct de cheia primară comanda_id, și nu depind de alte atribute non-cheie.
Tabelele CPU, GPU și RAM, Detalii_comanda respectă același principiu. Fiecare tabel are o cheie primară simplă și toate atributele non-cheie depind complet de cheia primară a tabelei respective.
Tabelele de legătură (CPU_GPU și CPU_RAM) respectă 3NF, din următoarele motive:
•	Nu există atribute non-cheie care să creeze dependențe tranzitive, deoarece aceste tabele conțin doar chei externe.
•	Nu există dependențe parțiale între atributele non-cheie, pentru că nu există atribute non-cheie.
•	Fiecare tabel conține doar o combinație de chei externe și este utilizat exclusiv pentru a reprezenta legături între entitățile din celelalte tabele

Descrierea coloanelor din tabele:
Pentru toate id-urile am utilizat tipul de date NUMERIC(8) pentru a stoca valori numerice cu o precizie fixă de până la 8 caractere. Valoarea maximă posibilă pentru un câmp definit ca NUMERIC(8) este 99999999.
Numărul maxim de caractere pentru o adresă de e-mail este de 320 de caractere. Aceasta include atât partea locală (înainte de simbolul ‚@’), cât și partea de domeniu (după simbolul ‚@’).
Pentru orice alte denumiri ale componentelor și pentru adresă am ales 60 de caractere ca maximul pentru a asigura o flexibilitate adecvată, fără a compromite performanța sau integritatea bazei de date.
Tipul de memorie are 5 caractere, suficient pentru a stoca tipuri standard.
Numărul de telefon are 10 caractere, ceea ce corespunde formatului standard internațional.
 
Descrierea tuturor constrângerilor folosite:
Tabela Comanda are toate id-urile unice unei comenzi.
Email-ul din Comanda: alfanumerice cu un ‚@’ oriunde în mijloc, între partea locală și domeniu.
Numărul de telefon din Detalii_Comanda din exact 10 cifre, ‚07’ la început. Acesta asigură că datele de contact sunt corect formate și respectă standardele naționale.
Slot_pcie din CPU, GPU este 0 sau 1.
Tip_memorie din CPU, RAM începând cu ‘DDR’ urmat de o cifră.
Trigger-e pentru id-uri pentru incrementare automată pentru fiecare tabelă.
Trigger-e pentru ca data din Comanda/Detalii_Comanda să fie mai târzii de data curentă SYSDATE .
Trigger-e pentru incompatibilități între componente la inserarea în tabela comandă și tabelele de gestiune a relațiilor many-to-many.
