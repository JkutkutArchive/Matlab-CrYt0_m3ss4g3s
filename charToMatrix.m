clear
clc
charToMatrix("I")

function [m] = charToMatrix(t)
    m = zeros(7, 6);
    switch t
        case "A"
            m(2:end, 1) = true;
            m(2:end, 6) = true;
            m(1, 2:5) = true;
            m(5, 2:5) = true;
        case "B"
            m(1:end, 1) = true;
            m(1, 2:5) = true;
            m(4, 2:5) = true;
            m(end, 2:5) = true;
            m(2:3, end) = true;
            m(5:6, end) = true;
        case "C"
            m(2:(end-1), 1) = true;
            m(1, 2:5) = true;
            m(end, 2:5) = true;
            m(2, end) = true;
            m(6, end) = true;
        case "D"
            m(1:end, 1) = true;
            m(3:5, end) = true;
            m(1, 2:4) = true;
            m(7, 2:4) = true;
            m(2, 5) = true;
            m(6, 5) = true;
        case "E"
            m = charToMatrix("F");
            m(7, 2:6) = true;
        case "F"
            m(1:end, 1) = true;
            m(1, 2:6) = true;
            m(4, 2:5) = true;
        case "G"
            m(2:6, 1) = true;
            m(2:7, 6) = true;
            m(3,6) = false;
            m(4, 3:5) = true;
            m(1, 2:5) = true;
            m(7, 2:5) = true;
        case "H"
            m(1:7, 1) = true;
            m(1:7, 5) = true;
            m(4, 2:4) = true;
        case "I"
            m(1:7, 3) = true;
    end
end