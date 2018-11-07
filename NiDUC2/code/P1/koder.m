%KODER
function wynik = koder(A) %A - wektor bitow
  wynik=repmat(A,3,1); %Potrajanie bitow (forma macierzy)
  wynik=wynik(:)'; %Odczytuje kolejno elementy macierzy i zapisuje je do wektora (' = transpose)
end