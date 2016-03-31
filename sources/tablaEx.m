function tablaEx
figure('MenuBar','none','NumberTitle','off','Name','Puntuación',...
    'position',[400 300 280 180],'resize','off');
centerfig(gcf);

nombres={'Juan','Jorge','María','Ana','Antonio','Mario','Laura'};
puntos={8,9,10,7,9,8,9};
datos=[nombres',puntos'];
formato={'char','numeric'};
encabezado={'Nombre','Puntos'};
colAncho={60,60};
editable=[true,true];

htab=uitable('Parent',gcf,'Data',datos,'ColumnName',encabezado,...
    'Position',[10 10 130 160],'rowname','','FontSize',8,...
    'FontWeight','b','ColumnWidth',colAncho,'ColumnFormat',formato,...
    'ColumnEditable',editable,'CellEditCallback',@tabFcn);

uicontrol('style','text','str','Promedio','position',[190 150 60 20],...
    'FontSize',8,'FontWeight','b','BackgroundColor',get(gcf,'color'));
dprom=uicontrol('style','text','str',mean(cell2mat(puntos)),...
    'position',[190 130 60 20],'FontSize',11,'FontWeight','b',...
    'BackgroundColor','w','ForeGroundColor','b');

uicontrol('style','text','str','Máximo','position',[190 100 60 20],...
    'FontSize',8,'FontWeight','b','BackgroundColor',get(gcf,'color'));
dmax=uicontrol('style','text','str',max(cell2mat(puntos)),...
    'position',[190 80 60 20],'FontSize',11,'FontWeight','b',...
    'BackgroundColor','w','ForeGroundColor','g');

uicontrol('style','text','str','Mínimo','position',[190 50 60 20],...
    'FontSize',8,'FontWeight','b','BackgroundColor',get(gcf,'color'));
dmin=uicontrol('style','text','str',min(cell2mat(puntos)),...
    'position',[190 30 60 20],'FontSize',11,'FontWeight','b',...
    'BackgroundColor','w','ForeGroundColor','r');

    function tabFcn(src,event)
        P=get(htab,'data');
        P=cell2mat(P(:,2));
        prom=mean(P);
        maxval=max(P);
        minval=min(P);
        set(dprom,'str',prom);
        set(dmax,'str',maxval);
        set(dmin,'str',minval);
    end
end