%script para testar puxar dados do phyphox de forma remota


handlex = plot(0,0, '-b');
hold on;

handley = plot(0,0,'-r');
handlez = plot(0,0,'-g');

legend("Accel X", "Accel Y", "Accel Z");

%this request is just to get actual time vvvv
[last_t _ _ _] = remoto(0);

t = [];
x = [];
y = [];
z = [];

while (true)

% cuidado com overflow vvvv, é por sua conta cuidar disso ;)

   [last_t xt yt zt] = remoto(last_t(end));
   x = [x xt];
   y = [y yt];
   z = [z zt];
   t = [t last_t];
   

   % set handle é melhor do que ficar plotando direto, evita de criar uma nova "curva", e ao inves disso so atualiza os dados
   set(handlex,'XData', t);
   set(handlex, 'YData', x);

   set(handley,'XData', t);
   set(handley, 'YData', y);

   set(handlez,'XData', t);
   set(handlez, 'YData', z);

   disp(["last t = " num2str(last_t(end))]);
  
   drawnow;
endwhile