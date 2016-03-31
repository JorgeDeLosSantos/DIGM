function centrarGUI(fig)
if nargin<1
    fig=gcf;
end
if ishandle(fig)
    try
       ncPos=get(fig,'position');
       dimP=get(0,'ScreenSize');
       set(fig,'position',[0.5*(dimP(3)-ncPos(3)) 0.5*(dimP(4)-ncPos(4)) ncPos(3) ncPos(4)]);
    catch err
        disp(err);
    end
else
    error('Error, referencia no válida');
end
end