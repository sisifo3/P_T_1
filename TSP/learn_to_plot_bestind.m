function[anser] = learn_to_plot_bestind(x,b)
%x = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18];
%a = [1,2,2,4,5,5,6,8,10,10,11,12,12,16,17,17,18,18];
%b = [1,1,2,3,3,4,6,6,6,9,9,9,9,10,11,12,17,18,];

%a1 = plot(x,a);
xlabel('Generación')
ylabel('Aptitud por individuo')
M1 = "individuo David";
M2 = "individuo PMx";
hold on
a2=plot(x,b);
%legend([a1,a2], [M1, M2]);
hold off
anser = 1;
end