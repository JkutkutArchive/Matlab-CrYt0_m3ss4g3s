function [m] = charToMatrix(t)
    m = zeros(7, 5);
    switch t
        case "A"
            m(2:end, 1) = true;
            m(2:end, 5) = true;
            m(1, 2:4) = true;
            m(5, 2:4) = true;
        case "B"
            m(1:end, 1) = true;
            m(1, 2:4) = true;
            m(4, 2:4) = true;
            m(end, 2:4) = true;
            m(2:3, end) = true;
            m(5:6, end) = true;
        case "C"
            m(2:(end-1), 1) = true;
            m(1, 2:4) = true;
            m(7, 2:4) = true;
            m(2, end) = true;
            m(6, end) = true;
        case "D"
            m(1:end, 1) = true;
            m(3:5, end) = true;
            m(1, 2:3) = true;
            m(7, 2:3) = true;
            m(2, 4) = true;
            m(6, 4) = true;
        case "E"
            m = charToMatrix("F");
            m(7, 2:6) = true;
        case "F"
            m(1:7, 1) = true;
            m(1, 2:5) = true;
            m(4, 2:4) = true;
        case "G"
            m(2:6, 1) = true;
            m(2:7, 5) = true;
            m(3,5) = false;
            m(4, 3:4) = true;
            m(1, 2:4) = true;
            m(7, 2:4) = true;
        case "H"
            m(1:7, 1) = true;
            m(1:7, 5) = true;
            m(4, 2:4) = true;
        case "I" % opti
            m(2:6, 3) = true;
            m(1, 2:4) = true;
            m(end, 2:4) = true;
        case "J"
            m(2:6, 4) = true;
            m(7, 2:3) = true;
            m(1, 3:5) = true;
            m(2:6, 6) = true;
            m(6, 1) = true;
        case "K" % opti
            m(1:7, 1) = true;
            for i=2:5
                m(4 - i + 2, i) = true;
                m(4 + i - 2, i) = true;
            end
        case "L"
            m(1:7, 1) = true;
            m(7, 2:5) = true;
        case "M"
            m(1:7, 1) = true;
            m(1:7, 5) = true;
            m(3:4, 3) = true;
            m(2, 2) = true;
            m(2, 4) = true;
        case "N"
            m(1:7, 1) = true;
            m(1:7, 5) = true;
            for i=2:5
                m(1 + i, i) = true;
            end
        case "O"
            m(2:6, 1) = true;
            m(2:6, 5) = true;
            m(1, 2:4) = true;
            m(7, 2:4) = true;
        case "P"
            m(1:7, 1) = true;
            m(1, 2:4) = true;
            m(4, 2:4) = true;
            m(2:3, 5) = true;
        case "Q"
            m(2:6, 1) = true;
            m(2:5, 5) = true;
            m(1, 2:4) = true;
            m(7, 2:3) = true;
            m(7, 4) = false;
            for i = 3:5
                m(i+2, i) = true;
            end
        case "R"
            m = charToMatrix("P");
            for i = 3:5
                m(i+2, i) = true;
            end
        case "S"
            m(2:3, 1) = true;
            m(5:6, 5) = true;
            m(1, 2:5) = true;
            m(4, 2:4) = true;
            m(7, 1:4) = true;
        case "T"
            m(2:7, 3) = true;
            m(1, 1:5) = true;
        case "U"
            m(1:6, 1) = true;
            m(1:6, 5) = true;
            m(7, 2:4) = true;
        case "V"
            m(1:4, 1) = true;
            m(1:4, 5) = true;
            for i=0:2
               m(5 + i, 1 + i) = true;
               m(7 - i, 3 + i) = true;
            end
        case "W"
            m(1:6, 1) = true;
            m(1:6, 5) = true;
            m(4:6, 3) = true;
            m(7, 2) = true;
            m(7, 4) = true;
        case "X"
            for j = [1,5]
                for i = [1, 7]
                    m(i, j) = true;
                end
            end
            for i=1:5
                m(1 + i, i) = true;
                m(1 + i, 6 - i) = true;
            end
        case "Y"
            m(1:3, 1) = true;
            m(1:3, 5) = true;
            m(5:7, 3) = true;
            m(4, 2:4) = true;
            m(4, 3) = false;
        case "Z"
            m(1, 1:5) = true;
            m(7, 1:5) = true;
            for i=1:5
                m(7 - i, i) = true;
            end
    end
end