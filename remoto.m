function [t x y z] = remoto(start)
%start e o tempo do qual apartir dele vai extrair os dados
%ex: start = 2 quer dizer que vai extrair todos os dados apartir de 2s

pkg load io

t = 0;
x = 0;
y = 0;
z = 0;


% primeiro pega o primeiro tempo
% depois, pega valores apartir do tempo e atualiza tempo

% %7c e como se fosse a barrinha, o pipe do url, olhe a documentaçao do phuphox https://phyphox.org/wiki/index.php/Remote-interface_communication
% tem que colocar um % antes do %7C, pra o sprintf ignorar o % 
request =  sprintf("http://192.168.0.227:8080/get?accX=%d%%7Cacc_time&accY=%d%%7cacc_time&accZ=%d%%7Cacc_time&acc_time=%d", start, start, start,start);
resposta = urlread(request);
   
data = fromJSON(resposta);

t = data.buffer.acc_time.buffer;
x = data.buffer.accX.buffer;
y = data.buffer.accY.buffer;
z = data.buffer.accZ.buffer;

endfunction