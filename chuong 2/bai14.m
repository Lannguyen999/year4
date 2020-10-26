%==========================================================================
%bai 14
%Author: Lan
%==========================================================================
echo bai13
bien1 = abs(H1)
pha1 = angle(H1)
bien2 = abs(H2)
pha2 = angle(H2)
subplot(1,2,1)
plot(w, bien1, 'red')
text(0.2,40,'\leftarrow bien do','FontSize',18)
hold on
plot(w, pha1,'blue')
text(0.2,-5,'\uparrow pha','FontSize',18)
title('Bien do va pha cua ham H1 theo w')
grid on
subplot(1,2,2)
plot(w, bien2, 'red')
text(1,0.75,'\leftarrow bien do','FontSize',18)
hold on
plot(w, pha2, 'blue')
text(1.5,-1.1,'\uparrow pha','FontSize',18)
title('Bien do va pha cua ham H2 theo w')
grid on