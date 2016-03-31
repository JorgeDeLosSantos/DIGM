function miprimerGUI
% Ejemplo de interfaz gráfica de usuario
hF = figure('MenuBar','none','NumberTitle','off',...
    'Name','Primer GUI','resize','off',...
    'Position',[200 200 200 100]);

centerfig(hF); % Centra la GUI

uicontrol('style','pushbutton','String','Cambiar color',...
    'Position',[50 40 100 25],'Callback',@colorFcn);

    function colorFcn(src,event)
        C=rand(1,3); % Vector aleatorio de 1x3
        set(hF,'Color',C); % Modifica el color de la ventana
    end
end