function calculadora
figure('MenuBar','none','NumberTitle','off','Name','Calculadora',...
    'position',[200 200 200 280],'resize','off');
centerfig(gcf);

p=uipanel(gcf,'units','pixels','position',[10 10 180 200]);

pantalla=uicontrol('style','text','string','',...
    'position',[10 230 180 40],'HorizontalAlignment','right',...
    'FontSize',20,'FontWeight','b','FontName','Cambria Math');

uicontrol('style','push','string','AC','position',[60 195 40 15],...
    'backgroundcolor','r','callback',@acFcn,'foregroundcolor','w',...
    'fontweight','b');
uicontrol('style','push','string','OFF','position',[100 195 40 15],...
    'backgroundcolor','b','callback',@offFcn,'foregroundcolor','w',...
    'fontweight','b');

uicontrol(p,'style','push','string','0','position',[8 8 35 35],...
    'fontsize',14,'fontweight','b','callback',@calcFcn);
uicontrol(p,'style','push','string','.','position',[51 8 35 35],...
    'fontsize',14,'fontweight','b','callback',@calcFcn);
uicontrol(p,'style','push','string','=','position',[94 8 35 35],...
    'fontsize',14,'fontweight','b','callback',@calcFcn);
uicontrol(p,'style','push','string','+','position',[137 8 35 35],...
    'fontsize',14,'fontweight','b','callback',@calcFcn);
uicontrol(p,'style','push','string','1','position',[8 51 35 35],...
    'fontsize',14,'fontweight','b','callback',@calcFcn);
uicontrol(p,'style','push','string','2','position',[51 51 35 35],...
    'fontsize',14,'fontweight','b','callback',@calcFcn);
uicontrol(p,'style','push','string','3','position',[94 51 35 35],...
    'fontsize',14,'fontweight','b','callback',@calcFcn);
uicontrol(p,'style','push','string','-','position',[137 51 35 35],...
    'fontsize',14,'fontweight','b','callback',@calcFcn);
uicontrol(p,'style','push','string','4','position',[8 94 35 35],...
    'fontsize',14,'fontweight','b','callback',@calcFcn);
uicontrol(p,'style','push','string','5','position',[51 94 35 35],...
    'fontsize',14,'fontweight','b','callback',@calcFcn);
uicontrol(p,'style','push','string','6','position',[94 94 35 35],...
    'fontsize',14,'fontweight','b','callback',@calcFcn);
uicontrol(p,'style','push','string','*','position',[137 94 35 35],...
    'fontsize',14,'fontweight','b','callback',@calcFcn);
uicontrol(p,'style','push','string','7','position',[8 137 35 35],...
    'fontsize',14,'fontweight','b','callback',@calcFcn);
uicontrol(p,'style','push','string','8','position',[51 137 35 35],...
    'fontsize',14,'fontweight','b','callback',@calcFcn);
uicontrol(p,'style','push','string','9','position',[94 137 35 35],...
    'fontsize',14,'fontweight','b','callback',@calcFcn);
uicontrol(p,'style','push','string','/','position',[137 137 35 35],...
    'fontsize',14,'fontweight','b','callback',@calcFcn);

    function calcFcn(src,event)
        global cnum ceval
        pres=get(src,'str');
        if ~any(strcmp(pres,{'*','/','+','-','='}))
            cnum=[cnum,pres];
            set(pantalla,'str',cnum);
        elseif any(strcmp(pres,{'+','-','*','/'}))
            ceval=[ceval,cnum,pres];
            cnum='';
        elseif strcmp(pres,'=')
            ceval=[ceval,cnum];
            set(pantalla,'str',str2num(ceval));
            ceval=get(pantalla,'str');
            cnum='';
        end
    end

    function acFcn(src,event)
        global cnum ceval
        cnum='';
        ceval='';
        set(pantalla,'str','0');
    end

    function offFcn(src,event)
        set(pantalla,'str','CASIO');
        pause(0.5);
        set(pantalla,'str','');
        pause(0.5);
        set(pantalla,'str','CASIO');
        pause(0.5);
        set(pantalla,'str','');
    end
end