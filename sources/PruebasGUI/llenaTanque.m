function llenaTanque
figure('MenuBar','none',...
    'NumberTitle','off',...
    'Name','FG',...
    'resize','off',...
    'Position',[200 200 200 200]);

centerfig;

uicontrol('style','push',...
    'String','Start',...
    'Position',[60 10 80 20],...
    'Callback',@callFcn);

tanque=uicontrol('style','text',...
    'Position',[50 50 100 140]);

agua=uicontrol('style','text',...
    'Position',get(tanque,'Pos'));

    function callFcn(src,event)
        D=get(tanque,'Position');
        set(agua,'Backgroundcolor','b');
        for i=1:100
            set(agua,'Position',[D(1)+1 D(2) D(3)-1 D(4)*i/100]);
            pause(0.05);
        end
    end

end