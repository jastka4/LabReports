%KANAL
function wynik = kanal(A,P) %A - wektor bitow, P - prawdop. przeklamania
  wynik = A; %Wpisz wektor A jako wynikowy (dalsze operacje wykonywane beda na wynikowym)
  r = rand(1,length(wynik)); %Utworzenie wektora losowych wartosci o dl. = dl. wektora wynik
  for i=1:1:length(wynik) %Dla kazdego z elem. wek. wykonaj:
    if r(i) < P %Jesli elem. wektora losowych wartosci jest mniejszy od P:
      wynik(i) = ~wynik(i); %Zrob negacje elementu w A
    end
  end
end