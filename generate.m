message = 'PARIS CAOBA';
% message = 'HE';

% number A
% compose("%X",A)


L = length(message);
n = [];
if mod(L, 2) == 1 % if odd
    L = L + 1; %% Leave a blank character
    % message = strcat(message, ' ');
    n = charToMatrix(' ');
end

l = L / 2;

M1 = messageToMatrix(message(1:l));
M2 = [messageToMatrix(message(l + 1:end)) n];

showM(M1);
showM(M2);

if l == 1
   gapSpace = 0;
else
    gapSpace = l - 1;    
end

l = l * 5 + gapSpace;

% Remenber: l = A * 2 - 1
A = int16((l+1) / 2);


%% V2
n = zeros(l, l, h);

% n(1, 2:l + 1, :) = M1' * 8;
% n(2:l+1, 1, :) = M2' * 8;
for i=1:l
    for j = 1:l
        for k = 1:h
            if M1(h - k + 1, l - j + 1) == 1 && M2(h - k + 1, i) == 1
                n(i,j,k) = i + 2 * j + 4 * k - 6;
            end
        end
    end
end
showM(n, visuType, offset)



%% Manual
m = zeros(A, A, h);
for i=1:A
    for j = 1:A
        for k = 1:h
            r = rand();
            if r < 2
                m(i,j,k) = i + 2 * j + 4 * k - 6;
            end
        end
    end
end
% showM(m, visuType, offset)


%% Cleaning
clear L l gapSpace r visuType A h i j k offset message