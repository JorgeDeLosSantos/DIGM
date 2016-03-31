function graficaFcn
figure('MenuBar','None','NumberTitle','off','Name','Gráfica',...
    'Position',[200 200 400 300],'resize','off','color',[0.6 0.8 0.8]);
centerfig(gcf);
fcolor=get(gcf,'color');

% Barra de menú
arch=uimenu(gcf,'label','Archivo');
uimenu(arch,'label','Guardar gráfica','callback',@guardar);
uimenu(arch,'label','Cerrar','callback','delete(gcf)');

% Axes 
ax=axes('Parent',gcf,'units','pixels','Position',[30 80 340 200]);

% Controles gráficos
uicontrol('style','text','string','f (x)','position',[100 18 25 20],...
    'backgroundcolor',fcolor,'fontsize',9,'fontweight','b');

fun=uicontrol('style','edit','string','','position',[130 20 110 20]);

uicontrol('style','push','string','Graficar','callback',@graficarFcn,...
    'position',[250 20 60 22]);

    function graficarFcn(src,event)
        F=get(fun,'String');
        if ~strcmp(F,'')
            ezplot(F);
            set(get(gca,'xlabel'),'String','');
            set(get(gca,'ylabel'),'String','');
            set(get(gca,'title'),'String','');
        else
            warndlg('Inserte una función','Error');
        end
    end

    function guardar(src,event)
        [archivo, ruta] = uiputfile('*.tif','Seleccione un directorio');
        if isequal(archivo,0) || isequal(ruta,0)
            return;
        else
           img=getframe(gca);
           imwrite(img.cdata,fullfile(ruta,archivo));
        end
    end
end