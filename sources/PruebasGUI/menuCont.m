function menuCont
figure('MenuBar','none',...
    'Name','Menú Contextual',...
    'Numbertitle','off',...
    'Pos',[100 200 200 200]);
movegui('center');
cM=uicontextmenu;
fm=uimenu(cM,'Label','Tamaño fuente');
uimenu(fm,'Label','10','Callback',@contM);
uimenu(fm,'Label','12','Callback',@contM);
uimenu(fm,'Label','16','Callback',@contM);
set(gcf,'Uicontextmenu',cM);

txtObj=uicontrol('style','text',...
    'units','normalized',...
    'str','TEXTO',...
    'pos',[0.2 0.2 0.5 0.5]);

    function contM(src,event)
       set(txtObj,'FontSize',str2num(get(src,'Label'))); 
    end
end