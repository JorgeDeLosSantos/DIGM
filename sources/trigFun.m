function trigFun
figure('MenuBar','none','NumberTitle','off','position',[200 200 500 350],...
    'Name','Funciones trigonométricas','resize','off');
centerfig(gcf);

axes('Parent',gcf,'units','pixels','position',[180 40 310 290]);

panel=uibuttongroup('Parent',gcf,'units','pixels',...
    'position',[10 130 120 200],'SelectionChangeFcn',@selecFcn);

uicontrol(panel,'style','radiobutton','String','Seno',...
    'position',[20 170 80 20]);
uicontrol(panel,'style','radiobutton','String','Coseno',...
    'position',[20 140 80 20]);
uicontrol(panel,'style','radiobutton','String','Tangente',...
    'position',[20 110 80 20]);
uicontrol(panel,'style','radiobutton','String','Cotangente',...
    'position',[20 80 80 20]);
uicontrol(panel,'style','radiobutton','String','Secante',...
    'position',[20 50 80 20]);
uicontrol(panel,'style','radiobutton','String','Cosecante',...
    'position',[20 20 80 20]);

uicontrol('style','checkbox','string','Mostrar rejilla',...
    'position',[20 80 100 20],'callback',@rejillaFcn,...
    'Backgroundcolor',get(gcf,'color'));

    function selecFcn(src,event)
        A=get(event.NewValue,'String');
        switch A
            case 'Seno'
                ezplot('sin(x)',[0 10]);
            case 'Coseno'
                ezplot('cos(x)',[0 10]);
            case 'Tangente'
                ezplot('tan(x)',[0 10]);
            case 'Cotangente'
                ezplot('cot(x)',[0 10]);
            case 'Secante'
                ezplot('sec(x)',[0 10]);
            case 'Cosecante'
                ezplot('csc(x)',[0 10]);
        end
    end

    function rejillaFcn(src,event)
        if get(src,'Value')==1
            grid('on');
        else
            grid('off');
        end
    end

end