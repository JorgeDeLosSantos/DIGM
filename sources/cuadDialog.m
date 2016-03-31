function cuadDialog
figure('MenuBar','none','NumberTitle','off','Name','Mensajes',...
    'position',[200 200 120 100],'resize','off');
centerfig(gcf);

uicontrol('style','listbox','String',{'msgbox','errordlg','helpdlg',...
    'warndlg'},'position',[10 10 100 80],'callback',@seltipo);

    function seltipo(src,event)
        k=get(src,'value');
        A=get(src,'string');
        switch A{k}
            case 'msgbox'
                msgbox('Esto es un msgbox');
            case 'errordlg'
                errordlg('Esto es un errordlg');
            case 'helpdlg'
                helpdlg('Esto es un helpdlg');
            case 'warndlg'
                warndlg('Esto es un warndlg');
        end
    end

end