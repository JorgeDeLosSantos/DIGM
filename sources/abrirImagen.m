function abrirImagen
figure('MenuBar','None','NumberTitle','off','Name','Abrir Imagen',...
    'Position',[200 200 400 300],'CloseRequestFcn',@cerrar,...
    'resize','off','color','w');
centerfig;

ax=axes('Parent',gcf,'units','pixels','Position',[10 70 380 220],...
    'visible','off');

uicontrol('style','pushbutton','String','Abrir Imagen',...
    'position',[150 20 100 25],'FontSize',10,'FontWeight','b',...
    'callback',@seleccionar);


    function seleccionar(src,event)
        [archivo, ruta] = uigetfile('*.png', 'Seleccione una imagen');
        if isequal(archivo,0)
            return;
        else
            imshow(imread(fullfile(ruta, archivo)));
        end
    end

    function cerrar(src,event)
        sel = questdlg('Desea salir','Salir','Sí','No','No');
        switch sel
            case 'Sí'
                delete(gcf);
            case 'No'
                return;
        end
    end
end