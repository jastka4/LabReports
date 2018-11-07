%BER
function wynik = ber(bity_nadajnika, bity_odbiornika) 
%bity_nadajnika - wektor bitow po stronie nadawczej
%bity_odbiornika - wektor bitow po stronie odbiorczej
  wektor_bledow = xor(bity_nadajnika, bity_odbiornika); %Stworz wektor z informacja o przeklamaniach
  wynik = nnz(wektor_bledow(1,:)==1)/length(bity_nadajnika); %Oblicz: ilosc_przeklaman / dlugosc_ciagu_bitow
end