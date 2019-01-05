function lf = LagrangeInterpolant(xset,yset)
  lf = 0 ;
  for i=1:1:length(xset)
    lf = lf + li(i-1,xset) * yset(i)  
  endfor
endfunction
