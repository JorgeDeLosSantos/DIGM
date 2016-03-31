function areaBajoCurva
fondo=[0.6 0.6 0.6];
figure('MenuBar','none','NumberTitle','off','Name','Área Bajo la Curva',...
    'position',[300 200 700 400],'color',fondo,'resize','off');

axes('parent',gcf,'units','pixels','position',[30 40 420 350]);

uicontrol('style','text','String','f (x)','position',[490 350 40 20],...
    'fontsize',12,'fontweight','bold','backgroundcolor',fondo);
fun=uicontrol('style','edit','String','cos(x)','position',[530 350 120 20],...
    'fontsize',10,'fontweight','bold','backgroundcolor',[1 1 1]);

uicontrol('style','text','String','Intervalo',...
    'position',[520 300 100 20],'fontsize',10,'fontweight',...
    'bold','backgroundcolor',fondo);

uicontrol('style','text','String','a','position',[500 270 20 20],...
    'fontsize',12,'fontweight','bold','backgroundcolor',fondo);
da=uicontrol('style','edit','String','0','position',[520 270 40 20],...
    'fontsize',10,'fontweight','bold','backgroundcolor',[1 1 1]);

uicontrol('style','text','String','b','position',[580 270 20 20],...
    'fontsize',12,'fontweight','bold','backgroundcolor',fondo);
db=uicontrol('style','edit','String','3','position',[600 270 40 20],...
    'fontsize',10,'fontweight','bold','backgroundcolor',[1 1 1]);


uicontrol('style','text','String','Número de Particiones',...
    'position',[510 200 150 20],'fontsize',10,'fontweight',...
    'bold','backgroundcolor',fondo);
part=uicontrol('style','slider','min',0,'max',100,...
    'position',[490 170 190 20],'callback',@calcular,...
    'sliderstep',[0.01 0.1],'value',10);
numpart=uicontrol('style','text','String','','position',[575 145 30 20],...
    'fontsize',10,'fontweight','bold','backgroundcolor',[0.9 0.9 0.9]);


uicontrol('style','text','String','Área aprox.','pos',[480 90 80 20],...
    'fontsize',8,'fontweight','bold','backgroundcolor',fondo);
areaAp=uicontrol('style','text','String','','position',[560 90 80 20],...
    'fontsize',10,'fontweight','bold','backgroundcolor',[0.95 0.7 0.7]);

uicontrol('style','text','String','Área real','position',[480 60 80 20],...
    'fontsize',8,'fontweight','bold','backgroundcolor',fondo);
areaRe=uicontrol('style','text','String','','position',[560 60 80 20],...
    'fontsize',10,'fontweight','bold','backgroundcolor',[0.95 0.7 0.7]);

    function calcular(src,event)
        cla;
        y=get(fun,'String');
        a=str2double(get(da,'String'));
        b=str2double(get(db,'String'));
        n=get(part,'Value');
        % Integral área real
        Ar=double(int(sym(get(fun,'String')),a,b));
        % Área aproximada
        if n>0
            dx=(b-a)/round(n);
            x=a:dx:b;
            y=subs(y,'x',x);
            ezplot(sym(get(fun,'String')),[a,b]);
            hold on
            for i=1:length(x)-1
                plot([x(i) x(i+1)],[y(i) y(i)],'r');
                plot([x(i) x(i)],[0 y(i)],'r');
                plot([x(i+1) x(i+1)],[0 y(i)],'r');
                A(i)=(y(i))*(x(i+1)-x(i));
            end
            set(numpart,'String',num2str(round(n)));
            set(areaAp,'String',num2str(sum(A)));
            set(areaRe,'String',num2str(Ar));
        else
            warndlg('Número de partición no válido');
            set(numpart,'String',num2str(round(n)));
            set(areaAp,'String','0');
            set(areaRe,'String',num2str(Ar));
        end
    end
end
