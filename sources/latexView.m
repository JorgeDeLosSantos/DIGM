function latexView
figure('MenuBar','none','NumberTitle','off','Name','Latex Visor',...
    'Position',[200 200 300 200],'resize','on');
centerfig(gcf);

uicontrol('style','text','str','Inserte una expresión','units','norm',...
    'position',[0.1 0.9 0.8 0.08],'BackGroundColor',get(gcf,'color'),...
    'FontWeight','b');

cad=uicontrol('style','edit','str','','units','normalized',...
    'position',[0.02 0.8 0.87 0.1],'FontSize',9);
uicontrol('style','push','str','OK','units','normalized',...
    'position',[0.90 0.8 0.08 0.1],'callback',@mostrar);

p=uipanel(gcf,'units','normalized','position',[0.02 0.02 0.96 0.75]);
ax=axes('parent',p,'units','normalized','position',[0 0 1 1],...
    'visible','off');

    function mostrar(src,event)
        cla;
        txt=horzcat('$$',get(cad,'str'),'$$');
        ht=text(0.1,0.5,txt,'interpreter','latex','FontSize',14,...
            'units','normalized');
    end

end