function l = li(i,xset)
  syms x;
  l=1;
  for j = 1 : 1: length(xset)
     if(j != i+1)
     l=l*((x-xset(j))/(xset(i+1)-xset(j)));
     endif
  endfor
endfunction
