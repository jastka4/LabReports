% Niezawodnosc i Diagnostyka Ukladow Cyfrowych - PROJEKT
% Wtorek TP 15:15
% Temat: FEC - Forward Error Correction
% 
% Autorzy:
% Dariusz Tomaszewski, 235565
% Justyna Skalska, 225942
% Alicja Wrobel, 238894

%Ilosc pomiarow do wykonania (odwrotnosc kroku prawdopodobienstwa przeklamania):
ilosc_pomiarow = 100;
%Ilosc bitow do wygenerowania przed zakodowaniem:
ilosc_bitow = 1000;
wektor_ber = zeros(0); %Inicjalizacja wektora BER

for i=linspace(0,1,ilosc_pomiarow)
  wygenerowane_bity = generator(ilosc_bitow); %Generowanie ciagu bitow
  %disp(wygenerowane_bity);
  zakodowane_bity = koder(wygenerowane_bity); %Kodowanie ciagu bitow technika FEC
  %disp(zakodowane_bity);
  odebrane_bity = kanal(zakodowane_bity, i); %Wyslanie ciagu bitow do odbiornika poprzez kanal
  %disp(odebrane_bity);
  zdekodowane_bity = dekoder(odebrane_bity); %Dekodowanie ciagu bitow zakodowanego technika FEC
  %disp(zdekodowane_bity);
  wektor_ber = [wektor_ber, ber(wygenerowane_bity, zdekodowane_bity)]; %Zapisanie wyniku BER
end

plot(linspace(0,1,ilosc_pomiarow), wektor_ber); %Generowanie wykresu
title(sprintf("Wykres dla %d pomiarow po %d bitow",ilosc_pomiarow,ilosc_bitow)); 
xlabel("Prawdopodobienstwo bledu");
ylabel("BER");
grid on;