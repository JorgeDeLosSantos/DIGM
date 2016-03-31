function pruebaCheck
figure();
set(gcf,'pos',[200 200 200 200],'MenuBar','none','resize','on');
% centrarGUI(gcf);

CD(1:50,1:50,1:3)=uint8(255);
CD(30:35,15:16,1:3)=uint8(0);
% CD(40:43,5:7,1:3)=uint8(0);
% CD(40:43,5:7,1:3)=uint8(0);


h=uicontrol('style','push','str','','pos',[40 40 40 40],...
    'cdata',CD);
% centrarGUI(h)

end