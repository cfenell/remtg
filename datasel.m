function datasel
global rtdir bval butts d odate
v=get(butts(4),'value')-2;
if v==0
 ndir=rtdir;
 if ~exist(ndir,'dir'), ndir=fullfile(filesep,'data'); end
 if ~exist(ndir,'dir'), ndir=fullfile(filesep,'data1'); end
 if ~exist(ndir,'dir'), ndir=pwd; end
 [startfile,ndir]=uigetfile(fullfile(ndir,'*.mat'),'Pick a start file in directory');
 if ~isequal(startfile,0) & ~isequal(ndir,0)
  rtdir=ndir;
  d=dir(fullfile(rtdir,'*.mat')); odate=rtdir;
  while ~isempty(d) & isempty(strfind(d(1).name,startfile))
   d(1)=[];
  end
  set(butts(5),'visible','off','value',0)
  setbval(0,1)
 else
  set(butts(4),'value',bval(4)+2)
 end
elseif v~=bval(4)
 if v>0
  rtdir=[];
  set(butts(5),'visible','on')
 else
  rtdir='Old data';
  set(butts(5),'visible','off','value',0)
 end
 setbval(0,1)
end
