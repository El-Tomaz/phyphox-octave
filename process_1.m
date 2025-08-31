% este script testa o uso de integração numerica para tentar 
% estima a posição do objeto em função dos dados do acelerometro    

%carregando e separando dados do sample_4
pkg load matgeom;



dados = dlmread('samples/sample4.csv', ",", 1, 0);

t     = dados(1:end, 1);
acelx = dados(1:end, 2);
acely = dados(1:end, 3);
acelz = dados(1:end, 4);



velx = [0];

for s = 1:length(t) - 1


    velx = [velx (velx(end) + integra(t(s:s+1), acelx(s:s+1)))];
    %velx = [velx integra(t(1:s), acelx(1:s))];

endfor


x = [0];

for s = 1:length(t) - 1

    x = [x (x(end) + integra(t(s:s+1), velx(s:s+1)))];

    %x = [x integra(t(2:s), velx(1:s))];

endfor

plot(t,acelx);
hold on;

plot(t, velx);

plot(t, x);

legend("acel", "vel","dist");

plot(0,0);

hold off;
figure;

axis([-10 10 -10 10 -10 10]);
set(gcf, "resize", "off");

while (true)
for step = 1:4:length(t) - 1
    %clf;
    cube = drawCube([x(step) 0 0  2 0 0 0], 'FaceColor', 'b');
        pause(0.01);
    delete(cube);

end
endwhile