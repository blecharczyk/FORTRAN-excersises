# Krzysztof Blecharczyk
## Programowanie w języku Fortran Zadanie 1

### Opis rozwiązania::
Szanowny Panie Doktorze, do przy rozwiązaniu zadania powstały pliki z kodem źródłowym, są to kolejno :

#### Katalog src

* **main.f90** zawierający główny kod projektu
* **naive.f90** zawierający zaimplementowaną naiwną metodę mnożenia macierzy
* **betermath.f90** zawierający zaimplementowaną ulepsząną metodę mnożenia macierzy
* **dot.f90** zawierający zaimplementowaną metodę wykorzystująca iloczyn skalarny

oraz dodatwkowo katalog z rezultatami

#### Katalog res
Katalog ten podzielony został na kilka folderów, aby oddzielić i zebrać w jedno miejsce dane dla każdej precyzji.
Wewnątrz każdego z folderów są pliki z czasami dla każdego sposobu mnożenia, plik gnuplotowy pozwalający stworzyć wykres, oraz sam wykres zapisany jako pdf - tak jak wymagało tego polecenie.

### Sposób wykonania zadania:
W każdym z trzech plików odpowiednio: **naive.f90**, **better.f90** oraz **dot.f90** znajdują się moduły wraz z trzema funkcjami - każda obsługująca daną precyzję. Dodatkowo zrobiony jest też interface.
W pliku **main.f90** znajdują się deklaracje potrzebnych zmiennych, otworzenie odpowiednich plików, aby łatwo zgromadzić wyniki i przygotować wykres, oraz główna pętla, która obsługuje nasze funkcje z modułów które zostały wcześniej dołączone.

W pętli macierze alokowane oraz dealokowane są z każdym przebiegiem pęti, w celu zmiany ich rozmiaru oraz lepszego gospodarowania pamięcią. Odpowiednie dane są zapisywane do odpowiednichplików.

### Trudności przy wykonaniu zadania:

W programie **main.f90** pliki otwierane są w następujący sposób:
`/home/krzysztof/Pulpit/fortran zad 1/res/result4Naive`
Domyślam się, że może to nie działać na innych maszynach, gdyż ścieżka dostępu nie będzie się zgadzać. Zostawiam to jednak tak, gdyż wiem, że działa, a niestety nie wiem jak zrobić to uniwersalnie. Domyślam się, że rozwiazanie jest bardzo proste, jednak przez króßki staż ze środowiskiem linux nie potrafię zrobić tego w pełni poprawnie.

Kolejną sprawą która nie została zrobiona tak jak należy to kompilacja. Na swoim komputerze kompilowałem program następującymi komendami:
`gfortran bettermath.f90 dotmath.f90 naivemath.f90 main.f90`
oraz uruchamiałem program komendą
`./a.out`
dokładnie tak jak programy w C z poziomu terminala. Niestety nie udało mi się stworzyć pliku makefile z powodu braku czasu - niestety wyskoczyło mi kolokwium oraz wyjazd w ostatni dzień - za co bardzo przepraszam. Mam olbrzymią nadzieję, że nie będzie to bardzo wielka strata punktowa za rozwiązanie.

### Wnioski
Zacznę od zaprezentowania wykresów:

![4](https://user-images.githubusercontent.com/45050808/56748486-3c7fe400-6780-11e9-89dd-8193abd10829.png)

![8](https://user-images.githubusercontent.com/45050808/56748505-4570b580-6780-11e9-8eea-dc90fbe11c53.png)

![16](https://user-images.githubusercontent.com/45050808/56748515-499cd300-6780-11e9-9e54-e4d806021783.png)

Pierwsza rzecz jaka rzuca mi się w oczy, i czego szczerze móiąc się spodziewłem to to, że dla kind=16 mnożenie macieży trwa najdłużej. Co mnie natomiast zaskoczyło, to bardzo mała różnica dla kind=4 oraz kind=8.
Nie jest też dla mnie zaskoczeniem, że funkcja wbudowana w Fortrana tj matmul jest najszybsza, jednak zaskakujące jest dla mnie jak niewielkie są różnice pomiędzy poszczególnymi sposobami mnożenia, napisanymi przeze mnie. Dla kind=16 różnica ta praktycznie nie występuje jeśli chodzi o funkcje zaimplementowane, a wbudowaną w Fortrana. Dla kind=4 oraz kind=8 dysproporcja ta jest zauważalna.

###### Z wyrazami szacunku
###### Krzysztof Blecharczyk

