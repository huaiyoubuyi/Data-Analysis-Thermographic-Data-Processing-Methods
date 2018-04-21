function [] = user_window( input_args )
% this part aims to create a user window for users' obervation 
screen=get(0,'ScreenSize');
W=screen(3);H=screen(4);
figure('Color',[1,1,1],'Position',[0.5*H,0.5*H,0.5*W,0.5*H],'Name','无损缺陷检测','NumberTitle','off','MenuBar','none');

%定义plot菜单项
hplot=uimenu(gcf,'Label','&Plot');
uimenu(hplot,'Label','Plot original1','Callback',['plot_gif(F1);','set(hgon,''Enable'',''on'');','set(hgoff,''Enable'',''on'');','set(hbon,''Enable'',''on'');','set(hboff,''Enab;e'',''on'');']);
uimenu(hplot,'Label','Plot original (TSR)','Callback',['plot_gif(F2);','set(hgon,''Enable'',''on'');','set(hgoff,''Enable'',''on'');','set(hbon,''Enable'',''on'');','set(hboff,''Enab;e'',''on'');']);
uimenu(hplot,'Label','Plot original (smooth)','Callback',['plot_gif(F3);','set(hgon,''Enable'',''on'');','set(hgoff,''Enable'',''on'');','set(hbon,''Enable'',''on'');','set(hboff,''Enab;e'',''on'');']);  
uimenu(hplot,'Label','Plot leastquares','Callback',['imagesc(F5);','set(hgon,''Enable'',''on'');','set(hgoff,''Enable'',''on'');','set(hbon,''Enable'',''on'');','set(hboff,''Enab;e'',''on'');']);
uimenu(hplot,'Label','Plot area','Callback',['imagesc(F6);','set(hgon,''Enable'',''on'');','set(hgoff,''Enable'',''on'');','set(hbon,''Enable'',''on'');','set(hboff,''Enab;e'',''on'');']);
uimenu(hplot,'Label','Plot original (selected)','Callback',['plot_jpg(F1,chosen);','set(hgon,''Enable'',''on'');','set(hgoff,''Enable'',''on'');','set(hbon,''Enable'',''on'');','set(hboff,''Enab;e'',''on'');']);  

%定义Option菜单项
hoption=uimenu(gcf,'Label','&Option');
hwincor=uimenu(hoption,'Label','&Window Color','Separator','on');

%定义window color
uimenu(hwincor,'Label','&Red','Accelerator','r','Callback','set(gcf,''Color'',''r'');');
uimenu(hwincor,'Label','&Blue','Accelerator','b','Callback','set(gcf,''Color'',''b'');');
uimenu(hwincor,'Label','&Yellow','Accelerator','y','Callback','set(gcf,''Color'',''y'');');
uimenu(hwincor,'Label','&White','Accelerator','w','Callback','set(gcf,''Color'',''w'');');

%定义Quit菜单项
uimenu(gcf,'Label','&Quit','Callback','close(gcf)');

end

