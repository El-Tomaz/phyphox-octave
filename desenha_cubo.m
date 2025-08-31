pkg load matgeom;


%esse script apenas faz um cubo girar,
%vai ser util para animar o objeto se mexendo depois em tempo real depois


plot3(0,0,0);
set(gca, "gridalpha",0.5) %sem isso a grid fica transparante e nao aparece
grid on;
axis([0 60 0 60 0 60])

hold on;


while (true)
for step = 1:360
    %clf;
    cube = drawCube([step/10 20 30  10 0 0 step], 'FaceColor', 'b');
    hold on;
    pause(1/60);
    delete(cube)

end
endwhile