%%
function noisecode = disrupt(code,n,k,pp)
    noise_number = floor(n*k*pp); % Ilosc zaklocen
    noise_num_row = randi(k,1,noise_number);
    noise_num_col = randi(n,1,noise_number);
    noise_matrix = zeros(k,n);
    for i=1:noise_number
        noise_matrix(noise_num_row(i),noise_num_col(i)) = 1;
    end
    noisecode = code;
    for i = 1:k
        for j = 1:n
            if(noise_matrix(i,j) == 1)
                %noisecode(i,j) = ~noisecode(i,j);
                if(noisecode(i,j) == 1)
                    noisecode(i,j) = 0;
                else
                    noisecode(i,j) = 1;
                end
            end
        end
    end
end