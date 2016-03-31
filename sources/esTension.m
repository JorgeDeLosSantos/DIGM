function esTension
figure('MenuBar','none','NumberTitle','off','Name','Tensión cuerdas',...
    'position',[200 200 400 210],'resize','off');
centerfig(gcf);

A=struct2array(load('imTension.mat'));
uicontrol('style','push','str','','pos',[160 10 230 190],'cdata',A,...
    'callback',@calcular);

p=uipanel(gcf,'units','pixels','pos',[10 10 140 190]);
cf=get(p,'BackgroundColor');

% Datos de entrada
uicontrol(p,'style','push','str','<html>&theta<sub>1</sub></html>',...
    'pos',[10 160 20 22],'tag','entrada');
dtheta1=uicontrol(p,'style','edit','str','30','pos',[35 160 70 20]);
uicontrol(p,'style','text','str','°','pos',[110 160 10 20]);

uicontrol(p,'style','push','str','<html>&theta<sub>2</sub></html>',...
    'pos',[10 130 20 22],'tag','entrada');
dtheta2=uicontrol(p,'style','edit','str','45','pos',[35 130 70 20]);
uicontrol(p,'style','text','str','°','pos',[110 130 10 20]);

uicontrol(p,'style','push','str','W','pos',[10 100 20 22],...
    'tag','entrada');
dW=uicontrol(p,'style','edit','str','1000','pos',[35 100 70 20]);
uicontrol(p,'style','text','str','N','pos',[110 100 10 20]);

% Datos de salida
uicontrol(p,'style','text','str','Resultados','pos',[40 65 60 20]);

uicontrol(p,'style','push','str','<html>T<sub>1</sub></html>',...
    'pos',[10 40 20 22],'tag','entrada');
dT1=uicontrol(p,'style','text','str','','pos',[35 40 70 20],...
    'BackgroundColor',[0.8 0.8 0.8],'fontsize',10,'foregroundcolor','b');
uicontrol(p,'style','text','str','N','pos',[110 40 10 20]);

uicontrol(p,'style','push','str','<html>T<sub>2</sub></html>',...
    'pos',[10 10 20 22],'tag','entrada');
dT2=uicontrol(p,'style','text','str','','pos',[35 10 70 20],...
    'BackgroundColor',[0.8 0.8 0.8],'fontsize',10,'foregroundcolor','b');
uicontrol(p,'style','text','str','N','pos',[110 10 10 20]);

C(1:20,1:20,1)=uint8(cf(1)*255);
C(1:20,1:20,2)=uint8(cf(2)*255);
C(1:20,1:20,3)=uint8(cf(3)*255);
set(findobj('tag','entrada'),'cdata',C);

helpdlg('Presione la imagen para calcular','Ayuda');

    function calcular(src,event)
        theta1=str2double(get(dtheta1,'str'))*pi/180;
        theta2=str2double(get(dtheta2,'str'))*pi/180;
        W=str2double(get(dW,'str'));
        
        syms T1 T2;
        sumFx=T1*cos(theta1)-T2*cos(theta2);
        sumFy=T1*sin(theta1)+T2*sin(theta2)-W;
        [T1,T2]=solve(sumFx,sumFy);
        T1=double(T1);
        T2=double(T2);
        set(dT1,'str',T1);
        set(dT2,'str',T2);
    end
end