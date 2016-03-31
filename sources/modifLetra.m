function modifLetra
% Modifica el tamaño y color de letra de un Static Text
% utilizando menús desplegables (pop-up menu)

figure('MenuBar','none','NumberTitle','off','resize','off',...
    'Position',[100 100 200 150],'Name','Color/Tamaño de letra');
centerfig(gcf);

txt=uicontrol('style','text','string','MATLAB GUI',...
    'position',[30 100 140 40]);

uicontrol('style','popupmenu','String',{'Seleccione un tamaño','8','9',...
    '10','11','12','13','14','15','16'},'position',[20 60 160 20],...
    'callback',@dimFcn);

uicontrol('style','popupmenu','String',{'Seleccione un color','Rojo',...
    'Verde','Azul','Negro','Magenta','Amarillo'},...
    'position',[20 20 160 20],'callback',@colorFcn);

    function dimFcn(src,event)
        k=get(src,'Value');
        A=get(src,'String');
        n=A{k};
        if k~=1
            set(txt,'FontSize',str2double(n));
        end 
    end

    function colorFcn(src,event)
        k=get(src,'Value');
        A=get(src,'String');
        switch A{k}
            case 'Rojo'
                set(txt,'ForegroundColor','r');
            case 'Verde'
                set(txt,'ForegroundColor','g');
            case 'Azul'
                set(txt,'ForegroundColor','b');
            case 'Negro'
                set(txt,'ForegroundColor','k');
            case 'Magenta'
                set(txt,'ForegroundColor','m');
            case 'Amarillo'
                set(txt,'ForegroundColor','y');
            otherwise
                errordlg('Color no válido');
        end
    end
end