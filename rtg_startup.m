set(0,'defaultaxesxminortick','on')
set(0,'defaultaxesyminortick','on')
set(0,'defaultfigurenumbertitle','off')
set(0,'defaultfigureSelectionHighlight','off')
set(0,'defaultfiguremenubar','none')
set(0,'defaultfiguretoolbar','figure')
set(0,'defaultuicontrolfontsize',10)
set(0,'defaultaxesfontsize',12)
set(0,'defaulttextfontsize',12)
set(0,'defaultAxesColorOrder',[1 0 0;0 1 0;0 0 1;0 0 0;1 0 1;0 1 1;1 1 0;.5 .5 .5])
set(0,'defaultFigurePaperType','A4')
set(0,'defaultFigurePaperUnits','centimeters')
set(0,'defaultaxescolor','none')
format compact
format short g
myb(128)
global local
local.ver=str2num(version('-release'));
local.x=prod(get(0,'ScreenSize'))-1;
