% Script para visualizar dados dos samples


%le dados do csv
%funcao csvread nao funciona muito bem, evite ela
%offset começa a ler apartir da linha 1 pois na linha 0 ha texto desnecessario

dados_1 = dlmread("samples/sample1.csv", ",", 1, 0);
dados_2 = dlmread("samples/sample2.csv", ",", 1, 0);
dados_3 = dlmread("samples/sample3.csv", ",", 1, 0);
dados_4 = dlmread("samples/sample4.csv", ",", 1, 0);
%separando dados

t_1     = dados_1(1:end, 1);
acelx_1 = dados_1(1:end, 2);
acely_1 = dados_1(1:end, 3);
acelz_1 = dados_1(1:end, 4);

t_2     = dados_2(1:end, 1);
acelx_2 = dados_2(1:end, 2);
acely_2 = dados_2(1:end, 3);
acelz_2 = dados_2(1:end, 4);

t_3     = dados_3(1:end, 1);
acelx_3 = dados_3(1:end, 2);
acely_3 = dados_3(1:end, 3);
acelz_3 = dados_3(1:end, 4);

t_4     = dados_4(1:end, 1);
acelx_4 = dados_4(1:end, 2);
acely_4 = dados_4(1:end, 3);
acelz_4 = dados_4(1:end, 4);



subplot(4,1,1);
plot(t_1, [acelx_1 acely_1 acelz_1]);
legend("acelx","acely","acelz");
title("Sample 1");

subplot(4,1,2);
plot(t_2, [acelx_2 acely_2 acelz_2]);
legend("acelx","acely","acelz");
title("Sample 2");

subplot(4,1,3);
plot(t_3, [acelx_3 acely_3 acelz_3]);
legend("acelx","acely","acelz");
title("Sample 3");

subplot(4,1,4);
plot(t_4, [acelx_4 acely_4 acelz_4]);
legend("acelx","acely","acelz");
title("Sample 4");

