function [] = showM(m, visuType, offset)
    if ndims(m) == 2 % 2D MATRIX
        [A, B] = size(m);
        for i = 1:A
            for j = 1:B
                if m(i,j)
                    fprintf("0")
                else
                    fprintf("·")
                end
            end
            fprintf("\n")
        end
        
    elseif ndims(m) == 3 % 3D MATRIX
        [A, B, C] = size(m);
        vecA = [1, A];
        vecB = [1, B];
        vecC = [1, C];
        
        plot3(...
            vecA, vecB, vecC * 0, "b",...
            flip(vecA), vecB, vecC * 0, "b",...
            vecA, vecB + flip(vecB), vecC, "b",...
            flip(vecA), vecB + flip(vecB), vecC, "b",...
            vecA + flip(vecA), vecB, vecC, "b",...
            vecA + flip(vecA), flip(vecB), vecC, "b")

        grid
        axis([-offset, A + 1 + offset, -offset, B + 1 + offset, -offset, C + 1 + offset])

        
        switch visuType
            case "normal"
                for i= 1:A
                    for j = 1:B
                        for k = 1:C
                            if ~m(i,j,k) == 0
                                text(i, j, k, string(m(i,j,k)))
                            end
                        end
                    end
                end
                return
            otherwise
                s = visuType;
        end

        for i=1:A
           for j = 1:B
              for k = 1:C
                  if ~m(i,j,k) == 0
                      text(i, j, k, s)
                  end
              end
          end
        end
    else % if other dimesion, just print it
        m
    end
end

