function converTemperatura
% Conversor de temperatura 
% Última modificación: 03/01/14
% Jorge De Los Santos
% delossantosmfq@gmail.com && matlabtyp@gmail.com
% Blog: http://matlab-typ.blogspot.com 

fcolor=[0.92 0.92 0.92];
figure('NumberTitle','off','MenuBar','none','color',fcolor,...
    'Name','Conversor de Temperatura','position',[200 200 150 200],...
    'resize','off');
centerfig(gcf);

% Grados Celsius
uicontrol('Style','text','String','°C','Position',[110 170 20 20],...
    'BackgroundColor',fcolor,'FontSize',10,'FontWeight','b');
gC=uicontrol('Style','edit','String','','Position',[20 170 80 20]);

% Grados Kelvin
uicontrol('Style','text','String','K','Position',[110 135 20 20],...
    'BackgroundColor',fcolor,'FontSize',10,'FontWeight','b');
gK=uicontrol('Style','edit','String','','Position',[20 135 80 20]);

% Grados Fahrenheit
uicontrol('Style','text','String','°F','Position',[110 100 20 20],...
    'BackgroundColor',fcolor,'FontSize',10,'FontWeight','b');
gF=uicontrol('Style','edit','String','','Position',[20 100 80 20]);

% Grados Rankine
uicontrol('Style','text','String','R','Position',[110 65 20 20],...
    'BackgroundColor',fcolor,'FontSize',10,'FontWeight','b');
gR=uicontrol('Style','edit','String','','Position',[20 65 80 20]);

uicontrol('Style','Pushbutton','String','Convertir','FontSize',9,...
    'FontWeight','b','Position',[10 20 70 25],'callback',@convertir);

uicontrol('Style','Pushbutton','String','Borrar','FontSize',9,...
    'FontWeight','b','Position',[90 20 50 25],'callback',@borrar);

    function convertir(src,event)
        C=get(gC,'String');
        K=get(gK,'String');
        F=get(gF,'String');
        R=get(gR,'String');
        
        if ~strcmp(C,'')
            C=str2double(C);
            K=C+273.15;
            F=(9/5)*C+32;
            R=(C+273.15)*(9/5);
        elseif ~strcmp(K,'')
            K=str2double(K);
            C=K-273.15;
            F=(9/5)*K-459.67;
            R=(9/5)*K;
        elseif ~strcmp(F,'')
            F=str2double(F);
            C=(F-32)*(5/9);
            K=(F+459.67)*(5/9);
            R=F+459.67;
        elseif ~strcmp(R,'')
            R=str2double(R);
            C=(R-491.67)*(5/9);
            K=(5/9)*R;
            F=R-459.67;
        else
            warndlg('Inserte un valor en al menos un campo','Error');
        end
        
        set(gC,'String',num2str(C));
        set(gK,'String',num2str(K));
        set(gF,'String',num2str(F));
        set(gR,'String',num2str(R));
    end

    function borrar(src,event)
        set(findobj('style','edit'),'str','');
    end
end