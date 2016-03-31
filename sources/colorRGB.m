function colorRGB
figure('MenuBar','none','NumberTitle','off','Name','Color RGB',...
    'Position',[200 200 250 200]);
centerfig(gcf);
fcolor=get(gcf,'color');

pizarra=uicontrol('style','text','string','','position',[10 140 230 55]);

uicontrol('style','text','string','R','position',[10 100 20 20],...
    'Backgroundcolor',fcolor,'FontSize',10);
valR=uicontrol('style','slider','max',255,'min',0,'callback',@color_fcn,...
    'sliderstep',[1/255 10/255],'position',[35 100 160 20]);
txtR=uicontrol('style','text','string','','position',[200 100 40 20]);

uicontrol('style','text','string','G','position',[10 60 20 20],...
    'Backgroundcolor',fcolor,'FontSize',10);
valG=uicontrol('style','slider','max',255,'min',0,'callback',@color_fcn,...
    'sliderstep',[1/255 10/255],'position',[35 60 160 20]);
txtG=uicontrol('style','text','string','','position',[200 60 40 20]);

uicontrol('style','text','string','B','position',[10 20 20 20],...
    'Backgroundcolor',fcolor,'FontSize',10);
valB=uicontrol('style','slider','max',255,'min',0,'callback',@color_fcn,...
    'sliderstep',[1/255 10/255],'position',[35 20 160 20]);
txtB=uicontrol('style','text','string','','position',[200 20 40 20]);

    function color_fcn(src,event)
        R=round(get(valR,'value'));
        G=round(get(valG,'value'));
        B=round(get(valB,'value'));
        set(pizarra,'Backgroundcolor',[R G B]/255);
        set(txtR,'String',num2str(R));
        set(txtG,'String',num2str(G));
        set(txtB,'String',num2str(B));
    end
end