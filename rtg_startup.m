set(0,'defaultTextFontSize',12)
set(0,'defaultAxesColorOrder',[1 0 0;0 1 0;0 0 1;0 0 0;1 0 1;0 1 1;1 1 0;.5 .5 .5])
set(0,'defaultAxesColor','none')
format compact
format short g
myb(128)
global local
try
 matvers=ver; matver=matvers.Version;
 d=strfind(matver,'.'); matver(d(2:end))=[];
 [matver,d]=strtok(matver,'.');
 local.ver=str2num(d(2:end))/10;
 if local.ver>=1, local.ver=0.9+local.ver/100; end
 local.ver=local.ver+str2num(matver);
 local.name=matvers(1).Name;
 set(0,'defaultAxesFontSize',12)
 set(0,'defaultFigureMenuBar','none')
 set(0,'defaultFigureNumberTitle','off')
 set(0,'defaultFigurePaperType','A4')
 set(0,'defaultFigurePaperUnits','centimeters')
 set(0,'defaultFigureRenderer','painters')
 set(0,'defaultFigureSelectionHighlight','off')
 set(0,'defaultFigureToolBar','figure')
 set(0,'defaultUicontrolFontSize',10)
 set(0,'defaultAxesxMinorTick','on')
 set(0,'defaultAxesyMinorTick','on')
 d=get(0,'ScreenSize');
 local.x=prod(d)-1;
 if ~usejava('jvm') && local.ver>=7.5
  set(0,'DefaultAxesButtonDownFcn','zoom')
 end
catch
 local.ver=3; local.name='Octave'; local.x=0;
 set(0,'defaultTextFontName','dejavu')
end
if strcmp(local.name,'Octave')
 [dum,a]=strtok(fliplr(which('rtg')),filesep);
 addpath(fullfile(fliplr(a),'private'))
end
if local.x
 matver=get(0,'defaultFigurePosition');
 set(0,'defaultFigurePosition',[d(3)/2 matver(2:4)])
end
clear matver d
