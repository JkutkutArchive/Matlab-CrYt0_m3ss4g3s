function [] = showM(m)
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
        plot3(...
            vec, vec, vec * 0, "b",...
            flip(vec), vec, vec * 0, "b",...
            vec, vec + flip(vec), vec, "b",...
            flip(vec), vec + flip(vec), vec, "b",...
            vec + flip(vec), vec, vec, "b",...
            vec + flip(vec), flip(vec), vec, "b")

        grid
        axis([-offset, size + 1 + offset, -offset, size + 1 + offset, -offset, size + 1 + offset])

        [A, B, C] = size(m)
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

