function inte = integra(x,y)


inte = 0;
for step = 1:length(x)-1

inte = inte+ (x(step+1) - x(step))*(y(step) + y(step+1))/2;

endfor



endfunction