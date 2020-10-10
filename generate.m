for i=1:size
   for j = 1:size
      for k = 1:size
          r = rand();
          if r < 0.2
              m(i,j,k) = i + 2 * j + 4 * k - 6;
          end
      end
  end
end