% This is a graphical user interface program for ReMAE.
% The code is written by  Luchang Li and Wei Tao .
function varargout = ReMAE_V_1_0(varargin)
% REMAE_V_1_0 MATLAB code for ReMAE_V_1_0.fig
% 
%      REMAE_V_1_0, by itself, creates a new REMAE_V_1_0 or raises the existing
%      singleton*.
%
%      H = REMAE_V_1_0 returns the handle to a new REMAE_V_1_0 or the handle to
%      the existing singleton*.
%
%      REMAE_V_1_0('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in REMAE_V_1_0.M with the given input arguments.
%
%      REMAE_V_1_0('Property','Value',...) creates a new REMAE_V_1_0 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ReMAE_V_1_0_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ReMAE_V_1_0_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ReMAE_V_1_0

% Last Modified by GUIDE v2.5 24-Dec-2018 12:07:42

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ReMAE_V_1_0_OpeningFcn, ...
                   'gui_OutputFcn',  @ReMAE_V_1_0_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before ReMAE_V_1_0 is made visible.
function ReMAE_V_1_0_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ReMAE_V_1_0 (see VARARGIN)

% Choose default command line output for ReMAE_V_1_0
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ReMAE_V_1_0 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = ReMAE_V_1_0_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function fs_Callback(hObject, eventdata, handles)
% hObject    handle to fs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of fs as text
%        str2double(get(hObject,'String')) returns contents of fs as a double


% --- Executes during object creation, after setting all properties.
function fs_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function datasizes_Callback(hObject, eventdata, handles)
% hObject    handle to datasizes (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of datasizes as text
%        str2double(get(hObject,'String')) returns contents of datasizes as a double


% --- Executes during object creation, after setting all properties.
function datasizes_CreateFcn(hObject, eventdata, handles)
% hObject    handle to datasizes (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function samplesnumber_Callback(hObject, eventdata, handles)
% hObject    handle to samplesnumber (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of samplesnumber as text
%        str2double(get(hObject,'String')) returns contents of samplesnumber as a double


% --- Executes during object creation, after setting all properties.
function samplesnumber_CreateFcn(hObject, eventdata, handles)
% hObject    handle to samplesnumber (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function channelnumbers_Callback(hObject, eventdata, handles)
% hObject    handle to channelnumbers (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of channelnumbers as text
%        str2double(get(hObject,'String')) returns contents of channelnumbers as a double


% --- Executes during object creation, after setting all properties.
function channelnumbers_CreateFcn(hObject, eventdata, handles)
% hObject    handle to channelnumbers (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function dataname_Callback(hObject, eventdata, handles)
% hObject    handle to dataname (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of dataname as text
%        str2double(get(hObject,'String')) returns contents of dataname as a double


% --- Executes during object creation, after setting all properties.
function dataname_CreateFcn(hObject, eventdata, handles)
% hObject    handle to dataname (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[FileName,PathName] = uigetfile('*.mat','Select the file');
L=length(FileName);
if L<5         
    errordlg('Wrong File','File Open Error');
    return;
end
addpath(PathName);         
% file=FileName;
% load (file);
global existingdata;
global H;
% file(end-3:end)=[];
%  existingdata=eval(file);
existingdata=get_variable_via_load(FileName);
set(handles.text2, 'string','Loaded EEG Data');
set(handles.text26, 'string','Please input sample rate');
set(handles.text26, 'Visible','on');
 [H,L]=size(existingdata);
 Datasize=whos('existingdata');
 Datasizes=getfield(Datasize,'bytes');
 Datasizes=Datasizes/1024/1024;
 set(handles.channelnumbers, 'string',H);
 set(handles.samplesnumber, 'string',L);
 set(handles.datasizes, 'string',Datasizes);
 set(handles.dataname, 'string',FileName);


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global existingdata;
global fs;
global Yd;
global Yrow;  
Yd=existingdata;
% hmb=msgbox('Please Check if the input data is loaded','Message dialog box ','warn');
[row,column]=size(Yd);
Yrow = [];
for i = 1:row
   Yrow(i,1) = i;
end
run ('inputsignal_analysis.m'); 
% set(handles.tab_SA,'Visible','on');
% set(handles.tag_Singlechannel,'Visible','off');
% set(handles.tab_Multichannel,'Visible','off');
% set(handles.tab_Fewchannel,'Visible','off');
% set(handles.tab2,'Visible','off');
fs=str2num(get(handles.fs,'string'));



% --- Executes on button press in pushbutton11.
function pushbutton11_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
web(['file:///' which('help.html')]);

% --- Executes on button press in pushbutton12.
function pushbutton12_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(gcf);

% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global H;
global fs;
fs=str2num(get(handles.fs,'string'));
if H==1||H==0||H<9
hmb=msgbox('Please check if the input data is multi-channel','Message dialog box ','warn');
else
% run ('Multichannel.m');
set(handles.tab_Multichannel,'Visible','on');
set(handles.tab_Fewchannel,'Visible','off');
set(handles.tag_Singlechannel,'Visible','off');
% set(handles.tab_SA,'Visible','off');
set(handles.tab2,'Visible','off');

end
function tab_Multichannel_ResizeFcn(hObject, eventdata, handles)
% hObject    handle to tab1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global H;
global fs;
fs=str2num(get(handles.fs,'string'));
if H<2||H>8||H==0
hmb=msgbox('Few channle means that the number of input signal channels is between 2 and 8','Message dialog box ','warn');
else
% run ('Fewchannel.m');
set(handles.tab_Fewchannel,'Visible','on');
set(handles.tag_Singlechannel,'Visible','off');
% set(handles.tab_SA,'Visible','off');
set(handles.tab_Multichannel,'Visible','off');
set(handles.tab2,'Visible','off');
end
 function tab_Fewchannel_ResizeFcn(hObject, eventdata, handles)
% hObject    handle to tab1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 
% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global H;
global fs;
fs=str2num(get(handles.fs,'string'));
if H>1||H==0
hmb=msgbox('Please Check if the input data is single-channel','Message dialog box ','warn');
else
    set(handles.tag_Singlechannel,'Visible','on');
%     set(handles.tab_SA,'Visible','off');
    set(handles.tab_Multichannel,'Visible','off');
    set(handles.tab_Fewchannel,'Visible','off');
    set(handles.tab2,'Visible','off');
% run ('singlechannel.m'); 
end
   function tag_Singlechannel_ResizeFcn(hObject, eventdata, handles)
% hObject    handle to tab1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 

% --- Executes on selection change in listbox_SA2.
function listbox_SA2_Callback(hObject, eventdata, handles)
% hObject    handle to listbox_SA2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox_SA2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox_SA2
global fs;
global Yd;
global vd;
 cla reset;  
vd=get(handles. listbox_SA2,'value');
vd=vd-1;
 axes(handles.axes1);
  multichannelplot_normal_chen3(Yd(vd,:),fs);%%未找到相关函数
  Ymax=max(Yd(vd,:));
  Ymin=min(Yd(vd,:));
  Ymean=mean(Yd(vd,:));
  set(handles.edit_SA9,'string',num2str(Ymax));
  set(handles.edit_SA8,'string',num2str(Ymean));
  set(handles.edit_SA7,'string',num2str(Ymin));

% --- Executes during object creation, after setting all properties.
function listbox_SA2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox_SA2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton_SA_6.
function pushbutton_SA_6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_SA_6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Yrow;
set(handles.listbox_SA2,'string',{'Num of signal',num2str(Yrow)});

% --- Executes on button press in pushbutton_SA_7.
function pushbutton_SA_7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_SA_7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global vd;
vd=vd-1;
global Yd;
[filename ,pathname]=uiputfile({' Yd','MAT-files(*.mat)'},'save');%pathname获取保存数据路径，filename获取保存数据名称
str=strcat(pathname,filename);%字符串连接
Yd=Yd(vd,:);
save(str, 'Yd')


% --- Executes on button press in pushbutton_SA_8.
function pushbutton_SA_8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_SA_8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clc;
clear all
handles = guidata(EEG_Denosie_Toolbox);
set(handles.tab_SA,'Visible','off');

function tab_SA_ResizeFcn(hObject, eventdata, handles)
% hObject    handle to tab1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

function edit_SA9_Callback(hObject, eventdata, handles)
% hObject    handle to edit_SA9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_SA9 as text
%        str2double(get(hObject,'String')) returns contents of edit_SA9 as a double


% --- Executes during object creation, after setting all properties.
function edit_SA9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_SA9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_SA8_Callback(hObject, eventdata, handles)
% hObject    handle to edit_SA8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_SA8 as text
%        str2double(get(hObject,'String')) returns contents of edit_SA8 as a double


% --- Executes during object creation, after setting all properties.
function edit_SA8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_SA8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_SA7_Callback(hObject, eventdata, handles)
% hObject    handle to edit_SA7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_SA7 as text
%        str2double(get(hObject,'String')) returns contents of edit_SA7 as a double


% --- Executes during object creation, after setting all properties.
function edit_SA7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_SA7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% % % % %%%single channel _SC

% --- Executes on selection change in decomposechoose_SC.
function decomposechoose_SC_Callback(hObject, eventdata, handles)
% hObject    handle to decomposechoose_SC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns decomposechoose_SC contents as cell array
%        contents{get(hObject,'Value')} returns selected item from decomposechoose_SC
global val;
val=get(handles.decomposechoose_SC ,'value')
switch (val)
    case 1      %SSA
        set(handles.window_SC,'string','Window width','visible','on');
        set(handles.windowwidth_SC,'string','','visible','on');
        set(handles.edit6_SC,'string','Num of comps','visible','on');
        set(handles.edit7_SC,'string','','visible','on');
        set(handles.popupmenu10_SC,'visible','off');
         set(handles.edit47_SC,'visible','off');
        set(handles.edit48_SC,'visible','off');
    case 2                      %Wavelet
        set(handles.window_SC,'string','Wave level','visible','on');
        set(handles.windowwidth_SC,'string','','visible','on');
        set(handles.edit6_SC,'string','Wavebase','visible','on');
        set(handles.popupmenu10_SC,'visible','on');
        set(handles.edit7_SC,'string','','visible','on');
         set(handles.edit47_SC,'visible','off');
        set(handles.edit48_SC,'visible','off');
    case 3                     %EEMD
        set(handles.window_SC,'string','Noise level','visible','on');
        set(handles.windowwidth_SC,'string','','visible','on');
        set(handles.edit6_SC,'string','Ensemble Number','visible','on');
        set(handles.popupmenu10_SC,'visible','off');
        set(handles.edit7_SC,'string','','visible','on');
        set(handles.edit47_SC,'visible','on');
        set(handles.edit48_SC,'string','','visible','on');
end

% --- Executes during object creation, after setting all properties.
function decomposechoose_SC_CreateFcn(hObject, eventdata, handles)
% hObject    handle to decomposechoose_SC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function windowwidth_SC_Callback(hObject, eventdata, handles)
% hObject    handle to windowwidth_SC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of windowwidth_SC as text
%        str2double(get(hObject,'String')) returns contents of windowwidth_SC as a double


% --- Executes during object creation, after setting all properties.
function windowwidth_SC_CreateFcn(hObject, eventdata, handles)
% hObject    handle to windowwidth_SC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_SC_Callback(hObject, eventdata, handles)
% hObject    handle to edit7_SC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7_SC as text
%        str2double(get(hObject,'String')) returns contents of edit7_SC as a double


% --- Executes during object creation, after setting all properties.
function edit7_SC_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7_SC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton3_SC.
function pushbutton3_SC_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3_SC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global val;
val=get(handles.decomposechoose_SC ,'value');
switch (val)
    case 1      %SSA
        set(handles.window_SC,'string','Window width','visible','on');
        set(handles.windowwidth_SC,'string','30','visible','on');
        set(handles.edit6_SC,'string','Num of comps','visible','on');
        set(handles.popupmenu10_SC,'visible','off');
        set(handles.edit7_SC,'string','12','visible','on');
    case 2                      %Wavelet
        set(handles.window_SC,'string','Wavelevel','visible','on');
        set(handles.windowwidth_SC,'string','10','visible','on');
        set(handles.edit6_SC,'string','Wavebase','visible','on');
        set(handles.edit7_SC,'string','db4','visible','on');
        set(handles.popupmenu10_SC,'visible','on');
    case 3                     %EEMD
        set(handles.window_SC,'string','Noiselevel','visible','on');
        set(handles.windowwidth_SC,'string','0.2','visible','on');
        set(handles.edit6_SC,'string','Ensemble Number','visible','on');
        set(handles.edit7_SC,'string','100','visible','on');
        set(handles.popupmenu10_SC,'visible','off');
        set(handles.edit48_SC,'string','-1','visible','on');
        
end


% --- Executes on selection change in popupmenu10_SC.
function popupmenu10_SC_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu10_SC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu10_SC contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu10_SC


% --- Executes during object creation, after setting all properties.
function popupmenu10_SC_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu10_SC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1_SC.
function pushbutton1_SC_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1_SC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global existingdata;
global Ydecompose;
global fs;
 h=waitbar(0,'Running...');
val=get(handles.decomposechoose_SC ,'value');
switch (val)
    case 1                       %SSA
        Windowwidth=str2num(get(handles.windowwidth_SC,'string'));
        ncomps=str2num(get(handles.edit7_SC,'string'));
        [Ydecompose] = SSA_decompose(existingdata,Windowwidth,ncomps,fs);
    case 2                       %Wavelet
        Wavelevel=str2num(get(handles.windowwidth_SC,'string'));
        Wavebase=num2str(get(handles.edit7_SC,'string'));
        [Ydecompose] = wavelet_decompose(existingdata, Wavelevel, Wavebase,fs);
    case 3                     %EEMD
        Noiselevel=str2num(get(handles.windowwidth_SC,'string'));
        NE=str2num(get(handles.edit7_SC,'string'));
        numImf=str2num(get(handles.edit48_SC,'string'));
        [Ydecompose] = EEMD_decompose(existingdata,NE,Noiselevel,fs,numImf);
end
        waitbar(1,h,'Completed');
        pause(1);
        delete(h);
% --- Executes on mouse press over axes background.


function pushbutton12_SC_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton12_SC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Ydecompose;
[filename ,pathname]=uiputfile({' Ydecompose','MAT-files(*.mat)'},'save');%pathname获取保存数据路径，filename获取保存数据名称
str=strcat(pathname,filename);%字符串连接
save(str, 'Ydecompose')%将数据a保存为mat文件；


% --- Executes on button press in pushbutton14_SC.
function pushbutton14_SC_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton14_SC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Yd;
global Ydecompose;
global Yrow;
global val;
Yd=Ydecompose;
[row,column]=size(Yd);
Yrow = [];
for i = 1:row
    Yrow(i,1) = i;
end
switch(val)
    case 1
        run ('de_Signal_Analysis.m');
%           set(handles.tab_Decompositioncomponents,'Visible','on');
    case 2
%         set(handles.tab_Waveletcomponents,'Visible','on');
        run ('wt_Signal_Analysis.m');
    case 3
        run ('decompose_Signal_Analysis.m');
%           set(handles.tab_IMFs,'Visible','on');
end
  function tab_Decompositioncomponents_ResizeFcn(hObject, eventdata, handles)
% hObject    handle to tab1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
  function tab_Waveletcomponents_ResizeFcn(hObject, eventdata, handles)
% hObject    handle to tab1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
  function tab_IMFs_ResizeFcn(hObject, eventdata, handles)
% hObject    handle to tab1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

function edit48_SC_Callback(hObject, eventdata, handles)
% hObject    handle to edit48_SC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit48_SC as text
%        str2double(get(hObject,'String')) returns contents of edit48_SC as a double


% --- Executes during object creation, after setting all properties.
function edit48_SC_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit48_SC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_SC_Callback(hObject, eventdata, handles)
% hObject    handle to edit6_SC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6_SC as text
%        str2double(get(hObject,'String')) returns contents of edit6_SC as a double


% --- Executes during object creation, after setting all properties.
function edit6_SC_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6_SC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit21_SC_Callback(hObject, eventdata, handles)
% hObject    handle to edit21_SC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit21_SC as text
%        str2double(get(hObject,'String')) returns contents of edit21_SC as a double


% --- Executes during object creation, after setting all properties.
function edit21_SC_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit21_SC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in checkbox4_SC.
function checkbox4_SC_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox4_SC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox4_SC


% --- Executes on button press in z_SC.
function checkbox5_SC_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox5_SC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox5_SC


% --- Executes on button press in checkbox6_SC.
function checkbox6_SC_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox6_SC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox6_SC



function edit33_SC_Callback(hObject, eventdata, handles)
% hObject    handle to edit33_SC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit33_SC as text
%        str2double(get(hObject,'String')) returns contents of edit33_SC as a double


% --- Executes during object creation, after setting all properties.
function edit33_SC_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit33_SC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit34_SC_Callback(hObject, eventdata, handles)
% hObject    handle to edit34_SC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit34_SC as text
%        str2double(get(hObject,'String')) returns contents of edit34_SC as a double


% --- Executes during object creation, after setting all properties.
function edit34_SC_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit34_SC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit40_SC_Callback(hObject, eventdata, handles)
% hObject    handle to edit40_SC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit40_SC as text
%        str2double(get(hObject,'String')) returns contents of edit40_SC as a double


% --- Executes during object creation, after setting all properties.
function edit40_SC_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit40_SC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit41_SC_Callback(hObject, eventdata, handles)
% hObject    handle to edit41_SC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit41_SC as text
%        str2double(get(hObject,'String')) returns contents of edit41_SC as a double


% --- Executes during object creation, after setting all properties.
function edit41_SC_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit41_SC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit42_SC_Callback(hObject, eventdata, handles)
% hObject    handle to edit42_SC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit42_SC as text
%        str2double(get(hObject,'String')) returns contents of edit42_SC as a double


% --- Executes during object creation, after setting all properties.
function edit42_SC_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit42_SC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton8_SC.
function pushbutton8_SC_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8_SC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Youtput;
[filename ,pathname]=uiputfile({' Youtput','MAT-files(*.mat)'},'save');%pathname获取保存数据路径，filename获取保存数据名称
str=strcat(pathname,filename);%字符串连接
save(str, 'Youtput')%将数据a保存为mat文件；

% --- Executes on button press in pushbutton28.
function pushbutton28_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton28 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton2_SC.
function pushbutton2_SC_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2_SC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global va;
global val1;
global val;
global val2;
global Youtput;
global Ydecompose;
global fs;
global tlag;
global Ybss;
global existingdata;
choosestr={'Determine the correct parameters？ '};
response=questdlg(choosestr,'Question dialog box','Yes','No',2);
val=get(handles.decomposechoose_SC ,'value');
switch (val)
    case 1                       %SSA
        Windowwidth=str2num(get(handles.windowwidth_SC,'string'));
        ncomps=str2num(get(handles.edit7_SC,'string'));
        [Ydecompose] = SSA_decompose(existingdata,Windowwidth,ncomps,fs);
    case 2                       %Wavelet
        Wavelevel=str2num(get(handles.windowwidth_SC,'string'));
        Wavebase=num2str(get(handles.edit7_SC,'string'));
        [Ydecompose] = wavelet_decompose(existingdata, Wavelevel, Wavebase,fs);
    case 3                     %EEMD
        Noiselevel=str2num(get(handles.windowwidth_SC,'string'));
        NE=str2num(get(handles.edit7_SC,'string'));
        numImf=str2num(get(handles.edit48_SC,'string'));
        [Ydecompose] = EEMD_decompose(existingdata,NE,Noiselevel,fs,numImf);
end
tlag=str2num(get(handles.edit35_SC,'string'));
if   strcmp(response,'Yes')
     h=waitbar(0,'Running...');
    val=get(handles.decomposechoose_SC ,'value') %挑选EEMD,Wavelet，SSA
    val1=get(handles.popupmenu6_SC ,'value');%挑选ICA,CCA,IVA
    val2=get(handles.popupmenu7_SC ,'value');%挑选ICA类型
    switch(val)
        case 1                                %SSA分解模块
            switch (val1)
                case 1    %ICA
                    switch (val2)
                        case 1         %fast ica
                            [Ybss,Wica,WC,P_ica]= myfastICA(Ydecompose,fs);
                        case 2   %sobi
                            [Ybss ,Wica,WC,P_ica] = mysobi( Ydecompose,fs,4);
                        case 3       %jade
                            [Ybss,WC,P_ica,B]= myjade(Ydecompose,fs);
                             case 4   %infomax
                        [Ybss ,Wica,WC,P_ica] = myinfomax( Ydecompose,fs);
                    end
                case 2                                %CCA
                    [Ybss,B,WC]= myCCA( Ydecompose,fs,tlag);
                case 3                                    %IVA
                    [Ybss,F,WC,P_iva] = myIVA(Ydecompose,fs,tlag);
                case 4  %no bss
                    Ybss=Ydecompose;
            end
        case 2                                %Wavelet分解模块
            switch (val1)
                case 1                             %ICA
                    switch (val2)
                        case 1         %fast ica
                            [Ybss,Wica,WC,P_ica] = myfastICA( Ydecompose,fs);
                        case 2  %sobi
                            [Ybss ,Wica,WC,P_ica] = mysobi( Ydecompose,fs);
                        case 3       %jade
                            [Ybss,WC,P_ica,B] = myjade( Ydecompose,fs);
                             case 4   %infomax
                        [Ybss ,Wica,WC,P_ica] = myinfomax( Ydecompose,fs);
                    end
                    
                case 2                             %CCA
                    [Ybss,B,WC]= myCCA( Ydecompose,fs,tlag);
                case 3                             %IVA
                    [Ybss,F,WC,P_iva] = myIVA(Ydecompose,fs,tlag);
                case 4  %no bss
                    Ybss=Ydecompose;
            end
        case 3                                %EEMD分解模块
            switch (val1)
                case 1                                 %ICA
                    switch (val2)
                        case 1         %fast ica
                            [Ybss,Wica,WC,P_ica] = myfastICA( Ydecompose,fs);
                        case 2   %sobi
                            [Ybss ,Wica,WC,P_ica]= mysobi( Ydecompose,fs,4);
                        case 3       %jade
                            [Ybss,WC,P_ica,B] = myjade( Ydecompose,fs);
                             case 4   %infomax
                        [Ybss ,Wica,WC,P_ica] = myinfomax( Ydecompose,fs);
                    end
                case 2                                     %CCA
                    [Ybss,B,WC]= myCCA( Ydecompose,fs,tlag);
                case 3                                   %IVA
                    [Ybss,F,WC,P_iva] = myIVA(Ydecompose,fs,tlag);
                case 4  %no bss
                    Ybss=Ydecompose;
            end
    end              %%%%BSS部分，得到Ybss
    switch (val1)
        case 1    %ICA
            switch(val2)
                case 1  %fastica
                    if get(handles.checkbox4_SC,'Value')==1
                        acthreshold1=str2num(get(handles.edit21_SC,'string'));
                        acthreshold2=str2num(get(handles.edit40_SC,'string'));
                        [YfastICA,W] = ICA_threshold_fastica(Ybss,WC,Wica,P_ica,acthreshold1,acthreshold2,10000,10000,10000,10000,10000,10000);
                    end
                    if get(handles.checkbox5_SC,'Value')==1 
                        enthreshold1=str2num(get(handles.edit33_SC,'string'));
                        enthreshold2=str2num(get(handles.edit41_SC,'string'));
                        [YfastICA,W] = ICA_threshold_fastica(Ybss,WC,Wica,P_ica,0,0,enthreshold1,enthreshold2,10000,10000,10000,10000);
                    end
                    if get(handles.checkbox6_SC,'Value')==1
                        kuthreshold1=str2num(get(handles.edit34_SC,'string'));
                        kuthreshold2=str2num(get(handles.edit42_SC,'string'));
                        [YfastICA,W] = ICA_threshold_fastica(Ybss,WC,Wica,P_ica,0,0,10000,10000,kuthreshold1,kuthreshold2,10000,10000);
                    end
                     if get(handles.checkbox7_SC,'Value')==1
                        vathreshold1=str2num(get(handles.edit36_SC,'string'));
                        vathreshold2=str2num(get(handles.edit43_SC,'string'));
                        [YfastICA,W] = ICA_threshold_fastica(Ybss,WC,Wica,P_ica,0,0,10000,10000,10000,10000,vathreshold1,vathreshold2);
                    end
                    if  get(handles.checkbox4_SC,'Value')==1&&get(handles.checkbox5_SC,'Value')==1
                        acthreshold1=str2num(get(handles.edit21_SC,'string'));
                        acthreshold2=str2num(get(handles.edit40_SC,'string'));
                        enthreshold1=str2num(get(handles.edit33_SC,'string'));
                        enthreshold2=str2num(get(handles.edit41_SC,'string'));
                        [YfastICA,W] = ICA_threshold_fastica(Ybss,WC,Wica,P_ica,acthreshold1,acthreshold2,enthreshold1,enthreshold2,10000,10000,10000,10000);
                    end
                    if  get(handles.checkbox4_SC,'Value')==1&&get(handles.checkbox6_SC,'Value')==1
                        acthreshold1=str2num(get(handles.edit21_SC,'string'));
                        acthreshold2=str2num(get(handles.edit40_SC,'string'));
                        kuthreshold1=str2num(get(handles.edit34_SC,'string'));
                        kuthreshold2=str2num(get(handles.edit42_SC,'string'));
                        [YfastICA,W] = ICA_threshold_fastica(Ybss,WC,Wica,P_ica,acthreshold1,acthreshold2,10000,10000,kuthreshold1,kuthreshold2,10000,10000);
                    end
                     if  get(handles.checkbox4_SC,'Value')==1&&get(handles.checkbox7_SC,'Value')==1
                        acthreshold1=str2num(get(handles.edit21_SC,'string'));
                        acthreshold2=str2num(get(handles.edit40_SC,'string'));
                        vathreshold1=str2num(get(handles.edit36_SC,'string'));
                        vathreshold2=str2num(get(handles.edit43_SC,'string'));
                        [YfastICA,W] = ICA_threshold_fastica(Ybss,WC,Wica,P_ica,acthreshold1,acthreshold2,10000,10000,10000,10000, vathreshold1, vathreshold2);
                    end
                    if  get(handles.checkbox5_SC,'Value')==1&&get(handles.checkbox6_SC,'Value')==1
                        enthreshold1=str2num(get(handles.edit33_SC,'string'));
                        enthreshold2=str2num(get(handles.edit41_SC,'string'));
                        kuthreshold1=str2num(get(handles.edit34_SC,'string'));
                        kuthreshold2=str2num(get(handles.edit42_SC,'string'));
                        [YfastICA,W] = ICA_threshold_fastica(Ybss,WC,Wica,P_ica,0,0,enthreshold1,enthreshold2,kuthreshold1,kuthreshold2,10000,10000);
                    end
                    if  get(handles.checkbox5_SC,'Value')==1&&get(handles.checkbox7_SC,'Value')==1
                        enthreshold1=str2num(get(handles.edit33_SC,'string'));
                        enthreshold2=str2num(get(handles.edit41_SC,'string'));
                        vathreshold1=str2num(get(handles.edit36_SC,'string'));
                        vathreshold2=str2num(get(handles.edit43_SC,'string'));
                        [YfastICA,W] = ICA_threshold_fastica(Ybss,WC,Wica,P_ica,0,0,enthreshold1,enthreshold2,10000,10000,vathreshold1,vathreshold2);
                    end
                      if  get(handles.checkbox6_SC,'Value')==1&&get(handles.checkbox7_SC,'Value')==1
                        kuthreshold1=str2num(get(handles.edit34_SC,'string'));
                        kuthreshold2=str2num(get(handles.edit42_SC,'string'));
                        vathreshold1=str2num(get(handles.edit36_SC,'string'));
                        vathreshold2=str2num(get(handles.edit43_SC,'string'));
                        [YfastICA,W] = ICA_threshold_fastica(Ybss,WC,Wica,P_ica,0,0,10000,10000,kuthreshold1,kuthreshold2,vathreshold1,vathreshold2);
                    end
                    if  get(handles.checkbox4_SC,'Value')==1&&get(handles.checkbox5_SC,'Value')==1&&get(handles.checkbox6_SC,'Value')==1
                        acthreshold1=str2num(get(handles.edit21_SC,'string'));
                        acthreshold2=str2num(get(handles.edit40_SC,'string'));
                        enthreshold1=str2num(get(handles.edit33_SC,'string'));
                        enthreshold2=str2num(get(handles.edit41_SC,'string'));
                        kuthreshold1=str2num(get(handles.edit34_SC,'string'));
                        kuthreshold2=str2num(get(handles.edit42_SC,'string'));
                        [YfastICA,W] = ICA_threshold_fastica(Ybss,WC,Wica,P_ica,acthreshold1,acthreshold2,enthreshold1,enthreshold2,kuthreshold1,kuthreshold2,10000,10000);
                    end
                    if  get(handles.checkbox4_SC,'Value')==1&&get(handles.checkbox6_SC,'Value')==1&&get(handles.checkbox7_SC,'Value')==1
                        acthreshold1=str2num(get(handles.edit21_SC,'string'));
                        acthreshold2=str2num(get(handles.edit40_SC,'string'));
                        kuthreshold1=str2num(get(handles.edit34_SC,'string'));
                        kuthreshold2=str2num(get(handles.edit42_SC,'string'));
                        vathreshold1=str2num(get(handles.edit36_SC,'string'));
                        vathreshold2=str2num(get(handles.edit43_SC,'string'));
                        [YfastICA,W] = ICA_threshold_fastica(Ybss,WC,Wica,P_ica,acthreshold1,acthreshold2,10000,10000,kuthreshold1,kuthreshold2,vathreshold1,vathreshold2);
                    end
                     if  get(handles.checkbox5_SC,'Value')==1&&get(handles.checkbox6_SC,'Value')==1&&get(handles.checkbox7_SC,'Value')==1
                        enthreshold1=str2num(get(handles.edit33_SC,'string'));
                        enthreshold2=str2num(get(handles.edit41_SC,'string'));
                        kuthreshold1=str2num(get(handles.edit34_SC,'string'));
                        kuthreshold2=str2num(get(handles.edit42_SC,'string'));
                        vathreshold1=str2num(get(handles.edit36_SC,'string'));
                        vathreshold2=str2num(get(handles.edit43_SC,'string'));
                        [YfastICA,W] = ICA_threshold_fastica(Ybss,WC,Wica,P_ica,0,0,enthreshold1,enthreshold2,kuthreshold1,kuthreshold2,vathreshold1,vathreshold2);
                     end
                         if  get(handles.checkbox4_SC,'Value')==1&&get(handles.checkbox5_SC,'Value')==1&&get(handles.checkbox6_SC,'Value')==1&&get(handles.checkbox7_SC,'Value')==1
                        acthreshold1=str2num(get(handles.edit21_SC,'string'));
                        acthreshold2=str2num(get(handles.edit40_SC,'string'));
                         enthreshold1=str2num(get(handles.edit33_SC,'string'));
                        enthreshold2=str2num(get(handles.edit41_SC,'string'));
                        kuthreshold1=str2num(get(handles.edit34_SC,'string'));
                        kuthreshold2=str2num(get(handles.edit42_SC,'string'));
                        vathreshold1=str2num(get(handles.edit36_SC,'string'));
                        vathreshold2=str2num(get(handles.edit43_SC,'string'));
                        [YfastICA,W] = ICA_threshold_fastica(Ybss,WC,Wica,P_ica,acthreshold1,acthreshold2,enthreshold1,enthreshold2,kuthreshold1,kuthreshold2,vathreshold1,vathreshold2);
                     end
                    [Youtput] = singleEEG_recon(YfastICA,fs);
                case 2  %SOBI
                    if get(handles.checkbox4_SC,'Value')==1
                        acthreshold1=str2num(get(handles.edit21_SC,'string'));
                        acthreshold2=str2num(get(handles.edit40_SC,'string'));
                        [Ysobi,W] = ICA_threshold_sobi(Ybss,WC,Wica,P_ica,acthreshold1,acthreshold2,10000,10000,10000,10000,10000,10000);
                    end
                    if get(handles.checkbox5_SC,'Value')==1 ;
                        enthreshold1=str2num(get(handles.edit33_SC,'string'));
                        enthreshold2=str2num(get(handles.edit41_SC,'string'));
                        [Ysobi,W] = ICA_threshold_sobi(Ybss,WC,Wica,P_ica,0,0,enthreshold1,enthreshold2,10000,10000,10000,10000);
                    end
                    if get(handles.checkbox6_SC,'Value')==1
                        kuthreshold1=str2num(get(handles.edit34_SC,'string'));
                        kuthreshold2=str2num(get(handles.edit42_SC,'string'));
                        [Ysobi,W] = ICA_threshold_sobi(Ybss,WC,Wica,P_ica,0,0,10000,10000,kuthreshold1,kuthreshold2,10000,10000);
                    end
                     if get(handles.checkbox7_SC,'Value')==1
                        vathreshold1=str2num(get(handles.edit36_SC,'string'));
                        vathreshold2=str2num(get(handles.edit43_SC,'string'));
                        [Ysobi,W] = ICA_threshold_sobi(Ybss,WC,Wica,P_ica,0,0,10000,10000,10000,10000,vathreshold1,vathreshold2);
                    end
                    if  get(handles.checkbox4_SC,'Value')==1&&get(handles.checkbox5_SC,'Value')==1
                        acthreshold1=str2num(get(handles.edit21_SC,'string'));
                        acthreshold2=str2num(get(handles.edit40_SC,'string'));
                        enthreshold1=str2num(get(handles.edit33_SC,'string'));
                        enthreshold2=str2num(get(handles.edit41_SC,'string'));
                        [Ysobi,W] = ICA_threshold_sobi(Ybss,WC,Wica,P_ica, acthreshold1,acthreshold2, enthreshold1, enthreshold2,10000,10000,10000,10000);
                    end
                    if  get(handles.checkbox4_SC,'Value')==1&&get(handles.checkbox6_SC,'Value')==1
                        acthreshold1=str2num(get(handles.edit21_SC,'string'));
                        acthreshold2=str2num(get(handles.edit40_SC,'string'));
                        kuthreshold1=str2num(get(handles.edit34_SC,'string'));
                        kuthreshold2=str2num(get(handles.edit42_SC,'string'));
                        [Ysobi,W] = ICA_threshold_sobi(Ybss,WC,Wica,P_ica,acthreshold1,acthreshold2,10000,10000,kuthreshold1,kuthreshold2,10000,10000);
                    end
                     if  get(handles.checkbox4_SC,'Value')==1&&get(handles.checkbox7_SC,'Value')==1
                        acthreshold1=str2num(get(handles.edit21_SC,'string'));
                        acthreshold2=str2num(get(handles.edit40_SC,'string'));
                        vathreshold1=str2num(get(handles.edit36_SC,'string'));
                        vathreshold2=str2num(get(handles.edit43_SC,'string'));
                        [Ysobi,W] = ICA_threshold_sobi(Ybss,WC,Wica,P_ica,acthreshold1,acthreshold2,10000,10000,10000,10000,vathreshold1,vathreshold2);
                    end
                    if  get(handles.checkbox5_SC,'Value')==1&&get(handles.checkbox6_SC,'Value')==1
                        enthreshold1=str2num(get(handles.edit33_SC,'string'));
                        enthreshold2=str2num(get(handles.edit41_SC,'string'));
                        kuthreshold1=str2num(get(handles.edit34_SC,'string'));
                        kuthreshold2=str2num(get(handles.edit42_SC,'string'));
                        [Ysobi,W] = ICA_threshold_sobi(Ybss,WC,Wica,P_ica,0,0,enthreshold1,enthreshold2,kuthreshold1,kuthreshold2,10000,10000);
                    end
                     if  get(handles.checkbox5_SC,'Value')==1&&get(handles.checkbox7_SC,'Value')==1
                        enthreshold1=str2num(get(handles.edit33_SC,'string'));
                        enthreshold2=str2num(get(handles.edit41_SC,'string'));
                        vathreshold1=str2num(get(handles.edit36_SC,'string'));
                        vathreshold2=str2num(get(handles.edit43_SC,'string'));
                        [Ysobi,W] = ICA_threshold_sobi(Ybss,WC,Wica,P_ica,0,0,enthreshold1,enthreshold2,10000,10000,vathreshold1,vathreshold2);
                     end
                      if  get(handles.checkbox6_SC,'Value')==1&&get(handles.checkbox7_SC,'Value')==1
                        kuthreshold1=str2num(get(handles.edit34_SC,'string'));
                        kuthreshold2=str2num(get(handles.edit42_SC,'string'));
                        vathreshold1=str2num(get(handles.edit36_SC,'string'));
                        vathreshold2=str2num(get(handles.edit43_SC,'string'));
                        [Ysobi,W] = ICA_threshold_sobi(Ybss,WC,Wica,P_ica,0,0,10000,10000,kuthreshold1,kuthreshold2,vathreshold1,vathreshold2);
                     end
                    if  get(handles.checkbox4_SC,'Value')==1&&get(handles.checkbox5_SC,'Value')==1&&get(handles.checkbox6_SC,'Value')==1
                        acthreshold1=str2num(get(handles.edit21_SC,'string'));
                        acthreshold2=str2num(get(handles.edit40_SC,'string'));
                        enthreshold1=str2num(get(handles.edit33_SC,'string'));
                        enthreshold2=str2num(get(handles.edit41_SC,'string'));
                        kuthreshold1=str2num(get(handles.edit34_SC,'string'));
                        kuthreshold2=str2num(get(handles.edit42_SC,'string'));
                        [Ysobi,W] = ICA_threshold_sobi(Ybss,WC,Wica,P_ica,acthreshold1,acthreshold2, enthreshold1, enthreshold2, kuthreshold1, kuthreshold2,10000,10000);
                    end
                      if  get(handles.checkbox4_SC,'Value')==1&&get(handles.checkbox5_SC,'Value')==1&&get(handles.checkbox7_SC,'Value')==1
                        acthreshold1=str2num(get(handles.edit21_SC,'string'));
                        acthreshold2=str2num(get(handles.edit40_SC,'string'));
                        enthreshold1=str2num(get(handles.edit33_SC,'string'));
                        enthreshold2=str2num(get(handles.edit41_SC,'string'));
                       vathreshold1=str2num(get(handles.edit36_SC,'string'));
                        vathreshold2=str2num(get(handles.edit43_SC,'string'));
                        [Ysobi,W] = ICA_threshold_sobi(Ybss,WC,Wica,P_ica,acthreshold1,acthreshold2, enthreshold1, enthreshold2, 10000, 10000,vathreshold1,vathreshold2);
                      end
                          if  get(handles.checkbox4_SC,'Value')==1&&get(handles.checkbox6_SC,'Value')==1&&get(handles.checkbox7_SC,'Value')==1
                        acthreshold1=str2num(get(handles.edit21_SC,'string'));
                        acthreshold2=str2num(get(handles.edit40_SC,'string'));
                       kuthreshold1=str2num(get(handles.edit34_SC,'string'));
                        kuthreshold2=str2num(get(handles.edit42_SC,'string'));
                       vathreshold1=str2num(get(handles.edit36_SC,'string'));
                        vathreshold2=str2num(get(handles.edit43_SC,'string'));
                        [Ysobi,W] = ICA_threshold_sobi(Ybss,WC,Wica,P_ica,acthreshold1,acthreshold2, 10000, 10000, kuthreshold1, kuthreshold2,vathreshold1,vathreshold2);
                          end
                           if  get(handles.checkbox5_SC,'Value')==1&&get(handles.checkbox6_SC,'Value')==1&&get(handles.checkbox7_SC,'Value')==1
                        enthreshold1=str2num(get(handles.edit33_SC,'string'));
                        enthreshold2=str2num(get(handles.edit41_SC,'string'));
                       kuthreshold1=str2num(get(handles.edit34_SC,'string'));
                        kuthreshold2=str2num(get(handles.edit42_SC,'string'));
                       vathreshold1=str2num(get(handles.edit36_SC,'string'));
                        vathreshold2=str2num(get(handles.edit43_SC,'string'));
                        [Ysobi,W] = ICA_threshold_sobi(Ybss,WC,Wica,P_ica,0,0, enthreshold1, enthreshold2, kuthreshold1, kuthreshold2,vathreshold1,vathreshold2);
                           end
                           if  get(handles.checkbox4_SC,'Value')==1&&get(handles.checkbox5_SC,'Value')==1&&get(handles.checkbox6_SC,'Value')==1&&get(handles.checkbox7_SC,'Value')==1
                               acthreshold1=str2num(get(handles.edit21_SC,'string'));
                               acthreshold2=str2num(get(handles.edit40_SC,'string'));
                               enthreshold1=str2num(get(handles.edit33_SC,'string'));
                               enthreshold2=str2num(get(handles.edit41_SC,'string'));
                               kuthreshold1=str2num(get(handles.edit34_SC,'string'));
                               kuthreshold2=str2num(get(handles.edit42_SC,'string'));
                               vathreshold1=str2num(get(handles.edit36_SC,'string'));
                               vathreshold2=str2num(get(handles.edit43_SC,'string'));
                               [Ysobi,W] = ICA_threshold_sobi(Ybss,WC,Wica,P_ica,acthreshold1,acthreshold2, enthreshold1, enthreshold2, kuthreshold1, kuthreshold2,vathreshold1,vathreshold2);
                           end
                    [Youtput] = singleEEG_recon(Ysobi,fs);
                case 3  %jade
                    if get(handles.checkbox4_SC,'Value')==1
                        acthreshold1=str2num(get(handles.edit21_SC,'string'));
                        acthreshold2=str2num(get(handles.edit40_SC,'string'));
                        [Yjade,W] = ICA_threshold_jade(Ybss,WC,B,P_ica, acthreshold1,acthreshold2,10000,10000,10000,10000,10000,10000) ;
                    end
                    if get(handles.checkbox5_SC,'Value')==1 ;
                        enthreshold1=str2num(get(handles.edit33_SC,'string'));
                        enthreshold2=str2num(get(handles.edit41_SC,'string'));
                        [Yjade,W] = ICA_threshold_jade(Ybss,WC,B,P_ica,0,0,enthreshold1,enthreshold2,10000,10000,10000,10000) ;
                    end
                    if get(handles.checkbox6_SC,'Value')==1
                        kuthreshold1=str2num(get(handles.edit34_SC,'string'));
                        kuthreshold2=str2num(get(handles.edit42_SC,'string'));
                        [Yjade,W] = ICA_threshold_jade(Ybss,WC,B,P_ica,0,0,10000,10000,kuthreshold1,kuthreshold2,10000,10000) ;
                    end
                     if get(handles.checkbox7_SC,'Value')==1
                        vathreshold1=str2num(get(handles.edit36_SC,'string'));
                        vathreshold2=str2num(get(handles.edit43_SC,'string'));
                        [Yjade,W] = ICA_threshold_jade(Ybss,WC,B,P_ica,0,0,10000,10000,10000,10000,vathreshold1,vathreshold2) ;
                    end
                    if  get(handles.checkbox4_SC,'Value')==1&&get(handles.checkbox5_SC,'Value')==1
                        acthreshold1=str2num(get(handles.edit21_SC,'string'));
                        acthreshold2=str2num(get(handles.edit40_SC,'string'));
                        enthreshold1=str2num(get(handles.edit33_SC,'string'));
                        enthreshold2=str2num(get(handles.edit41_SC,'string'));
                        [Yjade,W] = ICA_threshold_jade(Ybss,WC,B,P_ica,acthreshold1,acthreshold2, enthreshold1,enthreshold2,10000,10000) ;
                    end
                    if  get(handles.checkbox4_SC,'Value')==1&&get(handles.checkbox6_SC,'Value')==1
                        acthreshold1=str2num(get(handles.edit21_SC,'string'));
                        acthreshold2=str2num(get(handles.edit40_SC,'string'));
                        kuthreshold1=str2num(get(handles.edit34_SC,'string'));
                        kuthreshold2=str2num(get(handles.edit42_SC,'string'));
                        [Yjade,W] = ICA_threshold_jade(Ybss,WC,B,P_ica,acthreshold1,acthreshold2,10000,10000, kuthreshold1,kuthreshold2,10000,10000) ;
                    end
                     if  get(handles.checkbox4_SC,'Value')==1&&get(handles.checkbox7_SC,'Value')==1
                        acthreshold1=str2num(get(handles.edit21_SC,'string'));
                        acthreshold2=str2num(get(handles.edit40_SC,'string'));
                        vathreshold1=str2num(get(handles.edit36_SC,'string'));
                        vathreshold2=str2num(get(handles.edit43_SC,'string'));
                        [Yjade,W] = ICA_threshold_jade(Ybss,WC,B,P_ica,acthreshold1,acthreshold2,10000,10000, 10000,10000,vathreshold1,vathreshold2) ;
                    end
                    if  get(handles.checkbox5_SC,'Value')==1&&get(handles.checkbox6_SC,'Value')==1
                        enthreshold1=str2num(get(handles.edit33_SC,'string'));
                        enthreshold2=str2num(get(handles.edit41_SC,'string'));
                        kuthreshold1=str2num(get(handles.edit34_SC,'string'));
                        kuthreshold2=str2num(get(handles.edit42_SC,'string'));
                        [Yjade,W] = ICA_threshold_jade(Ybss,WC,B,P_ica,0,0,enthreshold1,enthreshold2, kuthreshold1,kuthreshold2,10000,10000) ;
                    end
                       if  get(handles.checkbox5_SC,'Value')==1&&get(handles.checkbox7_SC,'Value')==1
                        enthreshold1=str2num(get(handles.edit33_SC,'string'));
                        enthreshold2=str2num(get(handles.edit41_SC,'string'));
                         vathreshold1=str2num(get(handles.edit36_SC,'string'));
                        vathreshold2=str2num(get(handles.edit43_SC,'string'));
                        [Yjade,W] = ICA_threshold_jade(Ybss,WC,B,P_ica,0,0,enthreshold1,enthreshold2, 10000,10000,vathreshold1,vathreshold2) ;
                       end
                     if  get(handles.checkbox6_SC,'Value')==1&&get(handles.checkbox7_SC,'Value')==1
                        kuthreshold1=str2num(get(handles.edit34_SC,'string'));
                        kuthreshold2=str2num(get(handles.edit42_SC,'string'));
                         vathreshold1=str2num(get(handles.edit36_SC,'string'));
                        vathreshold2=str2num(get(handles.edit43_SC,'string'));
                        [Yjade,W] = ICA_threshold_jade(Ybss,WC,B,P_ica,0,0,10000,10000, kuthreshold1,kuthreshold2,vathreshold1,vathreshold2) ;
                    end
                    if  get(handles.checkbox4_SC,'Value')==1&&get(handles.checkbox5_SC,'Value')==1&&get(handles.checkbox7_SC,'Value')==1
                        acthreshold1=str2num(get(handles.edit21_SC,'string'));
                        acthreshold2=str2num(get(handles.edit40_SC,'string'));
                        enthreshold1=str2num(get(handles.edit33_SC,'string'));
                        enthreshold2=str2num(get(handles.edit41_SC,'string'));
                       vathreshold1=str2num(get(handles.edit36_SC,'string'));
                        vathreshold2=str2num(get(handles.edit43_SC,'string'));
                        [Yjade,W] = ICA_threshold_jade(Ybss,WC,B,P_ica,acthreshold1,acthreshold2,enthreshold1,enthreshold2, 10000,10000,vathreshold1,vathreshold2) ;
                    end
                       if  get(handles.checkbox4_SC,'Value')==1&&get(handles.checkbox5_SC,'Value')==1&&get(handles.checkbox6_SC,'Value')==1
                        acthreshold1=str2num(get(handles.edit21_SC,'string'));
                        acthreshold2=str2num(get(handles.edit40_SC,'string'));
                        enthreshold1=str2num(get(handles.edit33_SC,'string'));
                        enthreshold2=str2num(get(handles.edit41_SC,'string'));
                        kuthreshold1=str2num(get(handles.edit34_SC,'string'));
                        kuthreshold2=str2num(get(handles.edit42_SC,'string'));
                        [Yjade,W] = ICA_threshold_jade(Ybss,WC,B,P_ica,acthreshold1,acthreshold2,enthreshold1,enthreshold2, kuthreshold1,kuthreshold2,10000,10000) ;
                       end
                        if  get(handles.checkbox4_SC,'Value')==1&&get(handles.checkbox6_SC,'Value')==1&&get(handles.checkbox7_SC,'Value')==1
                        acthreshold1=str2num(get(handles.edit21_SC,'string'));
                        acthreshold2=str2num(get(handles.edit40_SC,'string'));
                      kuthreshold1=str2num(get(handles.edit34_SC,'string'));
                        kuthreshold2=str2num(get(handles.edit42_SC,'string'));
                       vathreshold1=str2num(get(handles.edit36_SC,'string'));
                        vathreshold2=str2num(get(handles.edit43_SC,'string'));
                        [Yjade,W] = ICA_threshold_jade(Ybss,WC,B,P_ica,acthreshold1,acthreshold2,10000,10000, kuthreshold1,kuthreshold2,vathreshold1,vathreshold2) ;
                        end
                        if  get(handles.checkbox5_SC,'Value')==1&&get(handles.checkbox6_SC,'Value')==1&&get(handles.checkbox7_SC,'Value')==1
                         enthreshold1=str2num(get(handles.edit33_SC,'string'));
                        enthreshold2=str2num(get(handles.edit41_SC,'string'));
                      kuthreshold1=str2num(get(handles.edit34_SC,'string'));
                        kuthreshold2=str2num(get(handles.edit42_SC,'string'));
                       vathreshold1=str2num(get(handles.edit36_SC,'string'));
                        vathreshold2=str2num(get(handles.edit43_SC,'string'));
                        [Yjade,W] = ICA_threshold_jade(Ybss,WC,B,P_ica,0,0,enthreshold1,enthreshold2, kuthreshold1,kuthreshold2,vathreshold1,vathreshold2) ;
                        end
                        if  get(handles.checkbox4_SC,'Value')==1&&get(handles.checkbox5_SC,'Value')==1&&get(handles.checkbox6_SC,'Value')==1&&get(handles.checkbox7_SC,'Value')==1
                            acthreshold1=str2num(get(handles.edit21_SC,'string'));
                            acthreshold2=str2num(get(handles.edit40_SC,'string'));
                            enthreshold1=str2num(get(handles.edit33_SC,'string'));
                            enthreshold2=str2num(get(handles.edit41_SC,'string'));
                            kuthreshold1=str2num(get(handles.edit34_SC,'string'));
                            kuthreshold2=str2num(get(handles.edit42_SC,'string'));
                            vathreshold1=str2num(get(handles.edit36_SC,'string'));
                            vathreshold2=str2num(get(handles.edit43_SC,'string'));
                            [Yjade,W] = ICA_threshold_jade(Ybss,WC,B,P_ica,acthreshold1,acthreshold2,enthreshold1,enthreshold2, kuthreshold1,kuthreshold2,vathreshold1,vathreshold2) ;
                        end
                    [Youtput] = singleEEG_recon(Yjade,fs);
                      case 4  %infomax
                    if get(handles.checkbox4_SC,'Value')==1
                        acthreshold1=str2num(get(handles.edit21_SC,'string'));
                        acthreshold2=str2num(get(handles.edit40_SC,'string'));
                        [Yinfomax,W] = ICA_threshold_infomax(Ybss,WC,Wica,P_ica,acthreshold1,acthreshold2,10000,10000,10000,10000,10000,10000);
                    end
                    if get(handles.checkbox5_SC,'Value')==1 ;
                        enthreshold1=str2num(get(handles.edit33_SC,'string'));
                        enthreshold2=str2num(get(handles.edit41_SC,'string'));
                        [Yinfomax,W] = ICA_threshold_infomax(Ybss,WC,Wica,P_ica,0,0,enthreshold1,enthreshold2,10000,10000,10000,10000);
                    end
                    if get(handles.checkbox6_SC,'Value')==1
                        kuthreshold1=str2num(get(handles.edit34_SC,'string'));
                        kuthreshold2=str2num(get(handles.edit42_SC,'string'));
                        [Yinfomax,W] = ICA_threshold_infomax(Ybss,WC,Wica,P_ica,0,0,10000,10000,kuthreshold1,kuthreshold2,10000,10000);
                    end
                    if get(handles.checkbox7_SC,'Value')==1
                        vathreshold1=str2num(get(handles.edit36_SC,'string'));
                        vathreshold2=str2num(get(handles.edit43_SC,'string'));
                        [Yinfomax,W] = ICA_threshold_infomax(Ybss,WC,Wica,P_ica,0,0,10000,10000,10000,10000,vathreshold1,vathreshold2);
                    end
                    if  get(handles.checkbox4_SC,'Value')==1&&get(handles.checkbox5_SC,'Value')==1
                        acthreshold1=str2num(get(handles.edit21_SC,'string'));
                        acthreshold2=str2num(get(handles.edit40_SC,'string'));
                        enthreshold1=str2num(get(handles.edit33_SC,'string'));
                        enthreshold2=str2num(get(handles.edit41_SC,'string'));
                        [Yinfomax,W] = ICA_threshold_infomax(Ybss,WC,Wica,P_ica, acthreshold1,acthreshold2, enthreshold1, enthreshold2,10000,10000,10000,10000);
                    end
                    if  get(handles.checkbox4_SC,'Value')==1&&get(handles.checkbox6_SC,'Value')==1
                        acthreshold1=str2num(get(handles.edit21_SC,'string'));
                        acthreshold2=str2num(get(handles.edit40_SC,'string'));
                        kuthreshold1=str2num(get(handles.edit34_SC,'string'));
                        kuthreshold2=str2num(get(handles.edit42_SC,'string'));
                        [Yinfomax,W] = ICA_threshold_infomax(Ybss,WC,Wica,P_ica,acthreshold1,acthreshold2,10000,10000,kuthreshold1,kuthreshold2,10000,10000);
                    end
                      if  get(handles.checkbox4_SC,'Value')==1&&get(handles.checkbox7_SC,'Value')==1
                        acthreshold1=str2num(get(handles.edit21_SC,'string'));
                        acthreshold2=str2num(get(handles.edit40_SC,'string'));
                      vathreshold1=str2num(get(handles.edit36_SC,'string'));
                        vathreshold2=str2num(get(handles.edit43_SC,'string'));
                        [Yinfomax,W] = ICA_threshold_infomax(Ybss,WC,Wica,P_ica,acthreshold1,acthreshold2,10000,10000,10000,10000,vathreshold1,vathreshold2);
                    end
                    if  get(handles.checkbox5_SC,'Value')==1&&get(handles.checkbox6_SC,'Value')==1
                        enthreshold1=str2num(get(handles.edit33_SC,'string'));
                        enthreshold2=str2num(get(handles.edit41_SC,'string'));
                        kuthreshold1=str2num(get(handles.edit34_SC,'string'));
                        kuthreshold2=str2num(get(handles.edit42_SC,'string'));
                        [Yinfomax,W] = ICA_threshold_infomax(Ybss,WC,Wica,P_ica,0,0,enthreshold1,enthreshold2,kuthreshold1,kuthreshold2,10000,10000);
                    end
                      if  get(handles.checkbox5_SC,'Value')==1&&get(handles.checkbox7_SC,'Value')==1
                        enthreshold1=str2num(get(handles.edit33_SC,'string'));
                        enthreshold2=str2num(get(handles.edit41_SC,'string'));
                     vathreshold1=str2num(get(handles.edit36_SC,'string'));
                        vathreshold2=str2num(get(handles.edit43_SC,'string'));
                        [Yinfomax,W] = ICA_threshold_infomax(Ybss,WC,Wica,P_ica,0,0,enthreshold1,enthreshold2,10000,10000,vathreshold1,vathreshold2);
                      end
                      if  get(handles.checkbox6_SC,'Value')==1&&get(handles.checkbox7_SC,'Value')==1
                       kuthreshold1=str2num(get(handles.edit34_SC,'string'));
                        kuthreshold2=str2num(get(handles.edit42_SC,'string'));
                     vathreshold1=str2num(get(handles.edit36_SC,'string'));
                        vathreshold2=str2num(get(handles.edit43_SC,'string'));
                        [Yinfomax,W] = ICA_threshold_infomax(Ybss,WC,Wica,P_ica,0,0,10000,10000,kuthreshold1,kuthreshold2,vathreshold1,vathreshold2);
                      end
                    if  get(handles.checkbox4_SC,'Value')==1&&get(handles.checkbox5_SC,'Value')==1&&get(handles.checkbox6_SC,'Value')==1
                        acthreshold1=str2num(get(handles.edit21_SC,'string'));
                        acthreshold2=str2num(get(handles.edit40_SC,'string'));
                        enthreshold1=str2num(get(handles.edit33_SC,'string'));
                        enthreshold2=str2num(get(handles.edit41_SC,'string'));
                        kuthreshold1=str2num(get(handles.edit34_SC,'string'));
                        kuthreshold2=str2num(get(handles.edit42_SC,'string'));
                        [Yinfomax,W] = ICA_threshold_infomax(Ybss,WC,Wica,P_ica,acthreshold1,acthreshold2, enthreshold1, enthreshold2, kuthreshold1, kuthreshold2,10000,10000);
                    end
                       if  get(handles.checkbox4_SC,'Value')==1&&get(handles.checkbox5_SC,'Value')==1&&get(handles.checkbox7_SC,'Value')==1
                        acthreshold1=str2num(get(handles.edit21_SC,'string'));
                        acthreshold2=str2num(get(handles.edit40_SC,'string'));
                        enthreshold1=str2num(get(handles.edit33_SC,'string'));
                        enthreshold2=str2num(get(handles.edit41_SC,'string'));
                        vathreshold1=str2num(get(handles.edit36_SC,'string'));
                        vathreshold2=str2num(get(handles.edit43_SC,'string'));
                        [Yinfomax,W] = ICA_threshold_infomax(Ybss,WC,Wica,P_ica,acthreshold1,acthreshold2, enthreshold1, enthreshold2, 10000, 10000,vathreshold1,vathreshold2);
                       end
                      if  get(handles.checkbox5_SC,'Value')==1&&get(handles.checkbox6_SC,'Value')==1&&get(handles.checkbox7_SC,'Value')==1
                       enthreshold1=str2num(get(handles.edit33_SC,'string'));
                        enthreshold2=str2num(get(handles.edit41_SC,'string'));
                        kuthreshold1=str2num(get(handles.edit34_SC,'string'));
                        kuthreshold2=str2num(get(handles.edit42_SC,'string'));
                        vathreshold1=str2num(get(handles.edit36_SC,'string'));
                        vathreshold2=str2num(get(handles.edit43_SC,'string'));
                        [Yinfomax,W] = ICA_threshold_infomax(Ybss,WC,Wica,P_ica,0,0,enthreshold1, enthreshold2, kuthreshold1, kuthreshold2,vathreshold1,vathreshold2);
                      end
                       if  get(handles.checkbox4_SC,'Value')==1&&get(handles.checkbox6_SC,'Value')==1&&get(handles.checkbox7_SC,'Value')==1
                        acthreshold1=str2num(get(handles.edit21_SC,'string'));
                        acthreshold2=str2num(get(handles.edit40_SC,'string'));
                        kuthreshold1=str2num(get(handles.edit34_SC,'string'));
                        kuthreshold2=str2num(get(handles.edit42_SC,'string'));
                        vathreshold1=str2num(get(handles.edit36_SC,'string'));
                        vathreshold2=str2num(get(handles.edit43_SC,'string'));
                        [Yinfomax,W] = ICA_threshold_infomax(Ybss,WC,Wica,P_ica,acthreshold1,acthreshold2, 10000, 10000, kuthreshold1, kuthreshold2,vathreshold1,vathreshold2);
                       end
                       if  get(handles.checkbox4_SC,'Value')==1&&get(handles.checkbox5_SC,'Value')==1&&get(handles.checkbox6_SC,'Value')==1&&get(handles.checkbox7_SC,'Value')==1
                        acthreshold1=str2num(get(handles.edit21_SC,'string'));
                        acthreshold2=str2num(get(handles.edit40_SC,'string'));
                        enthreshold1=str2num(get(handles.edit33_SC,'string'));
                        enthreshold2=str2num(get(handles.edit41_SC,'string'));
                        kuthreshold1=str2num(get(handles.edit34_SC,'string'));
                        kuthreshold2=str2num(get(handles.edit42_SC,'string'));
                        vathreshold1=str2num(get(handles.edit36_SC,'string'));
                        vathreshold2=str2num(get(handles.edit43_SC,'string'));
                        [Yinfomax,W] = ICA_threshold_infomax(Ybss,WC,Wica,P_ica,acthreshold1,acthreshold2,enthreshold1, enthreshold2, kuthreshold1, kuthreshold2,vathreshold1,vathreshold2);
                      end
                    [Youtput] = singleEEG_recon(Yinfomax,fs);
            end
        case 2                          %CCA
            if get(handles.checkbox4_SC,'Value')==1
                acthreshold1=str2num(get(handles.edit21_SC,'string'));
                acthreshold2=str2num(get(handles.edit40_SC,'string'));
                [Ycca,W] = CCA_threshold(Ybss,B,WC,acthreshold1,acthreshold2,10000,10000,10000,10000,10000,10000);
            end
            if get(handles.checkbox5_SC,'Value')==1 ;
                enthreshold1=str2num(get(handles.edit33_SC,'string'));
                enthreshold2=str2num(get(handles.edit41_SC,'string'));
                [Ycca,W] = CCA_threshold(Ybss,B,WC,0,0,enthreshold1,enthreshold2,10000,10000,10000,10000);
            end
            if get(handles.checkbox6_SC,'Value')==1
                kuthreshold1=str2num(get(handles.edit34_SC,'string'));
                kuthreshold2=str2num(get(handles.edit42_SC,'string'));
                [Ycca,W] = CCA_threshold(Ybss,B,WC,0,0,10000,10000,kuthreshold1,kuthreshold2,10000,10000);
            end
            if get(handles.checkbox7_SC,'Value')==1
                vathreshold1=str2num(get(handles.edit36_SC,'string'));
                 vathreshold2=str2num(get(handles.edit43_SC,'string'));
                [Ycca,W] = CCA_threshold(Ybss,B,WC,0,0,10000,10000,10000,10000,vathreshold1,vathreshold2);
            end
            if  get(handles.checkbox4_SC,'Value')==1&&get(handles.checkbox5_SC,'Value')==1
                acthreshold1=str2num(get(handles.edit21_SC,'string'));
                acthreshold2=str2num(get(handles.edit40_SC,'string'));
                enthreshold1=str2num(get(handles.edit33_SC,'string'));
                enthreshold2=str2num(get(handles.edit41_SC,'string'));
                [Ycca,W] = CCA_threshold(Ybss,B,WC,acthreshold1,acthreshold2,enthreshold1,enthreshold2,10000,10000,10000,10000);
            end
            if  get(handles.checkbox4_SC,'Value')==1&&get(handles.checkbox6_SC,'Value')==1
                acthreshold1=str2num(get(handles.edit21_SC,'string'));
                acthreshold2=str2num(get(handles.edit40_SC,'string'));
                kuthreshold1=str2num(get(handles.edit34_SC,'string'));
                kuthreshold2=str2num(get(handles.edit42_SC,'string'));
                [Ycca,W] = CCA_threshold(Ybss,B,WC,acthreshold1,acthreshold2,10000,10000,kuthreshold1,kuthreshold2,10000,10000);
            end
            if  get(handles.checkbox4_SC,'Value')==1&&get(handles.checkbox7_SC,'Value')==1
                acthreshold1=str2num(get(handles.edit21_SC,'string'));
                acthreshold2=str2num(get(handles.edit40_SC,'string'));
               vathreshold1=str2num(get(handles.edit36_SC,'string'));
                 vathreshold2=str2num(get(handles.edit43_SC,'string'));
                [Ycca,W] = CCA_threshold(Ybss,B,WC,acthreshold1,acthreshold2,10000,10000,10000,10000,vathreshold1,vathreshold2);
            end
            if  get(handles.checkbox5_SC,'Value')==1&&get(handles.checkbox6_SC,'Value')==1
                enthreshold1=str2num(get(handles.edit33_SC,'string'));
                enthreshold2=str2num(get(handles.edit41_SC,'string'));
                kuthreshold1=str2num(get(handles.edit34_SC,'string'));
                kuthreshold2=str2num(get(handles.edit42_SC,'string'));
                [Ycca,W] = CCA_threshold(Ybss,B,WC,0,0,enthreshold1,enthreshold2, kuthreshold1, kuthreshold2,10000,10000);
            end
             if  get(handles.checkbox5_SC,'Value')==1&&get(handles.checkbox7_SC,'Value')==1
                enthreshold1=str2num(get(handles.edit33_SC,'string'));
                enthreshold2=str2num(get(handles.edit41_SC,'string'));
                vathreshold1=str2num(get(handles.edit36_SC,'string'));
                 vathreshold2=str2num(get(handles.edit43_SC,'string'));
                [Ycca,W] = CCA_threshold(Ybss,B,WC,0,0,enthreshold1,enthreshold2, 10000, 10000,vathreshold1,vathreshold2);
             end
              if  get(handles.checkbox6_SC,'Value')==1&&get(handles.checkbox7_SC,'Value')==1
               kuthreshold1=str2num(get(handles.edit34_SC,'string'));
                kuthreshold2=str2num(get(handles.edit42_SC,'string'));
                vathreshold1=str2num(get(handles.edit36_SC,'string'));
                 vathreshold2=str2num(get(handles.edit43_SC,'string'));
                [Ycca,W] = CCA_threshold(Ybss,B,WC,0,0,10000,10000, kuthreshold1,kuthreshold2,vathreshold1,vathreshold2);
            end
            if  get(handles.checkbox4_SC,'Value')==1&&get(handles.checkbox5_SC,'Value')==1&&get(handles.checkbox6_SC,'Value')==1
                acthreshold1=str2num(get(handles.edit21_SC,'string'));
                acthreshold2=str2num(get(handles.edit40_SC,'string'));
                enthreshold1=str2num(get(handles.edit33_SC,'string'));
                enthreshold2=str2num(get(handles.edit41_SC,'string'));
                kuthreshold1=str2num(get(handles.edit34_SC,'string'));
                kuthreshold2=str2num(get(handles.edit42_SC,'string'));
                [Ycca,W] = CCA_threshold(Ybss,B,WC,acthreshold1,acthreshold2,enthreshold1,enthreshold2, kuthreshold1, kuthreshold2,10000,10000);
            end
            if  get(handles.checkbox4_SC,'Value')==1&&get(handles.checkbox5_SC,'Value')==1&&get(handles.checkbox7_SC,'Value')==1
                acthreshold1=str2num(get(handles.edit21_SC,'string'));
                acthreshold2=str2num(get(handles.edit40_SC,'string'));
                enthreshold1=str2num(get(handles.edit33_SC,'string'));
                enthreshold2=str2num(get(handles.edit41_SC,'string'));
                vathreshold1=str2num(get(handles.edit36_SC,'string'));
                vathreshold2=str2num(get(handles.edit43_SC,'string'));
                [Ycca,W] = CCA_threshold(Ybss,B,WC,acthreshold1,acthreshold2,enthreshold1,enthreshold2, 10000, 10000,vathreshold1,vathreshold2);
            end
             if  get(handles.checkbox4_SC,'Value')==1&&get(handles.checkbox6_SC,'Value')==1&&get(handles.checkbox7_SC,'Value')==1
                acthreshold1=str2num(get(handles.edit21_SC,'string'));
                acthreshold2=str2num(get(handles.edit40_SC,'string'));
                kuthreshold1=str2num(get(handles.edit34_SC,'string'));
                kuthreshold2=str2num(get(handles.edit42_SC,'string'));
                vathreshold1=str2num(get(handles.edit36_SC,'string'));
                vathreshold2=str2num(get(handles.edit43_SC,'string'));
                [Ycca,W] = CCA_threshold(Ybss,B,WC,acthreshold1,acthreshold2,10000,10000, kuthreshold1, kuthreshold2,vathreshold1,vathreshold2);
             end
            if  get(handles.checkbox5_SC,'Value')==1&&get(handles.checkbox6_SC,'Value')==1&&get(handles.checkbox7_SC,'Value')==1
                enthreshold1=str2num(get(handles.edit33_SC,'string'));
                enthreshold2=str2num(get(handles.edit41_SC,'string'));
                kuthreshold1=str2num(get(handles.edit34_SC,'string'));
                kuthreshold2=str2num(get(handles.edit42_SC,'string'));
                vathreshold1=str2num(get(handles.edit36_SC,'string'));
                vathreshold2=str2num(get(handles.edit43_SC,'string'));
                [Ycca,W] = CCA_threshold(Ybss,B,WC,0,0,enthreshold1,enthreshold2, kuthreshold1, kuthreshold2,vathreshold1,vathreshold2);
            end
             if  get(handles.checkbox4_SC,'Value')==1&&get(handles.checkbox5_SC,'Value')==1&&get(handles.checkbox6_SC,'Value')==1&&get(handles.checkbox7_SC,'Value')==1
                 acthreshold1=str2num(get(handles.edit21_SC,'string'));
                acthreshold2=str2num(get(handles.edit40_SC,'string'));
                  enthreshold1=str2num(get(handles.edit33_SC,'string'));
                enthreshold2=str2num(get(handles.edit41_SC,'string'));
                kuthreshold1=str2num(get(handles.edit34_SC,'string'));
                kuthreshold2=str2num(get(handles.edit42_SC,'string'));
                vathreshold1=str2num(get(handles.edit36_SC,'string'));
                vathreshold2=str2num(get(handles.edit43_SC,'string'));
                [Ycca,W] = CCA_threshold(Ybss,B,WC,acthreshold1,acthreshold2,enthreshold1,enthreshold2, kuthreshold1, kuthreshold2,vathreshold1,vathreshold2);
            end
            [Youtput] = singleEEG_recon(Ycca,fs);
        case 3                        %%%%IVA
            if get(handles.checkbox4_SC,'Value')==1
                acthreshold1=str2num(get(handles.edit21_SC,'string'));
                acthreshold2=str2num(get(handles.edit40_SC,'string'));
                [Yiva,W] = IVA_threshold(Ybss,F,WC,P_iva, acthreshold1, acthreshold2,10000,10000,10000,10000,10000,10000);
            end
            if get(handles.checkbox5_SC,'Value')==1
                enthreshold1=str2num(get(handles.edit33_SC,'string'));
                enthreshold2=str2num(get(handles.edit41_SC,'string'));
                [Yiva,W] = IVA_threshold(Ybss,F,WC,P_iva,0,0,enthreshold1,enthreshold2,10000,10000,10000,10000);
            end
            if get(handles.checkbox6_SC,'Value')==1
                kuthreshold1=str2num(get(handles.edit34_SC,'string'));
                kuthreshold2=str2num(get(handles.edit42_SC,'string'));
                [Yiva,W] = IVA_threshold(Ybss,F,WC,P_iva,0,0,10000,10000,kuthreshold1,kuthreshold2,10000,10000);
            end
            if get(handles.checkbox7_SC,'Value')==1
                vathreshold1=str2num(get(handles.edit36_SC,'string'));
                vathreshold2=str2num(get(handles.edit43_SC,'string'));
                [Yiva,W] = IVA_threshold(Ybss,F,WC,P_iva,0,0,10000,10000,10000,10000,vathreshold1,vathreshold2);
            end
            if  get(handles.checkbox4_SC,'Value')==1&&get(handles.checkbox5_SC,'Value')==1
                acthreshold1=str2num(get(handles.edit21_SC,'string'));
                acthreshold2=str2num(get(handles.edit40_SC,'string'));
                enthreshold1=str2num(get(handles.edit33_SC,'string'));
                enthreshold2=str2num(get(handles.edit41_SC,'string'));
                [Yiva,W] = IVA_threshold(Ybss,F,WC,P_iva,acthreshold1,acthreshold2,enthreshold1,enthreshold2,10000,10000,10000,10000);
            end
            if  get(handles.checkbox4_SC,'Value')==1&&get(handles.checkbox6_SC,'Value')==1
                acthreshold1=str2num(get(handles.edit21_SC,'string'));
                acthreshold2=str2num(get(handles.edit40_SC,'string'));
                kuthreshold1=str2num(get(handles.edit34_SC,'string'));
                kuthreshold2=str2num(get(handles.edit42_SC,'string'));
                [Yiva,W] = IVA_threshold(Ybss,F,WC,P_iva,acthreshold1,acthreshold2,10000,10000,kuthreshold1,kuthreshold2,10000,10000);
            end
            if  get(handles.checkbox4_SC,'Value')==1&&get(handles.checkbox7_SC,'Value')==1
                acthreshold1=str2num(get(handles.edit21_SC,'string'));
                acthreshold2=str2num(get(handles.edit40_SC,'string'));
              vathreshold1=str2num(get(handles.edit36_SC,'string'));
                vathreshold2=str2num(get(handles.edit43_SC,'string'));
                [Yiva,W] = IVA_threshold(Ybss,F,WC,P_iva,acthreshold1,acthreshold2,10000,10000,10000,10000,vathreshold1,vathreshold1);
            end
            if  get(handles.checkbox5_SC,'Value')==1&&get(handles.checkbox6_SC,'Value')==1
                enthreshold1=str2num(get(handles.edit33_SC,'string'));
                enthreshold2=str2num(get(handles.edit41_SC,'string'));
                kuthreshold1=str2num(get(handles.edit34_SC,'string'));
                kuthreshold2=str2num(get(handles.edit42_SC,'string'));
                [Yiva,W] = IVA_threshold(Ybss,F,WC,P_iva,0,0,enthreshold1,enthreshold2,kuthreshold1,kuthreshold2,10000,10000);
            end
            if  get(handles.checkbox5_SC,'Value')==1&&get(handles.checkbox7_SC,'Value')==1
                enthreshold1=str2num(get(handles.edit33_SC,'string'));
                enthreshold2=str2num(get(handles.edit41_SC,'string'));
               vathreshold1=str2num(get(handles.edit36_SC,'string'));
                vathreshold2=str2num(get(handles.edit43_SC,'string'));
                [Yiva,W] = IVA_threshold(Ybss,F,WC,P_iva,0,0,enthreshold1,enthreshold2,10000,10000,vathreshold1,vathreshold2);
            end
              if  get(handles.checkbox6_SC,'Value')==1&&get(handles.checkbox7_SC,'Value')==1
                 kuthreshold1=str2num(get(handles.edit34_SC,'string'));
                kuthreshold2=str2num(get(handles.edit42_SC,'string'));
               vathreshold1=str2num(get(handles.edit36_SC,'string'));
                vathreshold2=str2num(get(handles.edit43_SC,'string'));
                [Yiva,W] = IVA_threshold(Ybss,F,WC,P_iva,0,0,10000,10000,kuthreshold1,kuthreshold2,vathreshold1,vathreshold2);
            end
            if  get(handles.checkbox4_SC,'Value')==1&&get(handles.checkbox5_SC,'Value')==1&&get(handles.checkbox6_SC,'Value')==1
                acthreshold1=str2num(get(handles.edit21_SC,'string'));
                acthreshold2=str2num(get(handles.edit40_SC,'string'));
                enthreshold1=str2num(get(handles.edit33_SC,'string'));
                enthreshold2=str2num(get(handles.edit41_SC,'string'));
                kuthreshold1=str2num(get(handles.edit34_SC,'string'));
                kuthreshold2=str2num(get(handles.edit42_SC,'string'));
                [Yiva,W] = IVA_threshold(Ybss,F,WC,P_iva,acthreshold1,acthreshold2,enthreshold1,enthreshold2, kuthreshold1, kuthreshold2,10000,10000);
            end
            if  get(handles.checkbox4_SC,'Value')==1&&get(handles.checkbox5_SC,'Value')==1&&get(handles.checkbox7_SC,'Value')==1
                acthreshold1=str2num(get(handles.edit21_SC,'string'));
                acthreshold2=str2num(get(handles.edit40_SC,'string'));
                enthreshold1=str2num(get(handles.edit33_SC,'string'));
                enthreshold2=str2num(get(handles.edit41_SC,'string'));
                vathreshold1=str2num(get(handles.edit36_SC,'string'));
                vathreshold2=str2num(get(handles.edit43_SC,'string'));
                [Yiva,W] = IVA_threshold(Ybss,F,WC,P_iva,acthreshold1,acthreshold2,enthreshold1,enthreshold2, 10000, 10000,vathreshold1,vathreshold2);
            end
             if  get(handles.checkbox4_SC,'Value')==1&&get(handles.checkbox6_SC,'Value')==1&&get(handles.checkbox7_SC,'Value')==1
                acthreshold1=str2num(get(handles.edit21_SC,'string'));
                acthreshold2=str2num(get(handles.edit40_SC,'string'));
                 kuthreshold1=str2num(get(handles.edit34_SC,'string'));
                kuthreshold2=str2num(get(handles.edit42_SC,'string'));
                vathreshold1=str2num(get(handles.edit36_SC,'string'));
                vathreshold2=str2num(get(handles.edit43_SC,'string'));
                [Yiva,W] = IVA_threshold(Ybss,F,WC,P_iva,acthreshold1,acthreshold2,10000,10000, kuthreshold1, kuthreshold2,vathreshold1,vathreshold2);
             end
             if  get(handles.checkbox5_SC,'Value')==1&&get(handles.checkbox6_SC,'Value')==1&&get(handles.checkbox7_SC,'Value')==1
                enthreshold1=str2num(get(handles.edit33_SC,'string'));
                enthreshold2=str2num(get(handles.edit41_SC,'string'));
                 kuthreshold1=str2num(get(handles.edit34_SC,'string'));
                kuthreshold2=str2num(get(handles.edit42_SC,'string'));
                vathreshold1=str2num(get(handles.edit36_SC,'string'));
                vathreshold2=str2num(get(handles.edit43_SC,'string'));
                [Yiva,W] = IVA_threshold(Ybss,F,WC,P_iva,0,0,enthreshold1,enthreshold2, kuthreshold1, kuthreshold2,vathreshold1,vathreshold2);
             end
               if  get(handles.checkbox4_SC,'Value')==1&&get(handles.checkbox5_SC,'Value')==1&&get(handles.checkbox6_SC,'Value')==1&&get(handles.checkbox7_SC,'Value')==1
                 acthreshold1=str2num(get(handles.edit21_SC,'string'));
                acthreshold2=str2num(get(handles.edit40_SC,'string'));
                   enthreshold1=str2num(get(handles.edit33_SC,'string'));
                enthreshold2=str2num(get(handles.edit41_SC,'string'));
                 kuthreshold1=str2num(get(handles.edit34_SC,'string'));
                kuthreshold2=str2num(get(handles.edit42_SC,'string'));
                vathreshold1=str2num(get(handles.edit36_SC,'string'));
                vathreshold2=str2num(get(handles.edit43_SC,'string'));
                [Yiva,W] = IVA_threshold(Ybss,F,WC,P_iva,acthreshold1,acthreshold2,enthreshold1,enthreshold2, kuthreshold1, kuthreshold2,vathreshold1,vathreshold2);
            end
            [Youtput] = singleEEG_recon(Yiva,fs);
        case 4  %%%No bss
            if get(handles.checkbox4_SC,'Value')==1
                acthreshold1=str2num(get(handles.edit21_SC,'string'));
                acthreshold2=str2num(get(handles.edit40_SC,'string'));
                [Ysingle] = single_threshold(Ybss,acthreshold1, acthreshold2,10000,10000,10000,10000,10000,10000);
            end
            if get(handles.checkbox5_SC,'Value')==1
                enthreshold1=str2num(get(handles.edit33_SC,'string'));
                enthreshold2=str2num(get(handles.edit41_SC,'string'));
                [Ysingle] = single_threshold(Ybss,0,0,enthreshold1,enthreshold2,10000,10000,10000,10000,10000,10000);
            end
            if get(handles.checkbox6_SC,'Value')==1
                kuthreshold1=str2num(get(handles.edit34,'string'));
                kuthreshold2=str2num(get(handles.edit8_Waveletcomponents,'string'));
                [Ysingle] = single_threshold(Ybss,0,0,10000,10000,kuthreshold1,kuthreshold2,10000,10000);
            end
             if get(handles.checkbox7_SC,'Value')==1
                vathreshold1=str2num(get(handles.edit36_SC,'string'));
                vathreshold2=str2num(get(handles.edit43_SC,'string'));
                [Ysingle] = single_threshold(Ybss,0,0,10000,10000,kuthreshold1,kuthreshold2,vathreshold1,vathreshold2);
            end
            if  get(handles.checkbox4_SC,'Value')==1&&get(handles.checkbox5_SC,'Value')==1
                acthreshold1=str2num(get(handles.edit21_SC,'string'));
                acthreshold2=str2num(get(handles.edit40_SC,'string'));
                enthreshold1=str2num(get(handles.edit33_SC,'string'));
                enthreshold2=str2num(get(handles.edit41_SC,'string'));
                [Ysingle] = single_threshold(Ybss,acthreshold1,acthreshold2,enthreshold1,enthreshold2,10000,10000,10000,10000);
            end
            if  get(handles.checkbox4_SC,'Value')==1&&get(handles.checkbox6_SC,'Value')==1
                acthreshold1=str2num(get(handles.edit21_SC,'string'));
                acthreshold2=str2num(get(handles.edit40_SC,'string'));
                kuthreshold1=str2num(get(handles.edit34_SC,'string'));
                kuthreshold2=str2num(get(handles.edit42_SC,'string'));
                [Ysingle] = single_threshold(Ybss,acthreshold1,acthreshold2,10000,10000,kuthreshold1,kuthreshold2,10000,10000);
            end
               if  get(handles.checkbox4_SC,'Value')==1&&get(handles.checkbox7_SC,'Value')==1
                acthreshold1=str2num(get(handles.edit21_SC,'string'));
                acthreshold2=str2num(get(handles.edit40_SC,'string'));
               vathreshold1=str2num(get(handles.edit36_SC,'string'));
                vathreshold2=str2num(get(handles.edit43_SC,'string'));
                [Ysingle] = single_threshold(Ybss,acthreshold1,acthreshold2,10000,10000,10000,10000,vathreshold1,vathreshold2);
            end
            if  get(handles.checkbox5_SC,'Value')==1&&get(handles.checkbox6_SC,'Value')==1
                enthreshold1=str2num(get(handles.edit33_SC,'string'));
                enthreshold2=str2num(get(handles.edit41_SC,'string'));
                kuthreshold1=str2num(get(handles.edit34_SC,'string'));
                kuthreshold2=str2num(get(handles.edit42_SC,'string'));
                [Ysingle] = single_threshold(Ybss,0,0,enthreshold1,enthreshold2,kuthreshold1,kuthreshold2,10000,10000);
            end
             if  get(handles.checkbox5_SC,'Value')==1&&get(handles.checkbox7_SC,'Value')==1
                enthreshold1=str2num(get(handles.edit33_SC,'string'));
                enthreshold2=str2num(get(handles.edit41_SC,'string'));
                vathreshold1=str2num(get(handles.edit36_SC,'string'));
                vathreshold2=str2num(get(handles.edit43_SC,'string'));
                [Ysingle] = single_threshold(Ybss,0,0,enthreshold1,enthreshold2,10000,10000,vathreshold1,vathreshold2);
             end
              if  get(handles.checkbox6_SC,'Value')==1&&get(handles.checkbox7_SC,'Value')==1
                kuthreshold1=str2num(get(handles.edit34_SC,'string'));
                kuthreshold2=str2num(get(handles.edit42_SC,'string'));
                vathreshold1=str2num(get(handles.edit36_SC,'string'));
                vathreshold2=str2num(get(handles.edit43_SC,'string'));
                [Ysingle] = single_threshold(Ybss,0,0,10000,10000,kuthreshold1,kuthreshold2,vathreshold1,vathreshold2);
            end
            if  get(handles.checkbox4_SC,'Value')==1&&get(handles.checkbox5_SC,'Value')==1&&get(handles.checkbox6_SC,'Value')==1
                acthreshold1=str2num(get(handles.edit21_SC,'string'));
                acthreshold2=str2num(get(handles.edit40_SC,'string'));
                enthreshold1=str2num(get(handles.edit33_SC,'string'));
                enthreshold2=str2num(get(handles.edit41_SC,'string'));
                kuthreshold1=str2num(get(handles.edit34_SC,'string'));
                kuthreshold2=str2num(get(handles.edit42_SC,'string'));
                [Ysingle] =single_threshold(Ybss,acthreshold1,acthreshold2,enthreshold1,enthreshold2, kuthreshold1, kuthreshold2,10000,10000);
            end
            if  get(handles.checkbox4_SC,'Value')==1&&get(handles.checkbox5_SC,'Value')==1&&get(handles.checkbox7_SC,'Value')==1
                acthreshold1=str2num(get(handles.edit21_SC,'string'));
                acthreshold2=str2num(get(handles.edit40_SC,'string'));
                enthreshold1=str2num(get(handles.edit33_SC,'string'));
                enthreshold2=str2num(get(handles.edit41_SC,'string'));
                vathreshold1=str2num(get(handles.edit36_SC,'string'));
                vathreshold2=str2num(get(handles.edit43_SC,'string'));
                [Ysingle] =single_threshold(Ybss,acthreshold1,acthreshold2,enthreshold1,enthreshold2, 10000, 10000,vathreshold1,vathreshold2);
            end
            if  get(handles.checkbox4_SC,'Value')==1&&get(handles.checkbox6_SC,'Value')==1&&get(handles.checkbox7_SC,'Value')==1
                acthreshold1=str2num(get(handles.edit21_SC,'string'));
                acthreshold2=str2num(get(handles.edit40_SC,'string'));
                kuthreshold1=str2num(get(handles.edit34_SC,'string'));
                kuthreshold2=str2num(get(handles.edit42_SC,'string'));
                vathreshold1=str2num(get(handles.edit36_SC,'string'));
                vathreshold2=str2num(get(handles.edit43_SC,'string'));
                [Ysingle] =single_threshold(Ybss,acthreshold1,acthreshold2,10000,10000,kuthreshold1,kuthreshold2,vathreshold1,vathreshold2);
            end
            if  get(handles.checkbox5_SC,'Value')==1&&get(handles.checkbox6_SC,'Value')==1&&get(handles.checkbox7_SC,'Value')==1
                enthreshold1=str2num(get(handles.edit33_SC,'string'));
                enthreshold2=str2num(get(handles.edit41_SC,'string'));
                kuthreshold1=str2num(get(handles.edit34_SC,'string'));
                kuthreshold2=str2num(get(handles.edit42_SC,'string'));
                vathreshold1=str2num(get(handles.edit36_SC,'string'));
                vathreshold2=str2num(get(handles.edit43_SC,'string'));
                [Ysingle] =single_threshold(Ybss,0,0,enthreshold1,enthreshold2,kuthreshold1,kuthreshold2,vathreshold1,vathreshold2);
            end
               if  get(handles.checkbox4_SC,'Value')==1&&get(handles.checkbox5_SC,'Value')==1&&get(handles.checkbox6_SC,'Value')==1&&get(handles.checkbox7_SC,'Value')==1
                acthreshold1=str2num(get(handles.edit21_SC,'string'));
                acthreshold2=str2num(get(handles.edit40_SC,'string'));
                enthreshold1=str2num(get(handles.edit33_SC,'string'));
                enthreshold2=str2num(get(handles.edit41_SC,'string'));
                kuthreshold1=str2num(get(handles.edit34_SC,'string'));
                kuthreshold2=str2num(get(handles.edit42_SC,'string'));
                vathreshold1=str2num(get(handles.edit36_SC,'string'));
                vathreshold2=str2num(get(handles.edit43_SC,'string'));
                [Ysingle] =single_threshold(Ybss,acthreshold1,acthreshold2,enthreshold1,enthreshold2,kuthreshold1,kuthreshold2,vathreshold1,vathreshold2);
            end
            [Youtput] = singleEEG_recon(Ysingle,fs);
    end
    axes(handles.axes2_SC);
    cla reset;
    multichannelplot_normal_chen1(Youtput, fs);
end
        waitbar(1,h,'Completed');
        pause(1);
        delete(h);
if strcmp(response,'No')

end

% --- Executes on button press in pushbutton7_SC.
function pushbutton7_SC_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7_SC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

axes(handles.axes2_SC);
cla reset;
% --- Executes on selection change in popupmenu7_SC.
function popupmenu7_SC_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu7_SC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu7_SC contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu7_SC


% --- Executes during object creation, after setting all properties.
function popupmenu7_SC_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu7_SC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu6_SC.
function popupmenu6_SC_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu6_SC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu6_SC contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu6_SC
global val1;
val1=get(handles.popupmenu6_SC ,'value');
switch (val1)
    case 1     %ICA
        set(handles.edit22_SC,'string','IcaType','visible','on');
        set(handles.popupmenu7_SC,'visible','on');
        set(handles.edit35_SC,'string','','visible','off');
        set(handles. pushbutton13_SC,'Enable','on');
        set(handles. pushbutton9_SC,'Enable','on');
        set(handles. pushbutton15_SC,'Enable','on');
         set(handles. text92_SC,'visible','off');
    case 2     %CCA
        set(handles.edit22_SC,'string','Time delay','visible','on');
        set(handles.popupmenu7_SC,'visible','off');
        set(handles.edit35_SC,'string','','visible','on');
        set(handles. pushbutton13_SC,'Enable','on');
        set(handles. pushbutton9_SC,'Enable','on');
        set(handles. pushbutton15_SC,'Enable','on');
          set(handles. text92_SC,'visible','on');
        
    case 3       %IVA
        set(handles.edit22_SC,'string','Time delay','visible','on');
        set(handles.edit35_SC,'string','','visible','on');
        set(handles.popupmenu7_SC,'visible','off');
        set(handles. pushbutton13_SC,'Enable','on');
        set(handles. pushbutton9_SC,'Enable','on');
        set(handles. pushbutton15_SC,'Enable','on');
          set(handles. text92_SC,'visible','on');
    case 4   %No bss
        set(handles.edit22_SC,'string','Time delay','visible','off');
        set(handles.edit35_SC,'string','','visible','off');
        set(handles. pushbutton13_SC,'Enable','off');
        set(handles. pushbutton9_SC,'Enable','off');
        set(handles. pushbutton15_SC,'Enable','off');
        set(handles. text92_SC,'visible','off');
end

% --- Executes during object creation, after setting all properties.
function popupmenu6_SC_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu6_SC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton9_SC.
function pushbutton9_SC_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9_SC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global val1;
global val;
global val2;
global Ydecompose;
global fs;
global tlag;
global Ybss;
global Yd;
global existingdata;
val=get(handles.decomposechoose_SC ,'value') ;%挑选EEMD,Wavelet，SSA
val1=get(handles.popupmenu6_SC ,'value');%挑选ICA,CCA,IVA
val2=get(handles.popupmenu7_SC ,'value');%挑选ICA类型
tlag=str2num(get(handles.edit35_SC,'string'));
val=get(handles.decomposechoose_SC ,'value');
 h=waitbar(0,'Running...');
switch (val)
    case 1                       %SSA
        Windowwidth=str2num(get(handles.windowwidth_SC,'string'));
         ncomps=str2num(get(handles.edit7_SC,'string'));
        [Ydecompose] = SSA_decompose(existingdata,Windowwidth,ncomps,fs);
    case 2                       %Wavelet
        Wavelevel=str2num(get(handles.windowwidth_SC,'string'));
        Wavebase=num2str(get(handles.edit7_SC,'string'));
        [Ydecompose] = wavelet_decompose(existingdata, Wavelevel, Wavebase,fs);
    case 3                     %EEMD
        Noiselevel=str2num(get(handles.windowwidth_SC,'string'));
        NE=str2num(get(handles.edit7_SC,'string'));
        numImf=str2num(get(handles.edit48_SC,'string'));
        [Ydecompose] = EEMD_decompose(existingdata,NE,Noiselevel,fs,numImf);
end
switch(val)
    case 1                                %SSA分解模块
        switch (val1)
            case 1    %ICA
                switch (val2)
                    case 1         %fast ica
                        [Ybss,Wica,WC,P_ica]= myfastICA(Ydecompose,fs);
                    case 2   %sobi
                        [Ybss ,Wica,WC,P_ica] = mysobi( Ydecompose,fs,4);
                    case 3       %jade
                        [Ybss,WC,P_ica,B]= myjade(Ydecompose,fs);
                         case 4   %infomax
                        [Ybss ,Wica,WC,P_ica] = myinfomax( Ydecompose,fs);
                end
            case 2                                %CCA
                [Ybss,B,WC]= myCCA( Ydecompose,fs,tlag);
            case 3                                    %IVA
                [Ybss,F,WC,P_iva] = myIVA(Ydecompose,fs,tlag);%%%做到这里
        end
    case 2                                %Wavelet分解模块
        switch (val1)
            case 1                             %ICA
                switch (val2)
                    case 1         %fast ica
                        [Ybss,Wica,WC,P_ica] = myfastICA( Ydecompose,fs);
                    case 2  %sobi
                        [Ybss ,Wica,WC,P_ica] = mysobi( Ydecompose,fs);
                    case 3       %jade
                        [Ybss,WC,P_ica,B] = myjade( Ydecompose,fs);
                         case 4   %infomax
                        [Ybss ,Wica,WC,P_ica] = myinfomax( Ydecompose,fs);
                end
                
            case 2                             %CCA
                [Ybss,B,WC]= myCCA( Ydecompose,fs,tlag);
            case 3                             %IVA
                [Ybss,F,WC,P_iva] = myIVA(Ydecompose,fs,tlag);
        end
    case 3                                %EEMD分解模块
        switch (val1)
            case 1                                 %ICA
                switch (val2)
                    case 1         %fast ica
                        [Ybss,Wica,WC,P_ica] = myfastICA( Ydecompose,fs);
                    case 2   %sobi
                        [Ybss,Wica,WC,P_ica]= mysobi( Ydecompose,fs,4);
                    case 3       %jade
                        [Ybss,WC,P_ica,B] = myjade( Ydecompose,fs);
                         case 4   %infomax
                        [Ybss,Wica,WC,P_ica] = myinfomax( Ydecompose,fs);
                end
            case 2                                     %CCA
                [Ybss,B,WC]= myCCA( Ydecompose,fs,tlag);
            case 3                                   %IVA
                [Ybss,F,WC,P_iva] = myIVA(Ydecompose,fs,tlag);
        end
end
        waitbar(1,h,'Completed');
        pause(1);
        delete(h);



function edit35_SC_Callback(hObject, eventdata, handles)
% hObject    handle to edit35_SC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit35_SC as text
%        str2double(get(hObject,'String')) returns contents of edit35_SC as a double


% --- Executes during object creation, after setting all properties.
function edit35_SC_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit35_SC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton13_SC.
function pushbutton13_SC_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton13_SC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Ybss;
[filename ,pathname]=uiputfile({' Ybss','MAT-files(*.mat)'},'save');%pathname获取保存数据路径，filename获取保存数据名称
str=strcat(pathname,filename);%字符串连接
save(str, 'Ybss')%将数据a保存为mat文件

% --- Executes on button press in pushbutton15_SC.
function pushbutton15_SC_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton15_SC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Ybss;
global Yd;
global val1;
global Yrow;
Yd=Ybss;
[row,column]=size(Yd);
Yrow = [];
for i = 1:row
    Yrow(i,1) = i;
end
switch(val1)
    case{1,3}
%         set(handles.tab_ICs,'Visible','on');
        run ('Bss_Signal_Analysis.m');
    case 2
%         set(handles.tab_CVs,'Visible','on');
        run ('CCA_Analysis.m');
end
  function tab_CVs_ResizeFcn(hObject, eventdata, handles)
% hObject    handle to tab1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
  function tab_ICs_ResizeFcn(hObject, eventdata, handles)
% hObject    handle to tab1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% --- Executes on selection change in listbox2_ICs.
function listbox2_ICs_Callback(hObject, eventdata, handles)
% hObject    handle to listbox2_ICs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox2_ICs contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox2_ICs
global fs;
global Yd;
global vd;
 cla reset;  
vd=get(handles.listbox2_ICs,'value');
vd=vd-1;
 axes(handles.axes1_ICs);
  multichannelplot_normal_chen3(Yd(vd,:),fs);
  Ymax=max(Yd(vd,:));
  Ymin=min(Yd(vd,:));
  Ymean=mean(Yd(vd,:));
  set(handles.edit9_ICs,'string',num2str(Ymax));
  set(handles.edit8_ICs,'string',num2str(Ymean));
  set(handles.edit7_ICs,'string',num2str(Ymin));

% --- Executes during object creation, after setting all properties.
function listbox2_ICs_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox2_ICs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton6_ICs.
function pushbutton6_ICs_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6_ICs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Yrow;
set(handles.listbox2_ICs,'string',{'Num of signal',num2str(Yrow)});

% --- Executes on button press in pushbutton7_ICs.
function pushbutton7_ICs_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7_ICs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global vd;
vd=vd-1;
global Yd;
[filename ,pathname]=uiputfile({' Yd','MAT-files(*.mat)'},'save');%pathname获取保存数据路径，filename获取保存数据名称
str=strcat(pathname,filename);%字符串连接
Yd=Yd(vd,:);
save(str, 'Yd')

% --- Executes on button press in pushbutton8_ICs.
function pushbutton8_ICs_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8_ICs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clc;
set(handles.tab_ICs,'Visible','off');
% clear all;
% close(gcbf);



function edit7_ICs_Callback(hObject, eventdata, handles)
% hObject    handle to edit7_ICs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7_ICs as text
%        str2double(get(hObject,'String')) returns contents of edit7_ICs as a double


% --- Executes during object creation, after setting all properties.
function edit7_ICs_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7_ICs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit8_ICs_Callback(hObject, eventdata, handles)
% hObject    handle to edit8_ICs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit8_ICs as text
%        str2double(get(hObject,'String')) returns contents of edit8_ICs as a double


% --- Executes during object creation, after setting all properties.
function edit8_ICs_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit8_ICs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit9_ICs_Callback(hObject, eventdata, handles)
% hObject    handle to edit9_ICs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit9_ICs as text
%        str2double(get(hObject,'String')) returns contents of edit9_ICs as a double


% --- Executes during object creation, after setting all properties.
function edit9_ICs_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit9_ICs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in listbox2_CVs.
function listbox2_CVs_Callback(hObject, eventdata, handles)
% hObject    handle to listbox2_CVs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox2_CVs contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox2_CVs
global fs;
global Yd;
global vd;
 cla reset;  
vd=get(handles.listbox2_CVs,'value');
vd=vd-1;
 axes(handles.axes1_CVs);
  multichannelplot_normal_chen3(Yd(vd,:),fs);
  Ymax=max(Yd(vd,:));
  Ymin=min(Yd(vd,:));
  Ymean=mean(Yd(vd,:));
  set(handles.edit9_CVs,'string',num2str(Ymax));
  set(handles.edit8_CVs,'string',num2str(Ymean));
  set(handles.edit7_CVs,'string',num2str(Ymin));

% --- Executes during object creation, after setting all properties.
function listbox2_CVs_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox2_CVs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton6_CVs.
function pushbutton6_CVs_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6_CVs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Yrow;
set(handles.listbox2_CVs,'string',{'Num of signal',num2str(Yrow)});

% --- Executes on button press in pushbutton7_CVs.
function pushbutton7_CVs_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7_CVs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global vd;
vd=vd-1;
global Yd;
[filename ,pathname]=uiputfile({' Yd','MAT-files(*.mat)'},'save');%pathname获取保存数据路径，filename获取保存数据名称
str=strcat(pathname,filename);%字符串连接
Yd=Yd(vd,:);
save(str, 'Yd')

% --- Executes on button press in pushbutton8_CVs.
function pushbutton8_CVs_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8_CVs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clc;
set(handles.tab_CVs,'Visible','off');
% clear all；
% close(gcbf);


function edit7__CVs_Callback(hObject, eventdata, handles)
% hObject    handle to edit7__CVs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7__CVs as text
%        str2double(get(hObject,'String')) returns contents of edit7__CVs as a double


% --- Executes during object creation, after setting all properties.
function edit7__CVs_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7__CVs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit8__CVs_Callback(hObject, eventdata, handles)
% hObject    handle to edit8__CVs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit8__CVs as text
%        str2double(get(hObject,'String')) returns contents of edit8__CVs as a double


% --- Executes during object creation, after setting all properties.
function edit8__CVs_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit8__CVs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit9__CVs_Callback(hObject, eventdata, handles)
% hObject    handle to edit9__CVs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit9__CVs as text
%        str2double(get(hObject,'String')) returns contents of edit9__CVs as a double


% --- Executes during object creation, after setting all properties.
function edit9__CVs_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit9__CVs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Decompositioncomponents_Callback(hObject, eventdata, handles)
% hObject    handle to edit7_Decompositioncomponents (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7_Decompositioncomponents as text
%        str2double(get(hObject,'String')) returns contents of edit7_Decompositioncomponents as a double


% --- Executes during object creation, after setting all properties.
function edit7_Decompositioncomponents_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7_Decompositioncomponents (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit8_Decompositioncomponents_Callback(hObject, eventdata, handles)
% hObject    handle to edit8_Decompositioncomponents (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit8_Decompositioncomponents as text
%        str2double(get(hObject,'String')) returns contents of edit8_Decompositioncomponents as a double


% --- Executes during object creation, after setting all properties.
function edit8_Decompositioncomponents_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit8_Decompositioncomponents (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit9_Decompositioncomponents_Callback(hObject, eventdata, handles)
% hObject    handle to edit9_Decompositioncomponents (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit9_Decompositioncomponents as text
%        str2double(get(hObject,'String')) returns contents of edit9_Decompositioncomponents as a double


% --- Executes during object creation, after setting all properties.
function edit9_Decompositioncomponents_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit9_Decompositioncomponents (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in listbox2_Decompositioncomponents.
function listbox2_Decompositioncomponents_Callback(hObject, eventdata, handles)
% hObject    handle to listbox2_Decompositioncomponents (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox2_Decompositioncomponents contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox2_Decompositioncomponents
global fs;
global Yd;
global vd;
 cla reset;  
vd=get(handles.listbox2_Decompositioncomponents,'value');
vd=vd-1;
 axes(handles.axes1_Decompositioncomponents);
  multichannelplot_normal_chen1(Yd(vd,:),fs);
  Ymax=max(Yd(vd,:));
  Ymin=min(Yd(vd,:));
  Ymean=mean(Yd(vd,:));
  set(handles.edit9_Decompositioncomponents,'string',num2str(Ymax));
  set(handles.edit8_Decompositioncomponents,'string',num2str(Ymean));
  set(handles.edit7_Decompositioncomponents,'string',num2str(Ymin));

% --- Executes during object creation, after setting all properties.
function listbox2_Decompositioncomponents_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox2_Decompositioncomponents (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton6_Decompositioncomponents.
function pushbutton6_Decompositioncomponents_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6_Decompositioncomponents (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Yrow;
set(handles.listbox2_Decompositioncomponents,'string',{'Num of signal',num2str(Yrow)});

% --- Executes on button press in pushbutton7_Decompositioncomponents.
function pushbutton7_Decompositioncomponents_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7_Decompositioncomponents (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global vd;
vd=vd-1;
global Yd;
[filename ,pathname]=uiputfile({' Yd','MAT-files(*.mat)'},'save');%pathname获取保存数据路径，filename获取保存数据名称
str=strcat(pathname,filename);%字符串连接
Yd=Yd(vd,:);
save(str, 'Yd')

% --- Executes on button press in pushbutton8_Decompositioncomponents.
function pushbutton8_Decompositioncomponents_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8_Decompositioncomponents (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clc;
set(handles.tab_Decompositioncomponents,'Visible','off');
% clear all
% close(gcbf);


% --- Executes on selection change in listbox2_Waveletcomponents.
function listbox2_Waveletcomponents_Callback(hObject, eventdata, handles)
% hObject    handle to listbox2_Waveletcomponents (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox2_Waveletcomponents contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox2_Waveletcomponents
global fs;
global Yd;
global vd;
 cla reset;  
vd=get(handles.listbox2_Waveletcomponents,'value');
vd=vd-1;
 axes(handles.axes1_Waveletcomponents);
  multichannelplot_normal_chen1(Yd(vd,:),fs);
  Ymax=max(Yd(vd,:));
  Ymin=min(Yd(vd,:));
  Ymean=mean(Yd(vd,:));
  set(handles.edit9_Waveletcomponents,'string',num2str(Ymax));
  set(handles.edit8_Waveletcomponents,'string',num2str(Ymean));
  set(handles.edit7_Waveletcomponents,'string',num2str(Ymin));


% --- Executes during object creation, after setting all properties.
function listbox2_Waveletcomponents_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox2_Waveletcomponents (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton6_Waveletcomponents.
function pushbutton6_Waveletcomponents_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6_Waveletcomponents (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Yrow;
set(handles.listbox2_Waveletcomponents,'string',{'Num of signal',num2str(Yrow)});

% --- Executes on button press in pushbutton7_Waveletcomponents.
function pushbutton7_Waveletcomponents_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7_Waveletcomponents (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global vd;
vd=vd-1;
global Yd;
[filename ,pathname]=uiputfile({' Yd','MAT-files(*.mat)'},'save');%pathname获取保存数据路径，filename获取保存数据名称
str=strcat(pathname,filename);%字符串连接
Yd=Yd(vd,:);
save(str, 'Yd')

% --- Executes on button press in pushbutton8_Waveletcomponents.
function pushbutton8_Waveletcomponents_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8_Waveletcomponents (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clc;
set(handles.tab_Waveletcomponents,'Visible','off');
% clear all
% close(gcbf);



function edit7_Waveletcomponents_Callback(hObject, eventdata, handles)
% hObject    handle to edit7_Waveletcomponents (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7_Waveletcomponents as text
%        str2double(get(hObject,'String')) returns contents of edit7_Waveletcomponents as a double


% --- Executes during object creation, after setting all properties.
function edit7_Waveletcomponents_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7_Waveletcomponents (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit8_Waveletcomponents_Callback(hObject, eventdata, handles)
% hObject    handle to edit8_Waveletcomponents (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit8_Waveletcomponents as text
%        str2double(get(hObject,'String')) returns contents of edit8_Waveletcomponents as a double


% --- Executes during object creation, after setting all properties.
function edit8_Waveletcomponents_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit8_Waveletcomponents (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit9_Waveletcomponents_Callback(hObject, eventdata, handles)
% hObject    handle to edit9_Waveletcomponents (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit9_Waveletcomponents as text
%        str2double(get(hObject,'String')) returns contents of edit9_Waveletcomponents as a double


% --- Executes during object creation, after setting all properties.
function edit9_Waveletcomponents_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit9_Waveletcomponents (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_IMFs_Callback(hObject, eventdata, handles)
% hObject    handle to edit7_IMFs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7_IMFs as text
%        str2double(get(hObject,'String')) returns contents of edit7_IMFs as a double


% --- Executes during object creation, after setting all properties.
function edit7_IMFs_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7_IMFs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit8_IMFs_Callback(hObject, eventdata, handles)
% hObject    handle to edit8_IMFs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit8_IMFs as text
%        str2double(get(hObject,'String')) returns contents of edit8_IMFs as a double


% --- Executes during object creation, after setting all properties.
function edit8_IMFs_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit8_IMFs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit9_IMFs_Callback(hObject, eventdata, handles)
% hObject    handle to edit9_IMFs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit9_IMFs as text
%        str2double(get(hObject,'String')) returns contents of edit9_IMFs as a double


% --- Executes during object creation, after setting all properties.
function edit9_IMFs_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit9_IMFs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in listbox2_IMFs.
function listbox2_IMFs_Callback(hObject, eventdata, handles)
% hObject    handle to listbox2_IMFs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox2_IMFs contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox2_IMFs
global fs;
global Yd;
global vd;
 cla reset;  
vd=get(handles.listbox2_IMFs,'value');
vd=vd-1;
 axes(handles.axes1_IMFs);
  multichannelplot_normal_chen3(Yd(vd,:),fs);
  Ymax=max(Yd(vd,:));
  Ymin=min(Yd(vd,:));
  Ymean=mean(Yd(vd,:));
  set(handles.edit9_IMFs,'string',num2str(Ymax));
  set(handles.edit8_IMFs,'string',num2str(Ymean));
  set(handles.edit7_IMFs,'string',num2str(Ymin));

% --- Executes during object creation, after setting all properties.
function listbox2_IMFs_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox2_IMFs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton6_IMFs.
function pushbutton6_IMFs_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6_IMFs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Yrow;
set(handles.listbox2_IMFs,'string',{'Num of signal',num2str(Yrow)});

% --- Executes on button press in pushbutton7_IMFs.
function pushbutton7_IMFs_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7_IMFs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global vd;
vd=vd-1;
global Yd;
[filename ,pathname]=uiputfile({' Yd','MAT-files(*.mat)'},'save');%pathname获取保存数据路径，filename获取保存数据名称
str=strcat(pathname,filename);%字符串连接
Yd=Yd(vd,:);
save(str, 'Yd')

% --- Executes on button press in pushbutton8_IMFs.
function pushbutton8_IMFs_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8_IMFs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clc;
set(handles.tab_IMFs,'Visible','off');


% --- Executes on selection change in popupmenu1_Fewchannel.
function popupmenu1_Fewchannel_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1_Fewchannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1_Fewchannel contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1_Fewchannel
global vaf;
vaf=get(handles.popupmenu1_Fewchannel ,'value');
switch (vaf)
    case 1      %MEMD
        set(handles.edit2_Fewchannel,'string','Noise channel','visible','on');
        set(handles.edit3_Fewchannel,'string','','visible','on');
        set(handles. pushbutton8_Fewchannel,'Enable','on');
        set(handles. pushbutton7_Fewchannel,'Enable','on');
        set(handles. pushbutton17_Fewchannel,'Enable','on');
    case 2                      %Use BSS directly
        set(handles.edit2_Fewchannel,'string','Noise channel','visible','off');
        set(handles.edit3_Fewchannel,'string','','visible','off');
        set(handles. pushbutton8_Fewchannel,'Enable','off');
        set(handles. pushbutton7_Fewchannel,'Enable','off');
        set(handles. pushbutton17_Fewchannel,'Enable','off');
        
end

% --- Executes during object creation, after setting all properties.
function popupmenu1_Fewchannel_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1_Fewchannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Fewchannel_Callback(hObject, eventdata, handles)
% hObject    handle to edit3_Fewchannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3_Fewchannel as text
%        str2double(get(hObject,'String')) returns contents of edit3_Fewchannel as a double


% --- Executes during object creation, after setting all properties.
function edit3_Fewchannel_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3_Fewchannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit56_Callback(hObject, eventdata, handles)
% hObject    handle to edit56 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit56 as text
%        str2double(get(hObject,'String')) returns contents of edit56 as a double


% --- Executes during object creation, after setting all properties.
function edit56_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit56 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1_Fewchannel.
function pushbutton1_Fewchannel_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1_Fewchannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global vaf;
vaf=get(handles.popupmenu1_Fewchannel ,'value');
switch (vaf)
    case 1      %MEMD
        set(handles.edit2_Fewchannel,'string','Noise channel','visible','on');
        set(handles.edit3_Fewchannel,'string','2','visible','on');
        
    case 2                      %Use BSS directly
        set(handles.edit2_Fewchannel,'string','Noise channel','visible','off');
        set(handles.edit3_Fewchannel,'string','','visible','off');
        set(handles.edit1_Fewchannel,'string','Sample rate','visible','off');
        set(handles.edit4_Fewchannel,'string','','visible','off');
end

% --- Executes on selection change in popupmenu12.
function popupmenu12_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu12 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu12


% --- Executes during object creation, after setting all properties.
function popupmenu12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton7_Fewchannel.
function pushbutton7_Fewchannel_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7_Fewchannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global vaf;
global Z_m;
global Ydecompose
global fs;
global imfnumbermemd;
global existingdata;
 h=waitbar(0,'Running');
vaf=get(handles.popupmenu1_Fewchannel ,'value');
switch (vaf)
    case 1      %MEMD
        Noisechannel=str2num(get(handles.edit3_Fewchannel,'string'));
        [Z_m,imfnumbermemd] = MEMD_decompose(existingdata, Noisechannel,fs);
        Ydecompose=Z_m;
end
  waitbar(1,h,'Completed');
        pause(2);
        delete(h);

% --- Executes on button press in pushbutton8_Fewchannel.
function pushbutton8_Fewchannel_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8_Fewchannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Ydecompose;
[filename ,pathname]=uiputfile({' Ydecompose','MAT-files(*.mat)'},'save');%pathname获取保存数据路径，filename获取保存数据名称
str=strcat(pathname,filename);%字符串连接
save(str, 'Ydecompose')%将数据a保存为mat文件；

% --- Executes on button press in pushbutton17_Fewchannel.
function pushbutton17_Fewchannel_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton17_Fewchannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Yd;
global Z_m;
global Yrow;
Yd=Z_m;
[row,column]=size(Yd);
Yrow = [];
for i = 1:row
    Yrow(i,1) = i;
end
% set(handles.tab_Decompositioncomponents,'Visible','on');
run ('de_Signal_Analysis.m');


function edit57_Callback(hObject, eventdata, handles)
% hObject    handle to edit57 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit57 as text
%        str2double(get(hObject,'String')) returns contents of edit57 as a double


% --- Executes during object creation, after setting all properties.
function edit57_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit57 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit14_Fewchannel_Callback(hObject, eventdata, handles)
% hObject    handle to edit14_Fewchannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit14_Fewchannel as text
%        str2double(get(hObject,'String')) returns contents of edit14_Fewchannel as a double


% --- Executes during object creation, after setting all properties.
function edit14_Fewchannel_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit14_Fewchannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in checkbox1_Fewchannel.
function checkbox1_Fewchannel_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox1_Fewchannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox1_Fewchannel


% --- Executes on button press in checkbox2_Fewchannel.
function checkbox2_Fewchannel_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox2_Fewchannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox2_Fewchannel


% --- Executes on button press in checkbox3_Fewchannel.
function checkbox3_Fewchannel_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox3_Fewchannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox3_Fewchannel



function edit16_Fewchannel_Callback(hObject, eventdata, handles)
% hObject    handle to edit16_Fewchannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit16_Fewchannel as text
%        str2double(get(hObject,'String')) returns contents of edit16_Fewchannel as a double


% --- Executes during object creation, after setting all properties.
function edit16_Fewchannel_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit16_Fewchannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit17_Fewchannel_Callback(hObject, eventdata, handles)
% hObject    handle to edit17_Fewchannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit17_Fewchannel as text
%        str2double(get(hObject,'String')) returns contents of edit17_Fewchannel as a double


% --- Executes during object creation, after setting all properties.
function edit17_Fewchannel_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit17_Fewchannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit18_Fewchannel_Callback(hObject, eventdata, handles)
% hObject    handle to edit18_Fewchannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit18_Fewchannel as text
%        str2double(get(hObject,'String')) returns contents of edit18_Fewchannel as a double


% --- Executes during object creation, after setting all properties.
function edit18_Fewchannel_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit18_Fewchannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit19_Fewchannel_Callback(hObject, eventdata, handles)
% hObject    handle to edit19_Fewchannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit19_Fewchannel as text
%        str2double(get(hObject,'String')) returns contents of edit19_Fewchannel as a double


% --- Executes during object creation, after setting all properties.
function edit19_Fewchannel_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit19_Fewchannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit20_Fewchannel_Callback(hObject, eventdata, handles)
% hObject    handle to edit20_Fewchannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit20_Fewchannel as text
%        str2double(get(hObject,'String')) returns contents of edit20_Fewchannel as a double


% --- Executes during object creation, after setting all properties.
function edit20_Fewchannel_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit20_Fewchannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu5_Fewchannel.
function popupmenu5_Fewchannel_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu5_Fewchannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu5_Fewchannel contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu5_Fewchannel


% --- Executes during object creation, after setting all properties.
function popupmenu5_Fewchannel_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu5_Fewchannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu6_Fewchannel.
function popupmenu6_Fewchannel_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu6_Fewchannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu6_Fewchannel contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu6_Fewchannel
global vaf1;
vaf1=get(handles.popupmenu6_Fewchannel,'value');
switch (vaf1)
    case 1     %ICA
        set(handles.edit11_Fewchannel,'string','ICAType','visible','on');
        set(handles.popupmenu5_Fewchannel,'visible','on');
        set(handles.edit12_Fewchannel,'string','','visible','off');
         set(handles.text93_few,'visible','off');
    case 2     %CCA
        set(handles.edit11_Fewchannel,'string','Time delay','visible','on');
        set(handles.popupmenu5_Fewchannel,'visible','off');
        set(handles.edit12_Fewchannel,'string','','visible','on');
        set(handles.text93_few,'visible','on');
    case 3       %IVA
        set(handles.edit11_Fewchannel,'string','Time delay','visible','on');
        set(handles.popupmenu5_Fewchannel,'visible','off');
        set(handles.edit12_Fewchannel,'string','','visible','on');
        set(handles.text93_few,'visible','on');
end

% --- Executes during object creation, after setting all properties.
function popupmenu6_Fewchannel_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu6_Fewchannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton9_Fewchannel.
function pushbutton9_Fewchannel_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9_Fewchannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global vaf;
global vaf1;
global vaf2;
global Z_m;
global fs;
global existingdata;
global Ybss;
global Y_bss;
global imfnumbermemd;
global WC;
 h=waitbar(0,'Running...');
vaf=get(handles.popupmenu1_Fewchannel ,'value') ;%挑选MEMD,use bss directly
vaf1=get(handles.popupmenu6_Fewchannel ,'value');%挑选ICA,CCA,IVA
vaf2=get(handles.popupmenu5_Fewchannel ,'value');%挑选ICA类型
tlag=str2num(get(handles.edit12_Fewchannel,'string'));
switch(vaf)
    case 1
        Noisechannel=str2num(get(handles.edit3_Fewchannel,'string'));
        [Z_m,imfnumbermemd] = MEMD_decompose(existingdata, Noisechannel,fs);
        switch (vaf1)
            case 1 %ICA        ssa---ica
                switch (vaf2)
                    case 1         %fast ica
                        [Ybss,Wica,WC,P_ica ]= myfastICA( Z_m,fs);
                    case 2     %sobi
                        [Ybss,Wica,WC,P_ica]=mysobi( Z_m,fs,4);
                    case 3     %jade
                        [Ybss,WC,P_ica,B]=myjade( Z_m,fs);
                    case 4  %infomax
                        [Ybss,Wica,WC,P_ica]=myinfomax( Z_m,fs);
                end
            case 2
                [Ybss,B,WC]= myCCA( Z_m,fs,tlag);
            case 3
                [Ybss,F,WC,P_iva]= myIVA( Z_m,fs,tlag);
        end
    case 2
        switch (vaf1)
            case 1        %ICA
                switch(vaf2)
                    case 1             %FASTICA
                        [Y_bss,Wica,WC,P_ica ]= myfastICA( existingdata,fs);
                    case 2               %sobi
                        [Y_bss,Wica,WC,P_ica] = mysobi( existingdata,fs,4);
                    case 3               %jade
                        [Y_bss,WC,P_ica,B]= myjade( existingdata,fs);
                    case 4
                        [Ybss,Wica,WC,P_ica]=myinfomax( Z_m,fs);
                end
            case 2      %CCA
                [Y_bss,B,WC]= myCCA( existingdata,fs,tlag);
            case 3      %IVA
                [Y_bss,F,WC,P_iva]= myIVA( existingdata,fs,tlag)
        end
end
        waitbar(1,h,'Completed');
        pause(2);
        delete(h);



function edit12_Fewchannel_Callback(hObject, eventdata, handles)
% hObject    handle to edit12_Fewchannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit12_Fewchannel as text
%        str2double(get(hObject,'String')) returns contents of edit12_Fewchannel as a double


% --- Executes during object creation, after setting all properties.
function edit12_Fewchannel_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit12_Fewchannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton10_Fewchannel.
function pushbutton10_Fewchannel_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10_Fewchannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Ybss;
[filename ,pathname]=uiputfile({' Ybss','MAT-files(*.mat)'},'save');%pathname获取保存数据路径，filename获取保存数据名称
str=strcat(pathname,filename);%字符串连接
save(str, 'Ybss')%将数据a保存为mat文件

% --- Executes on button press in pushbutton18_Fewchannel.
function pushbutton18_Fewchannel_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton18_Fewchannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global vaf;
global Ybss;
global Y_bss;
global Yd;
global Yrow;
global vaf1;
switch(vaf)
    case 1
        Yd=Ybss;
        [row,column]=size(Yd);
        Yrow = [];
        for i = 1:row
            Yrow(i,1) = i;
        end
        switch (vaf1)
            case{1,3}
%                 set(handles.tab_ICs,'Visible','on');
                run ('Bss_Signal_Analysis.m');
            case 2
%                 set(handles.tab_CVs,'Visible','on');
                run ('CCA_Analysis.m');
        end
    case 2
        Yd=Y_bss;
        [row,column]=size(Yd);
        Yrow = [];
        for i = 1:row
            Yrow(i,1) = i;
        end
        switch (vaf1)
            case{1,3}
%                 set(handles.tab_ICs,'Visible','on');
                run ('Bss_Signal_Analysis.m');
            case 2
%                 set(handles.tab_CVs,'Visible','on');
                run ('CCA_Analysis.m');
        end
end

% --- Executes on button press in pushbutton16_Fewchannel.
function pushbutton16_Fewchannel_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton16_Fewchannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Youtput;
[filename ,pathname]=uiputfile({'*.mat','MAT-files(*.mat)'},'save');%pathname获取保存数据路径，filename获取保存数据名称
str=strcat(pathname,filename);%字符串连接
save(char(str),  ' Youtput');

% --- Executes on button press in pushbutton53.
function pushbutton53_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton53 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton14_Fewchannel.
function pushbutton14_Fewchannel_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton14_Fewchannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global vaf;
global vaf1;
global existingdata;
global vaf2;
global fs;
global Youtput;
global Z_m;
global tlag;
global imfnumbermemd;
global Yrow;
global Yd;
global WC;
choosestr={'Determine the correct parameters？ '};
response=questdlg(choosestr,'Question dialog box','Yes','No',2);
if   strcmp(response,'Yes')
     h=waitbar(0,'Running...');
    vaf=get(handles.popupmenu1_Fewchannel ,'value') ;%挑选MEMD,use bss directly
    vaf1=get(handles.popupmenu6_Fewchannel ,'value');%挑选ICA,CCA,IVA
    vaf2=get(handles.popupmenu5_Fewchannel ,'value');%挑选ICA类型
    tlag=str2num(get(handles.edit12_Fewchannel,'string'));
    switch(vaf)
        case 1
            Noisechannel=str2num(get(handles.edit3_Fewchannel,'string'));
            [Z_m,imfnumbermemd] = MEMD_decompose(existingdata, Noisechannel,fs);
            switch (vaf1)
                case 1 %ICA        ssa---ica
                    switch (vaf2)
                        case 1         %fast ica
                            [Ybss,Wica,WC,P_ica ]= myfastICA( Z_m,fs);
                        case 2     %sobi
                            [Ybss,Wica,WC,P_ica]=mysobi( Z_m,fs,4);
                        case 3     %jade
                            [Ybss,WC,P_ica,B]=myjade( Z_m,fs);
                        case 4      %infomax  
                            [Ybss,Wica,WC,P_ica]=myinfomax( Z_m,fs);
                    end
                case 2
                    [Ybss,B,WC]= myCCA( Z_m,fs,tlag);
                case 3
                    [Ybss,F,WC,P_iva]= myIVA( Z_m,fs,tlag);
            end
            switch (vaf1)
                case 1        %ICA
                    switch(vaf2)
                        case 1             %FASTICA
                            if get(handles.checkbox1_Fewchannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit14_Fewchannel,'string'));
                                acthreshold2=str2num(get(handles.edit18_Fewchannel,'string'));
                                [YfastICA,W] = ICA_threshold_fastica(Ybss,WC,Wica,P_ica,acthreshold1,acthreshold2,10000,10000,10000,10000,10000,10000);
                            end
                            if get(handles.checkbox2_Fewchannel,'Value')==1 ;
                                enthreshold1=str2num(get(handles.edit16_Fewchannel,'string'));
                                enthreshold2=str2num(get(handles.edit19_Fewchannel,'string'));
                                [YfastICA,W] = ICA_threshold_fastica(Ybss,WC,Wica,P_ica,0,0,enthreshold1,enthreshold2,10000,10000,10000,10000);
                            end
                            if get(handles.checkbox3_Fewchannel,'Value')==1
                                kuthreshold1=str2num(get(handles.edit17_Fewchannel,'string'));
                                kuthreshold2=str2num(get(handles.edit20_Fewchannel,'string'));
                                [YfastICA,W] = ICA_threshold_fastica(Ybss,WC,Wica,P_ica,0,0,10000,10000,kuthreshold1,kuthreshold2,10000,10000);
                            end
                               if get(handles.checkbox4_Fewchannel,'Value')==1
                                vathreshold1=str2num(get(handles.edit21_Fewchannel,'string'));
                                vathreshold2=str2num(get(handles.edit22_Fewchannel,'string'));
                                [YfastICA,W] = ICA_threshold_fastica(Ybss,WC,Wica,P_ica,0,0,10000,10000,10000,10000,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox1_Fewchannel,'Value')==1&&get(handles.checkbox2_Fewchannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit14_Fewchannel,'string'));
                                acthreshold2=str2num(get(handles.edit18_Fewchannel,'string'));
                                enthreshold1=str2num(get(handles.edit16_Fewchannel,'string'));
                                enthreshold2=str2num(get(handles.edit19_Fewchannel,'string'));
                                [YfastICA,W] = ICA_threshold_fastica(Ybss,WC,Wica,P_ica,acthreshold1,acthreshold2,enthreshold1,enthreshold2,10000,10000,10000,10000);
                            end
                            if  get(handles.checkbox1_Fewchannel,'Value')==1&&get(handles.checkbox3_Fewchannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit14_Fewchannel,'string'));
                                acthreshold2=str2num(get(handles.edit18_Fewchannel,'string'));
                                kuthreshold1=str2num(get(handles.edit17_Fewchannel,'string'));
                                kuthreshold2=str2num(get(handles.edit20_Fewchannel,'string'));
                                [YfastICA,W] = ICA_threshold_fastica(Ybss,WC,Wica,P_ica,acthreshold1,acthreshold2,10000,10000,kuthreshold1,kuthreshold2,10000,10000);
                            end
                            if  get(handles.checkbox1_Fewchannel,'Value')==1&&get(handles.checkbox4_Fewchannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit14_Fewchannel,'string'));
                                acthreshold2=str2num(get(handles.edit18_Fewchannel,'string'));
                                vathreshold1=str2num(get(handles.edit21_Fewchannel,'string'));
                                vathreshold2=str2num(get(handles.edit22_Fewchannel,'string'));
                                [YfastICA,W] = ICA_threshold_fastica(Ybss,WC,Wica,P_ica,acthreshold1,acthreshold2,10000,10000,10000,10000,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox2_Fewchannel,'Value')==1&&get(handles.checkbox3_Fewchannel,'Value')==1
                                enthreshold1=str2num(get(handles.edit16_Fewchannel,'string'));
                                enthreshold2=str2num(get(handles.edit19_Fewchannel,'string'));
                                kuthreshold1=str2num(get(handles.edit17_Fewchannel,'string'));
                                kuthreshold2=str2num(get(handles.edit20_Fewchannel,'string'));
                                [YfastICA,W] = ICA_threshold_fastica(Ybss,WC,Wica,P_ica,0,0,enthreshold1,enthreshold2,kuthreshold1,kuthreshold2,10000,10000);
                            end
                               if  get(handles.checkbox2_Fewchannel,'Value')==1&&get(handles.checkbox4_Fewchannel,'Value')==1
                                enthreshold1=str2num(get(handles.edit16_Fewchannel,'string'));
                                enthreshold2=str2num(get(handles.edit19_Fewchannel,'string'));
                                vathreshold1=str2num(get(handles.edit21_Fewchannel,'string'));
                                vathreshold2=str2num(get(handles.edit22_Fewchannel,'string'));
                                [YfastICA,W] = ICA_threshold_fastica(Ybss,WC,Wica,P_ica,0,0,enthreshold1,enthreshold2,10000,10000,vathreshold1,vathreshold2);
                               end
                            if  get(handles.checkbox3_Fewchannel,'Value')==1&&get(handles.checkbox4_Fewchannel,'Value')==1
                                kuthreshold1=str2num(get(handles.edit17_Fewchannel,'string'));
                                kuthreshold2=str2num(get(handles.edit20_Fewchannel,'string'));
                                vathreshold1=str2num(get(handles.edit21_Fewchannel,'string'));
                                vathreshold2=str2num(get(handles.edit22_Fewchannel,'string'));
                                [YfastICA,W] = ICA_threshold_fastica(Ybss,WC,Wica,P_ica,0,0,10000,10000,kuthreshold1,kuthreshold2,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox1_Fewchannel,'Value')==1&&get(handles.checkbox2_Fewchannel,'Value')==1&&get(handles.checkbox3_Fewchannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit14_Fewchannel,'string'));
                                acthreshold2=str2num(get(handles.edit18_Fewchannel,'string'));
                                enthreshold1=str2num(get(handles.edit16_Fewchannel,'string'));
                                enthreshold2=str2num(get(handles.edit19_Fewchannel,'string'));
                                kuthreshold1=str2num(get(handles.edit17_Fewchannel,'string'));
                                kuthreshold2=str2num(get(handles.edit20_Fewchannel,'string'));
                                [YfastICA,W] = ICA_threshold_fastica(Ybss,WC,Wica,P_ica,acthreshold1,acthreshold2,enthreshold1,enthreshold2,kuthreshold1,kuthreshold2,10000,10000);
                            end
                              if  get(handles.checkbox1_Fewchannel,'Value')==1&&get(handles.checkbox2_Fewchannel,'Value')==1&&get(handles.checkbox4_Fewchannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit14_Fewchannel,'string'));
                                acthreshold2=str2num(get(handles.edit18_Fewchannel,'string'));
                                enthreshold1=str2num(get(handles.edit16_Fewchannel,'string'));
                                enthreshold2=str2num(get(handles.edit19_Fewchannel,'string'));
                                vathreshold1=str2num(get(handles.edit21_Fewchannel,'string'));
                                vathreshold2=str2num(get(handles.edit22_Fewchannel,'string'));
                                [YfastICA,W] = ICA_threshold_fastica(Ybss,WC,Wica,P_ica,acthreshold1,acthreshold2,enthreshold1,enthreshold2,10000,10000,vathreshold1,vathreshold2);
                              end
                             if  get(handles.checkbox1_Fewchannel,'Value')==1&&get(handles.checkbox3_Fewchannel,'Value')==1&&get(handles.checkbox4_Fewchannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit14_Fewchannel,'string'));
                                acthreshold2=str2num(get(handles.edit18_Fewchannel,'string'));
                                 kuthreshold1=str2num(get(handles.edit17_Fewchannel,'string'));
                                kuthreshold2=str2num(get(handles.edit20_Fewchannel,'string'));
                                vathreshold1=str2num(get(handles.edit21_Fewchannel,'string'));
                                vathreshold2=str2num(get(handles.edit22_Fewchannel,'string'));
                                [YfastICA,W] = ICA_threshold_fastica(Ybss,WC,Wica,P_ica,acthreshold1,acthreshold2,10000,10000,kuthreshold1,kuthreshold2,vathreshold1,vathreshold2);
                              end
                            if  get(handles.checkbox2_Fewchannel,'Value')==1&&get(handles.checkbox3_Fewchannel,'Value')==1&&get(handles.checkbox4_Fewchannel,'Value')==1
                               enthreshold1=str2num(get(handles.edit16_Fewchannel,'string'));
                                enthreshold2=str2num(get(handles.edit19_Fewchannel,'string'));
                                 kuthreshold1=str2num(get(handles.edit17_Fewchannel,'string'));
                                kuthreshold2=str2num(get(handles.edit20_Fewchannel,'string'));
                                vathreshold1=str2num(get(handles.edit21_Fewchannel,'string'));
                                vathreshold2=str2num(get(handles.edit22_Fewchannel,'string'));
                                [YfastICA,W] = ICA_threshold_fastica(Ybss,WC,Wica,P_ica,0,0,enthreshold1,enthreshold2,kuthreshold1,kuthreshold2,vathreshold1,vathreshold2);
                            end
                               if  get(handles.checkbox1_Fewchannel,'Value')==1&&get(handles.checkbox2_Fewchannel,'Value')==1&&get(handles.checkbox3_Fewchannel,'Value')==1&&get(handles.checkbox4_Fewchannel,'Value')==1
                               acthreshold1=str2num(get(handles.edit14_Fewchannel,'string'));
                                acthreshold2=str2num(get(handles.edit18_Fewchannel,'string'));
                                enthreshold1=str2num(get(handles.edit16_Fewchannel,'string'));
                                enthreshold2=str2num(get(handles.edit19_Fewchannel,'string'));
                                 kuthreshold1=str2num(get(handles.edit17_Fewchannel,'string'));
                                kuthreshold2=str2num(get(handles.edit20_Fewchannel,'string'));
                                vathreshold1=str2num(get(handles.edit21_Fewchannel,'string'));
                                vathreshold2=str2num(get(handles.edit22_Fewchannel,'string'));
                                [YfastICA,W] = ICA_threshold_fastica(Ybss,WC,Wica,P_ica,acthreshold1,acthreshold2,enthreshold1,enthreshold2,kuthreshold1,kuthreshold2,vathreshold1,vathreshold2);
                              end
                            [Youtput] = fewEEG_recon(YfastICA,existingdata,imfnumbermemd,fs);
                        case 2               %sobi
                            if get(handles.checkbox1_Fewchannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit14_Fewchannel,'string'));
                                acthreshold2=str2num(get(handles.edit18_Fewchannel,'string'));
                                [Ysobi,W] = ICA_threshold_sobi(Ybss,WC,Wica,P_ica,acthreshold1,acthreshold2,10000,10000,10000,10000,10000,10000);
                            end
                            if get(handles.checkbox2_Fewchannel,'Value')==1 ;
                                enthreshold1=str2num(get(handles.edit16_Fewchannel,'string'));
                                enthreshold2=str2num(get(handles.edit19_Fewchannel,'string'));
                                [Ysobi,W] = ICA_threshold_sobi(Ybss,WC,Wica,P_ica,0,0,enthreshold1,enthreshold2,10000,10000,10000,10000);
                            end
                            if get(handles.checkbox3_Fewchannel,'Value')==1
                                kuthreshold1=str2num(get(handles.edit17_Fewchannel,'string'));
                                kuthreshold2=str2num(get(handles.edit20_Fewchannel,'string'));
                                [Ysobi,W] = ICA_threshold_sobi(Ybss,WC,Wica,P_ica,0,0,10000,10000,kuthreshold1,kuthreshold2,10000,10000);
                            end
                             if get(handles.checkbox4_Fewchannel,'Value')==1
                                vathreshold1=str2num(get(handles.edit21_Fewchannel,'string'));
                                vathreshold2=str2num(get(handles.edit22_Fewchannel,'string'));
                                [Ysobi,W] = ICA_threshold_sobi(Ybss,WC,Wica,P_ica,0,0,10000,10000,10000,10000,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox1_Fewchannel,'Value')==1&&get(handles.checkbox2_Fewchannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit14_Fewchannel,'string'));
                                acthreshold2=str2num(get(handles.edit18_Fewchannel,'string'));
                                enthreshold1=str2num(get(handles.edit16_Fewchannel,'string'));
                                enthreshold2=str2num(get(handles.edit19_Fewchannel,'string'));
                                [Ysobi,W] = ICA_threshold_sobi(Ybss,WC,Wica,P_ica,acthreshold1,acthreshold2,enthreshold1,enthreshold2,10000,10000,10000,10000);
                            end
                            if  get(handles.checkbox1_Fewchannel,'Value')==1&&get(handles.checkbox3_Fewchannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit16_Fewchannel,'string'));
                                acthreshold2=str2num(get(handles.edit19_Fewchannel,'string'));
                                kuthreshold1=str2num(get(handles.edit17_Fewchannel,'string'));
                                kuthreshold2=str2num(get(handles.edit20_Fewchannel,'string'));
                                [Ysobi,W] = ICA_threshold_sobi(Ybss,WC,Wica,P_ica,acthreshold1,acthreshold2,10000,10000,kuthreshold1,kuthreshold2,10000,10000);
                            end
                            if  get(handles.checkbox1_Fewchannel,'Value')==1&&get(handles.checkbox4_Fewchannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit16_Fewchannel,'string'));
                                acthreshold2=str2num(get(handles.edit19_Fewchannel,'string'));
                                vathreshold1=str2num(get(handles.edit21_Fewchannel,'string'));
                                vathreshold2=str2num(get(handles.edit22_Fewchannel,'string'));
                                [Ysobi,W] = ICA_threshold_sobi(Ybss,WC,Wica,P_ica,acthreshold1,acthreshold2,10000,10000,10000,10000,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox2_Fewchannel,'Value')==1&&get(handles.checkbox3_Fewchannel,'Value')==1
                                enthreshold1=str2num(get(handles.edit74_Fewchannel,'string'));
                                enthreshold2=str2num(get(handles.edit85_Fewchannel,'string'));
                                kuthreshold1=str2num(get(handles.edit76_Fewchannel,'string'));
                                kuthreshold2=str2num(get(handles.edit86_Fewchannel,'string'));
                                [Ysobi,W] = ICA_threshold_sobi(Ybss,WC,Wica,P_ica,0,0,enthreshold1,enthreshold2,kuthreshold1,kuthreshold2,10000,10000);
                            end
                            if  get(handles.checkbox2_Fewchannel,'Value')==1&&get(handles.checkbox4_Fewchannel,'Value')==1
                                enthreshold1=str2num(get(handles.edit74_Fewchannel,'string'));
                                enthreshold2=str2num(get(handles.edit85_Fewchannel,'string'));
                                vathreshold1=str2num(get(handles.edit21_Fewchannel,'string'));
                                vathreshold2=str2num(get(handles.edit22_Fewchannel,'string'));
                                [Ysobi,W] = ICA_threshold_sobi(Ybss,WC,Wica,P_ica,0,0,enthreshold1,enthreshold2,10000,10000,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox3_Fewchannel,'Value')==1&&get(handles.checkbox4_Fewchannel,'Value')==1
                                kuthreshold1=str2num(get(handles.edit76_Fewchannel,'string'));
                                kuthreshold2=str2num(get(handles.edit86_Fewchannel,'string'));
                                vathreshold1=str2num(get(handles.edit21_Fewchannel,'string'));
                                vathreshold2=str2num(get(handles.edit22_Fewchannel,'string'));
                                [Ysobi,W] = ICA_threshold_sobi(Ybss,WC,Wica,P_ica,0,0,10000,10000,kuthreshold1,kuthreshold2,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox1_Fewchannel,'Value')==1&&get(handles.checkbox2_Fewchannel,'Value')==1&&get(handles.checkbox3_Fewchannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit14_Fewchannel,'string'));
                                acthreshold2=str2num(get(handles.edit18_Fewchannel,'string'));
                                enthreshold1=str2num(get(handles.edit16_Fewchannel,'string'));
                                enthreshold2=str2num(get(handles.edit19_Fewchannel,'string'));
                                kuthreshold1=str2num(get(handles.edit17_Fewchannel,'string'));
                                kuthreshold2=str2num(get(handles.edit20_Fewchannel,'string'));
                                [Ysobi,W] = ICA_threshold_sobi(Ybss,WC,Wica,P_ica,acthreshold1,acthreshold2,enthreshold1,enthreshold2,kuthreshold1,kuthreshold2,10000,10000);
                            end
                            if  get(handles.checkbox1_Fewchannel,'Value')==1&&get(handles.checkbox2_Fewchannel,'Value')==1&&get(handles.checkbox4_Fewchannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit14_Fewchannel,'string'));
                                acthreshold2=str2num(get(handles.edit18_Fewchannel,'string'));
                                enthreshold1=str2num(get(handles.edit16_Fewchannel,'string'));
                                enthreshold2=str2num(get(handles.edit19_Fewchannel,'string'));
                                vathreshold1=str2num(get(handles.edit21_Fewchannel,'string'));
                                vathreshold2=str2num(get(handles.edit22_Fewchannel,'string'));
                                [Ysobi,W] = ICA_threshold_sobi(Ybss,WC,Wica,P_ica,acthreshold1,acthreshold2,enthreshold1,enthreshold2,10000,10000,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox1_Fewchannel,'Value')==1&&get(handles.checkbox3_Fewchannel,'Value')==1&&get(handles.checkbox4_Fewchannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit14_Fewchannel,'string'));
                                acthreshold2=str2num(get(handles.edit18_Fewchannel,'string'));
                                kuthreshold1=str2num(get(handles.edit17_Fewchannel,'string'));
                                kuthreshold2=str2num(get(handles.edit20_Fewchannel,'string'));
                                vathreshold1=str2num(get(handles.edit21_Fewchannel,'string'));
                                vathreshold2=str2num(get(handles.edit22_Fewchannel,'string'));
                                [Ysobi,W] = ICA_threshold_sobi(Ybss,WC,Wica,P_ica,acthreshold1,acthreshold2,10000,10000,kuthreshold1,kuthreshold2,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox2_Fewchannel,'Value')==1&&get(handles.checkbox3_Fewchannel,'Value')==1&&get(handles.checkbox4_Fewchannel,'Value')==1
                                enthreshold1=str2num(get(handles.edit16_Fewchannel,'string'));
                                enthreshold2=str2num(get(handles.edit19_Fewchannel,'string'));
                                kuthreshold1=str2num(get(handles.edit17_Fewchannel,'string'));
                                kuthreshold2=str2num(get(handles.edit20_Fewchannel,'string'));
                                vathreshold1=str2num(get(handles.edit21_Fewchannel,'string'));
                                vathreshold2=str2num(get(handles.edit22_Fewchannel,'string'));
                                [Ysobi,W] = ICA_threshold_sobi(Ybss,WC,Wica,P_ica,0,0,enthreshold1,enthreshold2,kuthreshold1,kuthreshold2,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox1_Fewchannel,'Value')==1&&get(handles.checkbox2_Fewchannel,'Value')==1&&get(handles.checkbox3_Fewchannel,'Value')==1&&get(handles.checkbox4_Fewchannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit14_Fewchannel,'string'));
                                acthreshold2=str2num(get(handles.edit18_Fewchannel,'string'));
                                enthreshold1=str2num(get(handles.edit16_Fewchannel,'string'));
                                enthreshold2=str2num(get(handles.edit19_Fewchannel,'string'));
                                kuthreshold1=str2num(get(handles.edit17_Fewchannel,'string'));
                                kuthreshold2=str2num(get(handles.edit20_Fewchannel,'string'));
                                vathreshold1=str2num(get(handles.edit21_Fewchannel,'string'));
                                vathreshold2=str2num(get(handles.edit22_Fewchannel,'string'));
                                [Ysobi,W] = ICA_threshold_sobi(Ybss,WC,Wica,P_ica,acthreshold1,acthreshold2,enthreshold1,enthreshold2,kuthreshold1,kuthreshold2,vathreshold1,vathreshold2);
                            end
                            [Youtput] = fewEEG_recon(Ysobi,existingdata,imfnumbermemd,fs);
                        case 3               %jade
                            
                            if get(handles.checkbox1_Fewchannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit14_Fewchannel,'string'));
                                acthreshold2=str2num(get(handles.edit18_Fewchannel,'string'));
                                [Yjade,W] = ICA_threshold_jade(Ybss,WC,B,P_ica,acthreshold1,acthreshold2,10000,10000,10000,10000,10000,10000) ;
                            end
                            if get(handles.checkbox2_Fewchannel,'Value')==1 ;
                                enthreshold1=str2num(get(handles.edit16_Fewchannel,'string'));
                                enthreshold2=str2num(get(handles.edit19_Fewchannel,'string'));
                                [Yjade,W] = ICA_threshold_jade(Ybss,WC,B,P_ica,0,0,enthreshold1,enthreshold2,10000,10000,10000,10000) ;
                            end
                            if get(handles.checkbox3_Fewchannel,'Value')==1
                                kuthreshold1=str2num(get(handles.edit17_Fewchannel,'string'));
                                kuthreshold2=str2num(get(handles.edit20_Fewchannel,'string'));
                                [Yjade,W] = ICA_threshold_jade(Ybss,WC,B,P_ica,0,0,10000,10000,kuthreshold1,kuthreshold2,10000,10000) ;
                            end
                            if get(handles.checkbox4_Fewchannel,'Value')==1
                                vathreshold1=str2num(get(handles.edit21_Fewchannel,'string'));
                                vathreshold2=str2num(get(handles.edit22_Fewchannel,'string'));
                                [Yjade,W] = ICA_threshold_jade(Ybss,WC,B,P_ica,0,0,10000,10000,10000,10000,vathreshold1,vathreshold2) ;
                            end
                            if  get(handles.checkbox1_Fewchannel,'Value')==1&&get(handles.checkbox2_Fewchannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit14_Fewchannel,'string'));
                                acthreshold2=str2num(get(handles.edit18_Fewchannel,'string'));
                                enthreshold1=str2num(get(handles.edit16_Fewchannel,'string'));
                                enthreshold2=str2num(get(handles.edit19_Fewchannel,'string'));
                                [Yjade,W] = ICA_threshold_jade(Ybss,WC,B,P_ica,acthreshold1,acthreshold2,enthreshold1,enthreshold2,10000,10000,10000,10000) ;
                            end
                            if  get(handles.checkbox1_Fewchannel,'Value')==1&&get(handles.checkbox3_Fewchannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit14_Fewchannel,'string'));
                                acthreshold2=str2num(get(handles.edit18_Fewchannel,'string'));
                                kuthreshold1=str2num(get(handles.edit17_Fewchannel,'string'));
                                kuthreshold2=str2num(get(handles.edit20_Fewchannel,'string'));
                                [Yjade,W] = ICA_threshold_jade(Ybss,WC,B,P_ica,acthreshold1,acthreshold2,10000,10000, kuthreshold1, kuthreshold2,10000,10000);
                            end
                            if  get(handles.checkbox1_Fewchannel,'Value')==1&&get(handles.checkbox4_Fewchannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit14_Fewchannel,'string'));
                                acthreshold2=str2num(get(handles.edit18_Fewchannel,'string'));
                                vathreshold1=str2num(get(handles.edit21_Fewchannel,'string'));
                                vathreshold2=str2num(get(handles.edit22_Fewchannel,'string'));
                                [Yjade,W] = ICA_threshold_jade(Ybss,WC,B,P_ica,acthreshold1,acthreshold2,10000,10000, 10000, 10000,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox2_Fewchannel,'Value')==1&&get(handles.checkbox3_Fewchannel,'Value')==1
                                enthreshold1=str2num(get(handles.edit16_Fewchannel,'string'));
                                enthreshold2=str2num(get(handles.edit19_Fewchannel,'string'));
                                kuthreshold1=str2num(get(handles.edit17_Fewchannel,'string'));
                                kuthreshold2=str2num(get(handles.edit20_Fewchannel,'string'));
                                [Yjade,W] = ICA_threshold_jade(Ybss,WC,B,P_ica,0,0,enthreshold1,enthreshold2,kuthreshold1,kuthreshold2,10000,10000) ;
                            end
                            if  get(handles.checkbox2_Fewchannel,'Value')==1&&get(handles.checkbox4_Fewchannel,'Value')==1
                                enthreshold1=str2num(get(handles.edit16_Fewchannel,'string'));
                                enthreshold2=str2num(get(handles.edit19_Fewchannel,'string'));
                                vathreshold1=str2num(get(handles.edit21_Fewchannel,'string'));
                                vathreshold2=str2num(get(handles.edit22_Fewchannel,'string'));
                                [Yjade,W] = ICA_threshold_jade(Ybss,WC,B,P_ica,0,0,enthreshold1,enthreshold2,10000,10000,vathreshold1,vathreshold2) ;
                            end
                            if  get(handles.checkbox3_Fewchannel,'Value')==1&&get(handles.checkbox4_Fewchannel,'Value')==1
                                kuthreshold1=str2num(get(handles.edit17_Fewchannel,'string'));
                                kuthreshold2=str2num(get(handles.edit20_Fewchannel,'string'));
                                vathreshold1=str2num(get(handles.edit21_Fewchannel,'string'));
                                vathreshold2=str2num(get(handles.edit22_Fewchannel,'string'));
                                [Yjade,W] = ICA_threshold_jade(Ybss,WC,B,P_ica,0,0,10000,10000,kuthreshold1,kuthreshold2,vathreshold1,vathreshold2) ;
                            end
                            if  get(handles.checkbox1_Fewchannel,'Value')==1&&get(handles.checkbox2_Fewchannel,'Value')==1&&get(handles.checkbox3_Fewchannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit14_Fewchannel,'string'));
                                acthreshold2=str2num(get(handles.edit18_Fewchannel,'string'));
                                enthreshold1=str2num(get(handles.edit16_Fewchannel,'string'));
                                enthreshold2=str2num(get(handles.edit19_Fewchannel,'string'));
                                kuthreshold1=str2num(get(handles.edit17_Fewchannel,'string'));
                                kuthreshold2=str2num(get(handles.edit20_Fewchannel,'string'));
                                [Yjade,W] = ICA_threshold_jade(Ybss,WC,B,P_ica,acthreshold1,acthreshold2,enthreshold1,enthreshold2,kuthreshold1,kuthreshold2,10000,10000) ;
                            end
                            if  get(handles.checkbox1_Fewchannel,'Value')==1&&get(handles.checkbox2_Fewchannel,'Value')==1&&get(handles.checkbox4_Fewchannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit14_Fewchannel,'string'));
                                acthreshold2=str2num(get(handles.edit18_Fewchannel,'string'));
                                enthreshold1=str2num(get(handles.edit16_Fewchannel,'string'));
                                enthreshold2=str2num(get(handles.edit19_Fewchannel,'string'));
                                vathreshold1=str2num(get(handles.edit21_Fewchannel,'string'));
                                vathreshold2=str2num(get(handles.edit22_Fewchannel,'string'));
                                [Yjade,W] = ICA_threshold_jade(Ybss,WC,B,P_ica,acthreshold1,acthreshold2,enthreshold1,enthreshold2,10000,10000,vathreshold1,vathreshold2) ;
                            end
                            if  get(handles.checkbox1_Fewchannel,'Value')==1&&get(handles.checkbox3_Fewchannel,'Value')==1&&get(handles.checkbox4_Fewchannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit14_Fewchannel,'string'));
                                acthreshold2=str2num(get(handles.edit18_Fewchannel,'string'));
                                kuthreshold1=str2num(get(handles.edit17_Fewchannel,'string'));
                                kuthreshold2=str2num(get(handles.edit20_Fewchannel,'string'));
                                vathreshold1=str2num(get(handles.edit21_Fewchannel,'string'));
                                vathreshold2=str2num(get(handles.edit22_Fewchannel,'string'));
                                [Yjade,W] = ICA_threshold_jade(Ybss,WC,B,P_ica,acthreshold1,acthreshold2,10000,10000,kuthreshold1,kuthreshold2,vathreshold1,vathreshold2) ;
                            end
                            if  get(handles.checkbox2_Fewchannel,'Value')==1&&get(handles.checkbox3_Fewchannel,'Value')==1&&get(handles.checkbox4_Fewchannel,'Value')==1
                                enthreshold1=str2num(get(handles.edit16_Fewchannel,'string'));
                                enthreshold2=str2num(get(handles.edit19_Fewchannel,'string'));
                                kuthreshold1=str2num(get(handles.edit17_Fewchannel,'string'));
                                kuthreshold2=str2num(get(handles.edit20_Fewchannel,'string'));
                                vathreshold1=str2num(get(handles.edit21_Fewchannel,'string'));
                                vathreshold2=str2num(get(handles.edit22_Fewchannel,'string'));
                                [Yjade,W] = ICA_threshold_jade(Ybss,WC,B,P_ica,0,0,enthreshold1,enthreshold2,kuthreshold1,kuthreshold2,vathreshold1,vathreshold2) ;
                            end
                            if  get(handles.checkbox1_Fewchannel,'Value')==1&&get(handles.checkbox2_Fewchannel,'Value')==1&&get(handles.checkbox3_Fewchannel,'Value')==1&&get(handles.checkbox4_Fewchannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit14_Fewchannel,'string'));
                                acthreshold2=str2num(get(handles.edit18_Fewchannel,'string'));
                                enthreshold1=str2num(get(handles.edit16_Fewchannel,'string'));
                                enthreshold2=str2num(get(handles.edit19_Fewchannel,'string'));
                                kuthreshold1=str2num(get(handles.edit17_Fewchannel,'string'));
                                kuthreshold2=str2num(get(handles.edit20_Fewchannel,'string'));
                                vathreshold1=str2num(get(handles.edit21_Fewchannel,'string'));
                                vathreshold2=str2num(get(handles.edit22_Fewchannel,'string'));
                                [Yjade,W] = ICA_threshold_jade(Ybss,WC,B,P_ica,acthreshold1,acthreshold2,enthreshold1,enthreshold2,kuthreshold1,kuthreshold2,vathreshold1,vathreshold2) ;
                            end
                            [Youtput] = fewEEG_recon(Yjade,existingdata,imfnumbermemd,fs);
                        case 4  %infomax
              
                            if get(handles.checkbox1_Fewchannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit14_Fewchannel,'string'));
                                acthreshold2=str2num(get(handles.edit18_Fewchannel,'string'));
                                [Yinfomax,W] = ICA_threshold_infomax(Ybss,WC,Wica,P_ica,acthreshold1,acthreshold2,10000,10000,10000,10000,10000,10000);
                            end
                            if get(handles.checkbox2_Fewchannel,'Value')==1 ;
                                enthreshold1=str2num(get(handles.edit16_Fewchannel,'string'));
                                enthreshold2=str2num(get(handles.edit19_Fewchannel,'string'));
                                [Yinfomax,W] = ICA_threshold_infomax(Ybss,WC,Wica,P_ica,0,0,enthreshold1,enthreshold2,10000,10000,10000,10000);
                            end
                            if get(handles.checkbox3_Fewchannel,'Value')==1
                                kuthreshold1=str2num(get(handles.edit17_Fewchannel,'string'));
                                kuthreshold2=str2num(get(handles.edit20_Fewchannel,'string'));
                                [Yinfomax,W] = ICA_threshold_infomax(Ybss,WC,Wica,P_ica,0,0,10000,10000,kuthreshold1,kuthreshold2,10000,10000);
                            end
                            if get(handles.checkbox4_Fewchannel,'Value')==1
                                vathreshold1=str2num(get(handles.edit21_Fewchannel,'string'));
                                vathreshold2=str2num(get(handles.edit22_Fewchannel,'string'));
                                [Yinfomax,W] = ICA_threshold_infomax(Ybss,WC,Wica,P_ica,0,0,10000,10000,10000,10000,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox1_Fewchannel,'Value')==1&&get(handles.checkbox2_Fewchannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit14_Fewchannel,'string'));
                                acthreshold2=str2num(get(handles.edit18_Fewchannel,'string'));
                                enthreshold1=str2num(get(handles.edit16_Fewchannel,'string'));
                                enthreshold2=str2num(get(handles.edit19_Fewchannel,'string'));
                                [Yinfomax,W] = ICA_threshold_infomax(Ybss,WC,Wica,P_ica,acthreshold1,acthreshold2,enthreshold1,enthreshold2,10000,10000,10000,10000);
                            end
                            if  get(handles.checkbox1_Fewchannel,'Value')==1&&get(handles.checkbox3_Fewchannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit16_Fewchannel,'string'));
                                acthreshold2=str2num(get(handles.edit19_Fewchannel,'string'));
                                kuthreshold1=str2num(get(handles.edit17_Fewchannel,'string'));
                                kuthreshold2=str2num(get(handles.edit20_Fewchannel,'string'));
                                [Yinfomax,W] = ICA_threshold_infomax(Ybss,WC,Wica,P_ica,acthreshold1,acthreshold2,10000,10000,kuthreshold1,kuthreshold2,10000,10000);
                            end
                            if  get(handles.checkbox1_Fewchannel,'Value')==1&&get(handles.checkbox4_Fewchannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit16_Fewchannel,'string'));
                                acthreshold2=str2num(get(handles.edit19_Fewchannel,'string'));
                                vathreshold1=str2num(get(handles.edit21_Fewchannel,'string'));
                                vathreshold2=str2num(get(handles.edit22_Fewchannel,'string'));
                                [Yinfomax,W] = ICA_threshold_infomax(Ybss,WC,Wica,P_ica,acthreshold1,acthreshold2,10000,10000,10000,10000,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox2_Fewchannel,'Value')==1&&get(handles.checkbox3_Fewchannel,'Value')==1
                                enthreshold1=str2num(get(handles.edit74_Fewchannel,'string'));
                                enthreshold2=str2num(get(handles.edit85_Fewchannel,'string'));
                                kuthreshold1=str2num(get(handles.edit76_Fewchannel,'string'));
                                kuthreshold2=str2num(get(handles.edit86_Fewchannel,'string'));
                                [Yinfomax,W] = ICA_threshold_infomax(Ybss,WC,Wica,P_ica,0,0,enthreshold1,enthreshold2,kuthreshold1,kuthreshold2,10000,10000);
                            end
                            if  get(handles.checkbox2_Fewchannel,'Value')==1&&get(handles.checkbox4_Fewchannel,'Value')==1
                                enthreshold1=str2num(get(handles.edit74_Fewchannel,'string'));
                                enthreshold2=str2num(get(handles.edit85_Fewchannel,'string'));
                                vathreshold1=str2num(get(handles.edit21_Fewchannel,'string'));
                                vathreshold2=str2num(get(handles.edit22_Fewchannel,'string'));
                                [Yinfomax,W] = ICA_threshold_infomax(Ybss,WC,Wica,P_ica,0,0,enthreshold1,enthreshold2,10000,10000,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox3_Fewchannel,'Value')==1&&get(handles.checkbox4_Fewchannel,'Value')==1
                                kuthreshold1=str2num(get(handles.edit76_Fewchannel,'string'));
                                kuthreshold2=str2num(get(handles.edit86_Fewchannel,'string'));
                                vathreshold1=str2num(get(handles.edit21_Fewchannel,'string'));
                                vathreshold2=str2num(get(handles.edit22_Fewchannel,'string'));
                                [Yinfomax,W] = ICA_threshold_infomax(Ybss,WC,Wica,P_ica,0,0,10000,10000,kuthreshold1,kuthreshold2,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox1_Fewchannel,'Value')==1&&get(handles.checkbox2_Fewchannel,'Value')==1&&get(handles.checkbox3_Fewchannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit14_Fewchannel,'string'));
                                acthreshold2=str2num(get(handles.edit18_Fewchannel,'string'));
                                enthreshold1=str2num(get(handles.edit16_Fewchannel,'string'));
                                enthreshold2=str2num(get(handles.edit19_Fewchannel,'string'));
                                kuthreshold1=str2num(get(handles.edit17_Fewchannel,'string'));
                                kuthreshold2=str2num(get(handles.edit20_Fewchannel,'string'));
                                [Yinfomax,W] = ICA_threshold_infomax(Ybss,WC,Wica,P_ica,acthreshold1,acthreshold2,enthreshold1,enthreshold2,kuthreshold1,kuthreshold2,10000,10000);
                            end
                            if  get(handles.checkbox1_Fewchannel,'Value')==1&&get(handles.checkbox2_Fewchannel,'Value')==1&&get(handles.checkbox4_Fewchannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit14_Fewchannel,'string'));
                                acthreshold2=str2num(get(handles.edit18_Fewchannel,'string'));
                                enthreshold1=str2num(get(handles.edit16_Fewchannel,'string'));
                                enthreshold2=str2num(get(handles.edit19_Fewchannel,'string'));
                                vathreshold1=str2num(get(handles.edit21_Fewchannel,'string'));
                                vathreshold2=str2num(get(handles.edit22_Fewchannel,'string'));
                                [Yinfomax,W] = ICA_threshold_infomax(Ybss,WC,Wica,P_ica,acthreshold1,acthreshold2,enthreshold1,enthreshold2,10000,10000,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox1_Fewchannel,'Value')==1&&get(handles.checkbox3_Fewchannel,'Value')==1&&get(handles.checkbox4_Fewchannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit14_Fewchannel,'string'));
                                acthreshold2=str2num(get(handles.edit18_Fewchannel,'string'));
                                kuthreshold1=str2num(get(handles.edit17_Fewchannel,'string'));
                                kuthreshold2=str2num(get(handles.edit20_Fewchannel,'string'));
                                vathreshold1=str2num(get(handles.edit21_Fewchannel,'string'));
                                vathreshold2=str2num(get(handles.edit22_Fewchannel,'string'));
                                [Yinfomax,W] = ICA_threshold_infomax(Ybss,WC,Wica,P_ica,acthreshold1,acthreshold2,10000,10000,kuthreshold1,kuthreshold2,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox2_Fewchannel,'Value')==1&&get(handles.checkbox3_Fewchannel,'Value')==1&&get(handles.checkbox4_Fewchannel,'Value')==1
                                enthreshold1=str2num(get(handles.edit16_Fewchannel,'string'));
                                enthreshold2=str2num(get(handles.edit19_Fewchannel,'string'));
                                kuthreshold1=str2num(get(handles.edit17_Fewchannel,'string'));
                                kuthreshold2=str2num(get(handles.edit20_Fewchannel,'string'));
                                vathreshold1=str2num(get(handles.edit21_Fewchannel,'string'));
                                vathreshold2=str2num(get(handles.edit22_Fewchannel,'string'));
                                [Yinfomax,W] = ICA_threshold_infomax(Ybss,WC,Wica,P_ica,0,0,enthreshold1,enthreshold2,kuthreshold1,kuthreshold2,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox1_Fewchannel,'Value')==1&&get(handles.checkbox2_Fewchannel,'Value')==1&&get(handles.checkbox3_Fewchannel,'Value')==1&&get(handles.checkbox4_Fewchannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit14_Fewchannel,'string'));
                                acthreshold2=str2num(get(handles.edit18_Fewchannel,'string'));
                                enthreshold1=str2num(get(handles.edit16_Fewchannel,'string'));
                                enthreshold2=str2num(get(handles.edit19_Fewchannel,'string'));
                                kuthreshold1=str2num(get(handles.edit17_Fewchannel,'string'));
                                kuthreshold2=str2num(get(handles.edit20_Fewchannel,'string'));
                                vathreshold1=str2num(get(handles.edit21_Fewchannel,'string'));
                                vathreshold2=str2num(get(handles.edit22_Fewchannel,'string'));
                                [Yinfomax,W] = ICA_threshold_infomax(Ybss,WC,Wica,P_ica,acthreshold1,acthreshold2,enthreshold1,enthreshold2,kuthreshold1,kuthreshold2,vathreshold1,vathreshold2);
                            end
                            [Youtput] = fewEEG_recon(Yinfomax,existingdata,imfnumbermemd,fs);
                    end
                case 2      %CCA
                    if get(handles.checkbox1_Fewchannel,'Value')==1
                        acthreshold1=str2num(get(handles.edit14_Fewchannel,'string'));
                        acthreshold2=str2num(get(handles.edit18_Fewchannel,'string'));
                        [Ycca,W] = CCA_threshold(Ybss,B,WC,acthreshold1,acthreshold2,10000,10000,10000,10000,10000,10000);
                    end
                    if get(handles.checkbox2_Fewchannel,'Value')==1 ;
                        enthreshold1=str2num(get(handles.edit16_Fewchannel,'string'));
                        enthreshold2=str2num(get(handles.edit19_Fewchannel,'string'));
                        [Ycca,W] = CCA_threshold(Ybss,B,WC,0,0,enthreshold1,enthreshold2,10000,10000,10000,10000);
                    end
                    if get(handles.checkbox3_Fewchannel,'Value')==1
                        kuthreshold1=str2num(get(handles.edit17_Fewchannel,'string'));
                        kuthreshold2=str2num(get(handles.edit20_Fewchannel,'string'));
                        [Ycca,W] = CCA_threshold(Ybss,B,WC,0,0,10000,10000,kuthreshold1,kuthreshold2,10000,10000);
                    end
                    if get(handles.checkbox4_Fewchannel,'Value')==1
                        vathreshold1=str2num(get(handles.edit21_Fewchannel,'string'));
                        vathreshold2=str2num(get(handles.edit22_Fewchannel,'string'));
                        [Ycca,W] = CCA_threshold(Ybss,B,WC,0,0,10000,10000,10000,10000,vathreshold1,vathreshold2);
                    end
                    if  get(handles.checkbox1_Fewchannel,'Value')==1&&get(handles.checkbox2_Fewchannel,'Value')==1
                        acthreshold1=str2num(get(handles.edit14_Fewchannel,'string'));
                        acthreshold2=str2num(get(handles.edit18_Fewchannel,'string'));
                        enthreshold1=str2num(get(handles.edit16_Fewchannel,'string'));
                        enthreshold2=str2num(get(handles.edit19_Fewchannel,'string'));
                        [Ycca,W] = CCA_threshold(Ybss,B,WC,acthreshold1,acthreshold2,enthreshold1,enthreshold2,10000,10000,10000,10000);
                    end
                    if  get(handles.checkbox1_Fewchannel,'Value')==1&&get(handles.checkbox3_Fewchannel,'Value')==1
                        acthreshold1=str2num(get(handles.edit14_Fewchannel,'string'));
                        acthreshold2=str2num(get(handles.edit18_Fewchannel,'string'));
                        kuthreshold1=str2num(get(handles.edit17_Fewchannel,'string'));
                        kuthreshold2=str2num(get(handles.edit20_Fewchannel,'string'));
                        [Ycca,W] = CCA_threshold(Ybss,B,WC,acthreshold1,acthreshold2,10000,10000,kuthreshold1,kuthreshold2,10000,10000);
                    end
                    if  get(handles.checkbox1_Fewchannel,'Value')==1&&get(handles.checkbox4_Fewchannel,'Value')==1
                        acthreshold1=str2num(get(handles.edit14_Fewchannel,'string'));
                        acthreshold2=str2num(get(handles.edit18_Fewchannel,'string'));
                        vathreshold1=str2num(get(handles.edit21_Fewchannel,'string'));
                        vathreshold2=str2num(get(handles.edit22_Fewchannel,'string'));
                        [Ycca,W] = CCA_threshold(Ybss,B,WC,acthreshold1,acthreshold2,10000,10000,10000,10000,vathreshold1,vathreshold2);
                    end
                    if  get(handles.checkbox2_Fewchannel,'Value')==1&&get(handles.checkbox3_Fewchannel,'Value')==1
                        enthreshold1=str2num(get(handles.edit16_Fewchannel,'string'));
                        enthreshold2=str2num(get(handles.edit19_Fewchannel,'string'));
                        kuthreshold1=str2num(get(handles.edit17_Fewchannel,'string'));
                        kuthreshold2=str2num(get(handles.edit20_Fewchannel,'string'));
                        [Ycca,W] = CCA_threshold(Ybss,B,WC,0,0,enthreshold1,enthreshold2, kuthreshold1, kuthreshold2,10000,10000);
                    end
                    if  get(handles.checkbox2_Fewchannel,'Value')==1&&get(handles.checkbox4_Fewchannel,'Value')==1
                        enthreshold1=str2num(get(handles.edit16_Fewchannel,'string'));
                        enthreshold2=str2num(get(handles.edit19_Fewchannel,'string'));
                        vathreshold1=str2num(get(handles.edit21_Fewchannel,'string'));
                        vathreshold2=str2num(get(handles.edit22_Fewchannel,'string'));
                        [Ycca,W] = CCA_threshold(Ybss,B,WC,0,0,enthreshold1,enthreshold2, 10000, 10000,vathreshold1,vathreshold2);
                    end
                    if  get(handles.checkbox3_Fewchannel,'Value')==1&&get(handles.checkbox4_Fewchannel,'Value')==1
                        kuthreshold1=str2num(get(handles.edit17_Fewchannel,'string'));
                        kuthreshold2=str2num(get(handles.edit20_Fewchannel,'string'));
                        vathreshold1=str2num(get(handles.edit21_Fewchannel,'string'));
                        vathreshold2=str2num(get(handles.edit22_Fewchannel,'string'));
                        [Ycca,W] = CCA_threshold(Ybss,B,WC,0,0,10000,10000, kuthreshold1, kuthreshold2,vathreshold1,vathreshold2);
                    end
                    if  get(handles.checkbox1_Fewchannel,'Value')==1&&get(handles.checkbox2_Fewchannel,'Value')==1&&get(handles.checkbox3_Fewchannel,'Value')==1
                        acthreshold1=str2num(get(handles.edit14_Fewchannel,'string'));
                        acthreshold2=str2num(get(handles.edit18_Fewchannel,'string'));
                        enthreshold1=str2num(get(handles.edit16_Fewchannel,'string'));
                        enthreshold2=str2num(get(handles.edit19_Fewchannel,'string'));
                        kuthreshold1=str2num(get(handles.edit17_Fewchannel,'string'));
                        kuthreshold2=str2num(get(handles.edit20_Fewchannel,'string'));
                        [Ycca,W] = CCA_threshold(Ybss,B,WC,acthreshold1,acthreshold2,enthreshold1,enthreshold2,kuthreshold1,kuthreshold2,10000,10000);
                    end
                    if  get(handles.checkbox1_Fewchannel,'Value')==1&&get(handles.checkbox2_Fewchannel,'Value')==1&&get(handles.checkbox4_Fewchannel,'Value')==1
                        acthreshold1=str2num(get(handles.edit14_Fewchannel,'string'));
                        acthreshold2=str2num(get(handles.edit18_Fewchannel,'string'));
                        enthreshold1=str2num(get(handles.edit16_Fewchannel,'string'));
                        enthreshold2=str2num(get(handles.edit19_Fewchannel,'string'));
                        vathreshold1=str2num(get(handles.edit21_Fewchannel,'string'));
                        vathreshold2=str2num(get(handles.edit22_Fewchannel,'string'));
                        [Ycca,W] = CCA_threshold(Ybss,B,WC,acthreshold1,acthreshold2,enthreshold1,enthreshold2,10000,10000,vathreshold1,vathreshold2);
                    end
                    if  get(handles.checkbox1_Fewchannel,'Value')==1&&get(handles.checkbox3_Fewchannel,'Value')==1&&get(handles.checkbox4_Fewchannel,'Value')==1
                        acthreshold1=str2num(get(handles.edit14_Fewchannel,'string'));
                        acthreshold2=str2num(get(handles.edit18_Fewchannel,'string'));
                        kuthreshold1=str2num(get(handles.edit17_Fewchannel,'string'));
                        kuthreshold2=str2num(get(handles.edit20_Fewchannel,'string'));
                        vathreshold1=str2num(get(handles.edit21_Fewchannel,'string'));
                        vathreshold2=str2num(get(handles.edit22_Fewchannel,'string'));
                        [Ycca,W] = CCA_threshold(Ybss,B,WC,acthreshold1,acthreshold2,10000,10000,kuthreshold1,kuthreshold2,vathreshold1,vathreshold2);
                    end
                    if  get(handles.checkbox2_Fewchannel,'Value')==1&&get(handles.checkbox3_Fewchannel,'Value')==1&&get(handles.checkbox4_Fewchannel,'Value')==1
                        enthreshold1=str2num(get(handles.edit16_Fewchannel,'string'));
                        enthreshold2=str2num(get(handles.edit19_Fewchannel,'string'));
                        kuthreshold1=str2num(get(handles.edit17_Fewchannel,'string'));
                        kuthreshold2=str2num(get(handles.edit20_Fewchannel,'string'));
                        vathreshold1=str2num(get(handles.edit21_Fewchannel,'string'));
                        vathreshold2=str2num(get(handles.edit22_Fewchannel,'string'));
                        [Ycca,W] = CCA_threshold(Ybss,B,WC,0,0,enthreshold1,enthreshold2,kuthreshold1,kuthreshold2,vathreshold1,vathreshold2);
                    end
                    if  get(handles.checkbox1_Fewchannel,'Value')==1&&get(handles.checkbox2_Fewchannel,'Value')==1&&get(handles.checkbox3_Fewchannel,'Value')==1&&get(handles.checkbox4_Fewchannel,'Value')==1
                        acthreshold1=str2num(get(handles.edit14_Fewchannel,'string'));
                        acthreshold2=str2num(get(handles.edit18_Fewchannel,'string'));
                        enthreshold1=str2num(get(handles.edit16_Fewchannel,'string'));
                        enthreshold2=str2num(get(handles.edit19_Fewchannel,'string'));
                        kuthreshold1=str2num(get(handles.edit17_Fewchannel,'string'));
                        kuthreshold2=str2num(get(handles.edit20_Fewchannel,'string'));
                        vathreshold1=str2num(get(handles.edit21_Fewchannel,'string'));
                        vathreshold2=str2num(get(handles.edit22_Fewchannel,'string'));
                        [Ycca,W] = CCA_threshold(Ybss,B,WC,acthreshold1,acthreshold1,enthreshold1,enthreshold2,kuthreshold1,kuthreshold2,vathreshold1,vathreshold2);
                    end
                    [Youtput] = fewEEG_recon(Ycca,existingdata,imfnumbermemd,fs);
                case 3      %IVA
                    
                    if get(handles.checkbox1_Fewchannel,'Value')==1
                        acthreshold1=str2num(get(handles.edit14_Fewchannel,'string'));
                        acthreshold2=str2num(get(handles.edit18_Fewchannel,'string'));
                        [Yiva,W] = IVA_threshold(Ybss,F,WC,P_iva,acthreshold1,acthreshold2,10000,10000,10000,10000,10000,10000);
                    end
                    if get(handles.checkbox2_Fewchannel,'Value')==1
                        enthreshold1=str2num(get(handles.edit16_Fewchannel,'string'));
                        enthreshold2=str2num(get(handles.edit19_Fewchannel,'string'));
                        [Yiva,W] = IVA_threshold(Ybss,F,WC,P_iva,0,0,enthreshold1,enthreshold2,10000,10000,10000,10000);
                    end
                    if get(handles.checkbox3_Fewchannel,'Value')==1
                        kuthreshold1=str2num(get(handles.edit17_Fewchannel,'string'));
                        kuthreshold2=str2num(get(handles.edit20_Fewchannel,'string'));
                        [Yiva,W] = IVA_threshold(Ybss,F,WC,P_iva,0,0,10000,10000,kuthreshold1,kuthreshold2,10000,10000);
                    end
                    if get(handles.checkbox4_Fewchannel,'Value')==1
                        vathreshold1=str2num(get(handles.edit21_Fewchannel,'string'));
                        vathreshold2=str2num(get(handles.edit22_Fewchannel,'string'));
                        [Yiva,W] = IVA_threshold(Ybss,F,WC,P_iva,0,0,10000,10000,10000,10000,vathreshold1,vathreshold2);
                    end
                    if  get(handles.checkbox1_Fewchannel,'Value')==1&&get(handles.checkbox2_Fewchannel,'Value')==1
                        enthreshold1=str2num(get(handles.edit16_Fewchannel,'string'));
                        enthreshold2=str2num(get(handles.edit19_Fewchannel,'string'));
                        acthreshold1=str2num(get(handles.edit17_Fewchannel,'string'));
                        acthreshold2=str2num(get(handles.edit20_Fewchannel,'string'));
                        [Yiva,W] = IVA_threshold(Ybss,F,WC,P_iva,acthreshold1,acthreshold2,enthreshold1,enthreshold2, 10000,10000,10000,10000);
                    end
                    if  get(handles.checkbox1_Fewchannel,'Value')==1&&get(handles.checkbox3_Fewchannel,'Value')==1
                        acthreshold1=str2num(get(handles.edit14_Fewchannel,'string'));
                        acthreshold2=str2num(get(handles.edit18_Fewchannel,'string'));
                        kuthreshold1=str2num(get(handles.edit17_Fewchannel,'string'));
                        kuthreshold2=str2num(get(handles.edit20_Fewchannel,'string'));
                        [Yiva,W] = IVA_threshold(Ybss,F,WC,P_iva,acthreshold1,acthreshold2,10000,10000,kuthreshold1,kuthreshold2,10000,10000);
                    end
                    if  get(handles.checkbox1_Fewchannel,'Value')==1&&get(handles.checkbox4_Fewchannel,'Value')==1
                        acthreshold1=str2num(get(handles.edit14_Fewchannel,'string'));
                        acthreshold2=str2num(get(handles.edit18_Fewchannel,'string'));
                        vathreshold1=str2num(get(handles.edit21_Fewchannel,'string'));
                        vathreshold2=str2num(get(handles.edit22_Fewchannel,'string'));
                        [Yiva,W] = IVA_threshold(Ybss,F,WC,P_iva,acthreshold1,acthreshold2,10000,10000,10000,10000,vathreshold1,vathreshold2);
                    end
                    if  get(handles.checkbox2_Fewchannel,'Value')==1&&get(handles.checkbox3_Fewchannel,'Value')==1
                        enthreshold1=str2num(get(handles.edit16_Fewchannel,'string'));
                        enthreshold2=str2num(get(handles.edit19_Fewchannel,'string'));
                        kuthreshold1=str2num(get(handles.edit17_Fewchannel,'string'));
                        kuthreshold2=str2num(get(handles.edit20_Fewchannel,'string'));
                        [Yiva,W] = IVA_threshold(Ybss,F,WC,P_iva,0,0,enthreshold1,enthreshold2,kuthreshold1,kuthreshold2,10000,10000);
                    end
                    if  get(handles.checkbox2_Fewchannel,'Value')==1&&get(handles.checkbox4_Fewchannel,'Value')==1
                        enthreshold1=str2num(get(handles.edit16_Fewchannel,'string'));
                        enthreshold2=str2num(get(handles.edit19_Fewchannel,'string'));
                        vathreshold1=str2num(get(handles.edit21_Fewchannel,'string'));
                        vathreshold2=str2num(get(handles.edit22_Fewchannel,'string'));
                        [Yiva,W] = IVA_threshold(Ybss,F,WC,P_iva,0,0,enthreshold1,enthreshold2,10000,10000,vathreshold1,vathreshold2);
                    end
                    if  get(handles.checkbox3_Fewchannel,'Value')==1&&get(handles.checkbox4_Fewchannel,'Value')==1
                        kuthreshold1=str2num(get(handles.edit17_Fewchannel,'string'));
                        kuthreshold2=str2num(get(handles.edit20_Fewchannel,'string'));
                        vathreshold1=str2num(get(handles.edit21_Fewchannel,'string'));
                        vathreshold2=str2num(get(handles.edit22_Fewchannel,'string'));
                        [Yiva,W] = IVA_threshold(Ybss,F,WC,P_iva,0,0,10000,10000,kuthreshold1,kuthreshold2,vathreshold1,vathreshold2);
                    end
                    if  get(handles.checkbox1_Fewchannel,'Value')==1&&get(handles.checkbox2_Fewchannel,'Value')==1&&get(handles.checkbox3_Fewchannel,'Value')==1
                        acthreshold1=str2num(get(handles.edit14_Fewchannel,'string'));
                        acthreshold2=str2num(get(handles.edit18_Fewchannel,'string'));
                        enthreshold1=str2num(get(handles.edit16_Fewchannel,'string'));
                        enthreshold2=str2num(get(handles.edit19_Fewchannel,'string'));
                        kuthreshold1=str2num(get(handles.edit17_Fewchannel,'string'));
                        kuthreshold2=str2num(get(handles.edit20_Fewchannel,'string'));
                        [Yiva,W] = IVA_threshold(Ybss,F,WC,P_iva,acthreshold1,acthreshold2, enthreshold1, enthreshold2,kuthreshold1,kuthreshold2,10000,10000);
                    end
                    if  get(handles.checkbox1_Fewchannel,'Value')==1&&get(handles.checkbox2_Fewchannel,'Value')==1&&get(handles.checkbox4_Fewchannel,'Value')==1
                        acthreshold1=str2num(get(handles.edit14_Fewchannel,'string'));
                        acthreshold2=str2num(get(handles.edit18_Fewchannel,'string'));
                        enthreshold1=str2num(get(handles.edit16_Fewchannel,'string'));
                        enthreshold2=str2num(get(handles.edit19_Fewchannel,'string'));
                        vathreshold1=str2num(get(handles.edit21_Fewchannel,'string'));
                        vathreshold2=str2num(get(handles.edit22_Fewchannel,'string'));
                        [Yiva,W] = IVA_threshold(Ybss,F,WC,P_iva,acthreshold1,acthreshold2, enthreshold1, enthreshold2,10000,10000,vathreshold1,vathreshold2);
                    end
                    if  get(handles.checkbox1_Fewchannel,'Value')==1&&get(handles.checkbox3_Fewchannel,'Value')==1&&get(handles.checkbox4_Fewchannel,'Value')==1
                        acthreshold1=str2num(get(handles.edit14_Fewchannel,'string'));
                        acthreshold2=str2num(get(handles.edit18_Fewchannel,'string'));
                        kuthreshold1=str2num(get(handles.edit17_Fewchannel,'string'));
                        kuthreshold2=str2num(get(handles.edit20_Fewchannel,'string'));
                        vathreshold1=str2num(get(handles.edit21_Fewchannel,'string'));
                        vathreshold2=str2num(get(handles.edit22_Fewchannel,'string'));
                        [Yiva,W] = IVA_threshold(Ybss,F,WC,P_iva,acthreshold1,acthreshold2, 10000, 10000,kuthreshold1,kuthreshold2,vathreshold1,vathreshold2);
                    end
                    if  get(handles.checkbox2_Fewchannel,'Value')==1&&get(handles.checkbox3_Fewchannel,'Value')==1&&get(handles.checkbox4_Fewchannel,'Value')==1
                        enthreshold1=str2num(get(handles.edit16_Fewchannel,'string'));
                        enthreshold2=str2num(get(handles.edit19_Fewchannel,'string'));
                        kuthreshold1=str2num(get(handles.edit17_Fewchannel,'string'));
                        kuthreshold2=str2num(get(handles.edit20_Fewchannel,'string'));
                        vathreshold1=str2num(get(handles.edit21_Fewchannel,'string'));
                        vathreshold2=str2num(get(handles.edit22_Fewchannel,'string'));
                        [Yiva,W] = IVA_threshold(Ybss,F,WC,P_iva,0,0, enthreshold1, enthreshold2,kuthreshold1,kuthreshold2,vathreshold1,vathreshold2);
                    end
                    if  get(handles.checkbox1_Fewchannel,'Value')==1&&get(handles.checkbox2_Fewchannel,'Value')==1&&get(handles.checkbox3_Fewchannel,'Value')==1&&get(handles.checkbox4_Fewchannel,'Value')==1
                        acthreshold1=str2num(get(handles.edit14_Fewchannel,'string'));
                        acthreshold2=str2num(get(handles.edit18_Fewchannel,'string'));
                        enthreshold1=str2num(get(handles.edit16_Fewchannel,'string'));
                        enthreshold2=str2num(get(handles.edit19_Fewchannel,'string'));
                        kuthreshold1=str2num(get(handles.edit17_Fewchannel,'string'));
                        kuthreshold2=str2num(get(handles.edit20_Fewchannel,'string'));
                        vathreshold1=str2num(get(handles.edit21_Fewchannel,'string'));
                        vathreshold2=str2num(get(handles.edit22_Fewchannel,'string'));
                        [Yiva,W] = IVA_threshold(Ybss,F,WC,P_iva,acthreshold1,acthreshold2, enthreshold1, enthreshold2,kuthreshold1,kuthreshold2,vathreshold1,vathreshold2);
                    end
                    [Youtput] = fewEEG_recon(Yiva,existingdata,imfnumbermemd,fs);
            end
            
        case 2 %use BSS
            switch (vaf1)
                case 1        %ICA
                    switch(vaf2)
                        case 1             %FASTICA
                            [Y_bss,Wica,WC,P_ica ]= myfastICA( existingdata,fs);
                            if get(handles.checkbox1_Fewchannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit14_Fewchannel,'string'));
                                acthreshold2=str2num(get(handles.edit18_Fewchannel,'string'));
                                [YfastICA,W] = ICA_threshold_fastica(Y_bss,WC,Wica,P_ica,acthreshold1,acthreshold2,10000,10000,10000,10000,10000,10000);
                            end
                            if get(handles.checkbox2_Fewchannel,'Value')==1 ;
                                enthreshold1=str2num(get(handles.edit16_Fewchannel,'string'));
                                enthreshold2=str2num(get(handles.edit19_Fewchannel,'string'));
                                [YfastICA,W] = ICA_threshold_fastica(Y_bss,WC,Wica,P_ica,0,0,enthreshold1,enthreshold2,10000,10000,10000,10000);
                            end
                            if get(handles.checkbox3_Fewchannel,'Value')==1
                                kuthreshold1=str2num(get(handles.edit17_Fewchannel,'string'));
                                kuthreshold2=str2num(get(handles.edit20_Fewchannel,'string'));
                                [YfastICA,W] = ICA_threshold_fastica(Y_bss,WC,Wica,P_ica,0,0,10000,10000,kuthreshold1,kuthreshold2,10000,10000);
                            end
                               if get(handles.checkbox4_Fewchannel,'Value')==1
                                vathreshold1=str2num(get(handles.edit21_Fewchannel,'string'));
                                vathreshold2=str2num(get(handles.edit22_Fewchannel,'string'));
                                [YfastICA,W] = ICA_threshold_fastica(Y_bss,WC,Wica,P_ica,0,0,10000,10000,10000,10000,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox1_Fewchannel,'Value')==1&&get(handles.checkbox2_Fewchannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit14_Fewchannel,'string'));
                                acthreshold2=str2num(get(handles.edit18_Fewchannel,'string'));
                                enthreshold1=str2num(get(handles.edit16_Fewchannel,'string'));
                                enthreshold2=str2num(get(handles.edit19_Fewchannel,'string'));
                                [YfastICA,W] = ICA_threshold_fastica(Y_bss,WC,Wica,P_ica,acthreshold1,acthreshold2,enthreshold1,enthreshold2,10000,10000,10000,10000);
                            end
                            if  get(handles.checkbox1_Fewchannel,'Value')==1&&get(handles.checkbox3_Fewchannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit14_Fewchannel,'string'));
                                acthreshold2=str2num(get(handles.edit18_Fewchannel,'string'));
                                kuthreshold1=str2num(get(handles.edit17_Fewchannel,'string'));
                                kuthreshold2=str2num(get(handles.edit20_Fewchannel,'string'));
                                [YfastICA,W] = ICA_threshold_fastica(Y_bss,WC,Wica,P_ica,acthreshold1,acthreshold2,10000,10000,kuthreshold1,kuthreshold2,10000,10000);
                            end
                            if  get(handles.checkbox1_Fewchannel,'Value')==1&&get(handles.checkbox4_Fewchannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit14_Fewchannel,'string'));
                                acthreshold2=str2num(get(handles.edit18_Fewchannel,'string'));
                                vathreshold1=str2num(get(handles.edit21_Fewchannel,'string'));
                                vathreshold2=str2num(get(handles.edit22_Fewchannel,'string'));
                                [YfastICA,W] = ICA_threshold_fastica(Y_bss,WC,Wica,P_ica,acthreshold1,acthreshold2,10000,10000,10000,10000,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox2_Fewchannel,'Value')==1&&get(handles.checkbox3_Fewchannel,'Value')==1
                                enthreshold1=str2num(get(handles.edit16_Fewchannel,'string'));
                                enthreshold2=str2num(get(handles.edit19_Fewchannel,'string'));
                                kuthreshold1=str2num(get(handles.edit17_Fewchannel,'string'));
                                kuthreshold2=str2num(get(handles.edit20_Fewchannel,'string'));
                                [YfastICA,W] = ICA_threshold_fastica(Y_bss,WC,Wica,P_ica,0,0,enthreshold1,enthreshold2,kuthreshold1,kuthreshold2,10000,10000);
                            end
                               if  get(handles.checkbox2_Fewchannel,'Value')==1&&get(handles.checkbox4_Fewchannel,'Value')==1
                                enthreshold1=str2num(get(handles.edit16_Fewchannel,'string'));
                                enthreshold2=str2num(get(handles.edit19_Fewchannel,'string'));
                                vathreshold1=str2num(get(handles.edit21_Fewchannel,'string'));
                                vathreshold2=str2num(get(handles.edit22_Fewchannel,'string'));
                                [YfastICA,W] = ICA_threshold_fastica(Y_bss,WC,Wica,P_ica,0,0,enthreshold1,enthreshold2,10000,10000,vathreshold1,vathreshold2);
                               end
                            if  get(handles.checkbox3_Fewchannel,'Value')==1&&get(handles.checkbox4_Fewchannel,'Value')==1
                                kuthreshold1=str2num(get(handles.edit17_Fewchannel,'string'));
                                kuthreshold2=str2num(get(handles.edit20_Fewchannel,'string'));
                                vathreshold1=str2num(get(handles.edit21_Fewchannel,'string'));
                                vathreshold2=str2num(get(handles.edit22_Fewchannel,'string'));
                                [YfastICA,W] = ICA_threshold_fastica(Y_bss,WC,Wica,P_ica,0,0,10000,10000,kuthreshold1,kuthreshold2,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox1_Fewchannel,'Value')==1&&get(handles.checkbox2_Fewchannel,'Value')==1&&get(handles.checkbox3_Fewchannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit14_Fewchannel,'string'));
                                acthreshold2=str2num(get(handles.edit18_Fewchannel,'string'));
                                enthreshold1=str2num(get(handles.edit16_Fewchannel,'string'));
                                enthreshold2=str2num(get(handles.edit19_Fewchannel,'string'));
                                kuthreshold1=str2num(get(handles.edit17_Fewchannel,'string'));
                                kuthreshold2=str2num(get(handles.edit20_Fewchannel,'string'));
                                [YfastICA,W] = ICA_threshold_fastica(Y_bss,WC,Wica,P_ica,acthreshold1,acthreshold2,enthreshold1,enthreshold2,kuthreshold1,kuthreshold2,10000,10000);
                            end
                              if  get(handles.checkbox1_Fewchannel,'Value')==1&&get(handles.checkbox2_Fewchannel,'Value')==1&&get(handles.checkbox4_Fewchannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit14_Fewchannel,'string'));
                                acthreshold2=str2num(get(handles.edit18_Fewchannel,'string'));
                                enthreshold1=str2num(get(handles.edit16_Fewchannel,'string'));
                                enthreshold2=str2num(get(handles.edit19_Fewchannel,'string'));
                                vathreshold1=str2num(get(handles.edit21_Fewchannel,'string'));
                                vathreshold2=str2num(get(handles.edit22_Fewchannel,'string'));
                                [YfastICA,W] = ICA_threshold_fastica(Y_bss,WC,Wica,P_ica,acthreshold1,acthreshold2,enthreshold1,enthreshold2,10000,10000,vathreshold1,vathreshold2);
                              end
                             if  get(handles.checkbox1_Fewchannel,'Value')==1&&get(handles.checkbox3_Fewchannel,'Value')==1&&get(handles.checkbox4_Fewchannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit14_Fewchannel,'string'));
                                acthreshold2=str2num(get(handles.edit18_Fewchannel,'string'));
                                 kuthreshold1=str2num(get(handles.edit17_Fewchannel,'string'));
                                kuthreshold2=str2num(get(handles.edit20_Fewchannel,'string'));
                                vathreshold1=str2num(get(handles.edit21_Fewchannel,'string'));
                                vathreshold2=str2num(get(handles.edit22_Fewchannel,'string'));
                                [YfastICA,W] = ICA_threshold_fastica(Y_bss,WC,Wica,P_ica,acthreshold1,acthreshold2,10000,10000,kuthreshold1,kuthreshold2,vathreshold1,vathreshold2);
                              end
                            if  get(handles.checkbox2_Fewchannel,'Value')==1&&get(handles.checkbox3_Fewchannel,'Value')==1&&get(handles.checkbox4_Fewchannel,'Value')==1
                               enthreshold1=str2num(get(handles.edit16_Fewchannel,'string'));
                                enthreshold2=str2num(get(handles.edit19_Fewchannel,'string'));
                                 kuthreshold1=str2num(get(handles.edit17_Fewchannel,'string'));
                                kuthreshold2=str2num(get(handles.edit20_Fewchannel,'string'));
                                vathreshold1=str2num(get(handles.edit21_Fewchannel,'string'));
                                vathreshold2=str2num(get(handles.edit22_Fewchannel,'string'));
                                [YfastICA,W] = ICA_threshold_fastica(Y_bss,WC,Wica,P_ica,0,0,enthreshold1,enthreshold2,kuthreshold1,kuthreshold2,vathreshold1,vathreshold2);
                            end
                               if  get(handles.checkbox1_Fewchannel,'Value')==1&&get(handles.checkbox2_Fewchannel,'Value')==1&&get(handles.checkbox3_Fewchannel,'Value')==1&&get(handles.checkbox4_Fewchannel,'Value')==1
                               acthreshold1=str2num(get(handles.edit14_Fewchannel,'string'));
                                acthreshold2=str2num(get(handles.edit18_Fewchannel,'string'));
                                enthreshold1=str2num(get(handles.edit16_Fewchannel,'string'));
                                enthreshold2=str2num(get(handles.edit19_Fewchannel,'string'));
                                 kuthreshold1=str2num(get(handles.edit17_Fewchannel,'string'));
                                kuthreshold2=str2num(get(handles.edit20_Fewchannel,'string'));
                                vathreshold1=str2num(get(handles.edit21_Fewchannel,'string'));
                                vathreshold2=str2num(get(handles.edit22_Fewchannel,'string'));
                                [YfastICA,W] = ICA_threshold_fastica(Y_bss,WC,Wica,P_ica,acthreshold1,acthreshold2,enthreshold1,enthreshold2,kuthreshold1,kuthreshold2,vathreshold1,vathreshold2);
                              end
                            Youtput= YfastICA;
                        case 2               %sobi
                            [Y_bss,Wica,WC,P_ica] = mysobi( existingdata,fs,4);
                            if get(handles.checkbox1_Fewchannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit14_Fewchannel,'string'));
                                acthreshold2=str2num(get(handles.edit18_Fewchannel,'string'));
                                [Ysobi,W] = ICA_threshold_sobi(Y_bss,WC,Wica,P_ica,acthreshold1,acthreshold2,10000,10000,10000,10000,10000,10000);
                            end
                            if get(handles.checkbox2_Fewchannel,'Value')==1 ;
                                enthreshold1=str2num(get(handles.edit16_Fewchannel,'string'));
                                enthreshold2=str2num(get(handles.edit19_Fewchannel,'string'));
                                [Ysobi,W] = ICA_threshold_sobi(Y_bss,WC,Wica,P_ica,0,0,enthreshold1,enthreshold2,10000,10000,10000,10000);
                            end
                            if get(handles.checkbox3_Fewchannel,'Value')==1
                                kuthreshold1=str2num(get(handles.edit17_Fewchannel,'string'));
                                kuthreshold2=str2num(get(handles.edit20_Fewchannel,'string'));
                                [Ysobi,W] = ICA_threshold_sobi(Y_bss,WC,Wica,P_ica,0,0,10000,10000,kuthreshold1,kuthreshold2,10000,10000);
                            end
                             if get(handles.checkbox4_Fewchannel,'Value')==1
                                vathreshold1=str2num(get(handles.edit21_Fewchannel,'string'));
                                vathreshold2=str2num(get(handles.edit22_Fewchannel,'string'));
                                [Ysobi,W] = ICA_threshold_sobi(Y_bss,WC,Wica,P_ica,0,0,10000,10000,10000,10000,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox1_Fewchannel,'Value')==1&&get(handles.checkbox2_Fewchannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit14_Fewchannel,'string'));
                                acthreshold2=str2num(get(handles.edit18_Fewchannel,'string'));
                                enthreshold1=str2num(get(handles.edit16_Fewchannel,'string'));
                                enthreshold2=str2num(get(handles.edit19_Fewchannel,'string'));
                                [Ysobi,W] = ICA_threshold_sobi(Y_bss,WC,Wica,P_ica,acthreshold1,acthreshold2,enthreshold1,enthreshold2,10000,10000,10000,10000);
                            end
                            if  get(handles.checkbox1_Fewchannel,'Value')==1&&get(handles.checkbox3_Fewchannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit16_Fewchannel,'string'));
                                acthreshold2=str2num(get(handles.edit19_Fewchannel,'string'));
                                kuthreshold1=str2num(get(handles.edit17_Fewchannel,'string'));
                                kuthreshold2=str2num(get(handles.edit20_Fewchannel,'string'));
                                [Ysobi,W] = ICA_threshold_sobi(Y_bss,WC,Wica,P_ica,acthreshold1,acthreshold2,10000,10000,kuthreshold1,kuthreshold2,10000,10000);
                            end
                            if  get(handles.checkbox1_Fewchannel,'Value')==1&&get(handles.checkbox4_Fewchannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit16_Fewchannel,'string'));
                                acthreshold2=str2num(get(handles.edit19_Fewchannel,'string'));
                                vathreshold1=str2num(get(handles.edit21_Fewchannel,'string'));
                                vathreshold2=str2num(get(handles.edit22_Fewchannel,'string'));
                                [Ysobi,W] = ICA_threshold_sobi(Y_bss,WC,Wica,P_ica,acthreshold1,acthreshold2,10000,10000,10000,10000,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox2_Fewchannel,'Value')==1&&get(handles.checkbox3_Fewchannel,'Value')==1
                                enthreshold1=str2num(get(handles.edit74_Fewchannel,'string'));
                                enthreshold2=str2num(get(handles.edit85_Fewchannel,'string'));
                                kuthreshold1=str2num(get(handles.edit76_Fewchannel,'string'));
                                kuthreshold2=str2num(get(handles.edit86_Fewchannel,'string'));
                                [Ysobi,W] = ICA_threshold_sobi(Y_bss,WC,Wica,P_ica,0,0,enthreshold1,enthreshold2,kuthreshold1,kuthreshold2,10000,10000);
                            end
                            if  get(handles.checkbox2_Fewchannel,'Value')==1&&get(handles.checkbox4_Fewchannel,'Value')==1
                                enthreshold1=str2num(get(handles.edit74_Fewchannel,'string'));
                                enthreshold2=str2num(get(handles.edit85_Fewchannel,'string'));
                                vathreshold1=str2num(get(handles.edit21_Fewchannel,'string'));
                                vathreshold2=str2num(get(handles.edit22_Fewchannel,'string'));
                                [Ysobi,W] = ICA_threshold_sobi(Y_bss,WC,Wica,P_ica,0,0,enthreshold1,enthreshold2,10000,10000,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox3_Fewchannel,'Value')==1&&get(handles.checkbox4_Fewchannel,'Value')==1
                                kuthreshold1=str2num(get(handles.edit76_Fewchannel,'string'));
                                kuthreshold2=str2num(get(handles.edit86_Fewchannel,'string'));
                                vathreshold1=str2num(get(handles.edit21_Fewchannel,'string'));
                                vathreshold2=str2num(get(handles.edit22_Fewchannel,'string'));
                                [Ysobi,W] = ICA_threshold_sobi(Y_bss,WC,Wica,P_ica,0,0,10000,10000,kuthreshold1,kuthreshold2,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox1_Fewchannel,'Value')==1&&get(handles.checkbox2_Fewchannel,'Value')==1&&get(handles.checkbox3_Fewchannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit14_Fewchannel,'string'));
                                acthreshold2=str2num(get(handles.edit18_Fewchannel,'string'));
                                enthreshold1=str2num(get(handles.edit16_Fewchannel,'string'));
                                enthreshold2=str2num(get(handles.edit19_Fewchannel,'string'));
                                kuthreshold1=str2num(get(handles.edit17_Fewchannel,'string'));
                                kuthreshold2=str2num(get(handles.edit20_Fewchannel,'string'));
                                [Ysobi,W] = ICA_threshold_sobi(Y_bss,WC,Wica,P_ica,acthreshold1,acthreshold2,enthreshold1,enthreshold2,kuthreshold1,kuthreshold2,10000,10000);
                            end
                            if  get(handles.checkbox1_Fewchannel,'Value')==1&&get(handles.checkbox2_Fewchannel,'Value')==1&&get(handles.checkbox4_Fewchannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit14_Fewchannel,'string'));
                                acthreshold2=str2num(get(handles.edit18_Fewchannel,'string'));
                                enthreshold1=str2num(get(handles.edit16_Fewchannel,'string'));
                                enthreshold2=str2num(get(handles.edit19_Fewchannel,'string'));
                                vathreshold1=str2num(get(handles.edit21_Fewchannel,'string'));
                                vathreshold2=str2num(get(handles.edit22_Fewchannel,'string'));
                                [Ysobi,W] = ICA_threshold_sobi(Y_bss,WC,Wica,P_ica,acthreshold1,acthreshold2,enthreshold1,enthreshold2,10000,10000,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox1_Fewchannel,'Value')==1&&get(handles.checkbox3_Fewchannel,'Value')==1&&get(handles.checkbox4_Fewchannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit14_Fewchannel,'string'));
                                acthreshold2=str2num(get(handles.edit18_Fewchannel,'string'));
                                kuthreshold1=str2num(get(handles.edit17_Fewchannel,'string'));
                                kuthreshold2=str2num(get(handles.edit20_Fewchannel,'string'));
                                vathreshold1=str2num(get(handles.edit21_Fewchannel,'string'));
                                vathreshold2=str2num(get(handles.edit22_Fewchannel,'string'));
                                [Ysobi,W] = ICA_threshold_sobi(Y_bss,WC,Wica,P_ica,acthreshold1,acthreshold2,10000,10000,kuthreshold1,kuthreshold2,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox2_Fewchannel,'Value')==1&&get(handles.checkbox3_Fewchannel,'Value')==1&&get(handles.checkbox4_Fewchannel,'Value')==1
                                enthreshold1=str2num(get(handles.edit16_Fewchannel,'string'));
                                enthreshold2=str2num(get(handles.edit19_Fewchannel,'string'));
                                kuthreshold1=str2num(get(handles.edit17_Fewchannel,'string'));
                                kuthreshold2=str2num(get(handles.edit20_Fewchannel,'string'));
                                vathreshold1=str2num(get(handles.edit21_Fewchannel,'string'));
                                vathreshold2=str2num(get(handles.edit22_Fewchannel,'string'));
                                [Ysobi,W] = ICA_threshold_sobi(Y_bss,WC,Wica,P_ica,0,0,enthreshold1,enthreshold2,kuthreshold1,kuthreshold2,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox1_Fewchannel,'Value')==1&&get(handles.checkbox2_Fewchannel,'Value')==1&&get(handles.checkbox3_Fewchannel,'Value')==1&&get(handles.checkbox4_Fewchannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit14_Fewchannel,'string'));
                                acthreshold2=str2num(get(handles.edit18_Fewchannel,'string'));
                                enthreshold1=str2num(get(handles.edit16_Fewchannel,'string'));
                                enthreshold2=str2num(get(handles.edit19_Fewchannel,'string'));
                                kuthreshold1=str2num(get(handles.edit17_Fewchannel,'string'));
                                kuthreshold2=str2num(get(handles.edit20_Fewchannel,'string'));
                                vathreshold1=str2num(get(handles.edit21_Fewchannel,'string'));
                                vathreshold2=str2num(get(handles.edit22_Fewchannel,'string'));
                                [Ysobi,W] = ICA_threshold_sobi(Y_bss,WC,Wica,P_ica,acthreshold1,acthreshold2,enthreshold1,enthreshold2,kuthreshold1,kuthreshold2,vathreshold1,vathreshold2);
                            end
                            Youtput=Ysobi;
                        case 3               %jade
                            [Y_bss,WC,P_ica,B]= myjade( existingdata,fs);
                             if get(handles.checkbox1_Fewchannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit14_Fewchannel,'string'));
                                acthreshold2=str2num(get(handles.edit18_Fewchannel,'string'));
                                [Yjade,W] = ICA_threshold_jade(Y_bss,WC,B,P_ica,acthreshold1,acthreshold2,10000,10000,10000,10000,10000,10000) ;
                            end
                            if get(handles.checkbox2_Fewchannel,'Value')==1 ;
                                enthreshold1=str2num(get(handles.edit16_Fewchannel,'string'));
                                enthreshold2=str2num(get(handles.edit19_Fewchannel,'string'));
                                [Yjade,W] = ICA_threshold_jade(Y_bss,WC,B,P_ica,0,0,enthreshold1,enthreshold2,10000,10000,10000,10000) ;
                            end
                            if get(handles.checkbox3_Fewchannel,'Value')==1
                                kuthreshold1=str2num(get(handles.edit17_Fewchannel,'string'));
                                kuthreshold2=str2num(get(handles.edit20_Fewchannel,'string'));
                                [Yjade,W] = ICA_threshold_jade(Y_bss,WC,B,P_ica,0,0,10000,10000,kuthreshold1,kuthreshold2,10000,10000) ;
                            end
                            if get(handles.checkbox4_Fewchannel,'Value')==1
                                vathreshold1=str2num(get(handles.edit21_Fewchannel,'string'));
                                vathreshold2=str2num(get(handles.edit22_Fewchannel,'string'));
                                [Yjade,W] = ICA_threshold_jade(Y_bss,WC,B,P_ica,0,0,10000,10000,10000,10000,vathreshold1,vathreshold2) ;
                            end
                            if  get(handles.checkbox1_Fewchannel,'Value')==1&&get(handles.checkbox2_Fewchannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit14_Fewchannel,'string'));
                                acthreshold2=str2num(get(handles.edit18_Fewchannel,'string'));
                                enthreshold1=str2num(get(handles.edit16_Fewchannel,'string'));
                                enthreshold2=str2num(get(handles.edit19_Fewchannel,'string'));
                                [Yjade,W] = ICA_threshold_jade(Y_bss,WC,B,P_ica,acthreshold1,acthreshold2,enthreshold1,enthreshold2,10000,10000,10000,10000) ;
                            end
                            if  get(handles.checkbox1_Fewchannel,'Value')==1&&get(handles.checkbox3_Fewchannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit14_Fewchannel,'string'));
                                acthreshold2=str2num(get(handles.edit18_Fewchannel,'string'));
                                kuthreshold1=str2num(get(handles.edit17_Fewchannel,'string'));
                                kuthreshold2=str2num(get(handles.edit20_Fewchannel,'string'));
                                [Yjade,W] = ICA_threshold_jade(Y_bss,WC,B,P_ica,acthreshold1,acthreshold2,10000,10000, kuthreshold1, kuthreshold2,10000,10000);
                            end
                            if  get(handles.checkbox1_Fewchannel,'Value')==1&&get(handles.checkbox4_Fewchannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit14_Fewchannel,'string'));
                                acthreshold2=str2num(get(handles.edit18_Fewchannel,'string'));
                                vathreshold1=str2num(get(handles.edit21_Fewchannel,'string'));
                                vathreshold2=str2num(get(handles.edit22_Fewchannel,'string'));
                                [Yjade,W] = ICA_threshold_jade(Y_bss,WC,B,P_ica,acthreshold1,acthreshold2,10000,10000, 10000, 10000,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox2_Fewchannel,'Value')==1&&get(handles.checkbox3_Fewchannel,'Value')==1
                                enthreshold1=str2num(get(handles.edit16_Fewchannel,'string'));
                                enthreshold2=str2num(get(handles.edit19_Fewchannel,'string'));
                                kuthreshold1=str2num(get(handles.edit17_Fewchannel,'string'));
                                kuthreshold2=str2num(get(handles.edit20_Fewchannel,'string'));
                                [Yjade,W] = ICA_threshold_jade(Y_bss,WC,B,P_ica,0,0,enthreshold1,enthreshold2,kuthreshold1,kuthreshold2,10000,10000) ;
                            end
                            if  get(handles.checkbox2_Fewchannel,'Value')==1&&get(handles.checkbox4_Fewchannel,'Value')==1
                                enthreshold1=str2num(get(handles.edit16_Fewchannel,'string'));
                                enthreshold2=str2num(get(handles.edit19_Fewchannel,'string'));
                                vathreshold1=str2num(get(handles.edit21_Fewchannel,'string'));
                                vathreshold2=str2num(get(handles.edit22_Fewchannel,'string'));
                                [Yjade,W] = ICA_threshold_jade(Y_bss,WC,B,P_ica,0,0,enthreshold1,enthreshold2,10000,10000,vathreshold1,vathreshold2) ;
                            end
                            if  get(handles.checkbox3_Fewchannel,'Value')==1&&get(handles.checkbox4_Fewchannel,'Value')==1
                                kuthreshold1=str2num(get(handles.edit17_Fewchannel,'string'));
                                kuthreshold2=str2num(get(handles.edit20_Fewchannel,'string'));
                                vathreshold1=str2num(get(handles.edit21_Fewchannel,'string'));
                                vathreshold2=str2num(get(handles.edit22_Fewchannel,'string'));
                                [Yjade,W] = ICA_threshold_jade(Y_bss,WC,B,P_ica,0,0,10000,10000,kuthreshold1,kuthreshold2,vathreshold1,vathreshold2) ;
                            end
                            if  get(handles.checkbox1_Fewchannel,'Value')==1&&get(handles.checkbox2_Fewchannel,'Value')==1&&get(handles.checkbox3_Fewchannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit14_Fewchannel,'string'));
                                acthreshold2=str2num(get(handles.edit18_Fewchannel,'string'));
                                enthreshold1=str2num(get(handles.edit16_Fewchannel,'string'));
                                enthreshold2=str2num(get(handles.edit19_Fewchannel,'string'));
                                kuthreshold1=str2num(get(handles.edit17_Fewchannel,'string'));
                                kuthreshold2=str2num(get(handles.edit20_Fewchannel,'string'));
                                [Yjade,W] = ICA_threshold_jade(Y_bss,WC,B,P_ica,acthreshold1,acthreshold2,enthreshold1,enthreshold2,kuthreshold1,kuthreshold2,10000,10000) ;
                            end
                            if  get(handles.checkbox1_Fewchannel,'Value')==1&&get(handles.checkbox2_Fewchannel,'Value')==1&&get(handles.checkbox4_Fewchannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit14_Fewchannel,'string'));
                                acthreshold2=str2num(get(handles.edit18_Fewchannel,'string'));
                                enthreshold1=str2num(get(handles.edit16_Fewchannel,'string'));
                                enthreshold2=str2num(get(handles.edit19_Fewchannel,'string'));
                                vathreshold1=str2num(get(handles.edit21_Fewchannel,'string'));
                                vathreshold2=str2num(get(handles.edit22_Fewchannel,'string'));
                                [Yjade,W] = ICA_threshold_jade(Y_bss,WC,B,P_ica,acthreshold1,acthreshold2,enthreshold1,enthreshold2,10000,10000,vathreshold1,vathreshold2) ;
                            end
                            if  get(handles.checkbox1_Fewchannel,'Value')==1&&get(handles.checkbox3_Fewchannel,'Value')==1&&get(handles.checkbox4_Fewchannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit14_Fewchannel,'string'));
                                acthreshold2=str2num(get(handles.edit18_Fewchannel,'string'));
                                kuthreshold1=str2num(get(handles.edit17_Fewchannel,'string'));
                                kuthreshold2=str2num(get(handles.edit20_Fewchannel,'string'));
                                vathreshold1=str2num(get(handles.edit21_Fewchannel,'string'));
                                vathreshold2=str2num(get(handles.edit22_Fewchannel,'string'));
                                [Yjade,W] = ICA_threshold_jade(Y_bss,WC,B,P_ica,acthreshold1,acthreshold2,10000,10000,kuthreshold1,kuthreshold2,vathreshold1,vathreshold2) ;
                            end
                            if  get(handles.checkbox2_Fewchannel,'Value')==1&&get(handles.checkbox3_Fewchannel,'Value')==1&&get(handles.checkbox4_Fewchannel,'Value')==1
                                enthreshold1=str2num(get(handles.edit16_Fewchannel,'string'));
                                enthreshold2=str2num(get(handles.edit19_Fewchannel,'string'));
                                kuthreshold1=str2num(get(handles.edit17_Fewchannel,'string'));
                                kuthreshold2=str2num(get(handles.edit20_Fewchannel,'string'));
                                vathreshold1=str2num(get(handles.edit21_Fewchannel,'string'));
                                vathreshold2=str2num(get(handles.edit22_Fewchannel,'string'));
                                [Yjade,W] = ICA_threshold_jade(Y_bss,WC,B,P_ica,0,0,enthreshold1,enthreshold2,kuthreshold1,kuthreshold2,vathreshold1,vathreshold2) ;
                            end
                            if  get(handles.checkbox1_Fewchannel,'Value')==1&&get(handles.checkbox2_Fewchannel,'Value')==1&&get(handles.checkbox3_Fewchannel,'Value')==1&&get(handles.checkbox4_Fewchannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit14_Fewchannel,'string'));
                                acthreshold2=str2num(get(handles.edit18_Fewchannel,'string'));
                                enthreshold1=str2num(get(handles.edit16_Fewchannel,'string'));
                                enthreshold2=str2num(get(handles.edit19_Fewchannel,'string'));
                                kuthreshold1=str2num(get(handles.edit17_Fewchannel,'string'));
                                kuthreshold2=str2num(get(handles.edit20_Fewchannel,'string'));
                                vathreshold1=str2num(get(handles.edit21_Fewchannel,'string'));
                                vathreshold2=str2num(get(handles.edit22_Fewchannel,'string'));
                                [Yjade,W] = ICA_threshold_jade(Y_bss,WC,B,P_ica,acthreshold1,acthreshold2,enthreshold1,enthreshold2,kuthreshold1,kuthreshold2,vathreshold1,vathreshold2) ;
                            end
                            Youtput=Yjade;
                            case 4               %infomax
                            [Y_bss,Wica,WC,P_ica] = myinfomax( existingdata,fs);
                            if get(handles.checkbox1_Fewchannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit14_Fewchannel,'string'));
                                acthreshold2=str2num(get(handles.edit18_Fewchannel,'string'));
                                [Yinfomax,W] = ICA_threshold_infomax(Y_bss,WC,Wica,P_ica,acthreshold1,acthreshold2,10000,10000,10000,10000,10000,10000);
                            end
                            if get(handles.checkbox2_Fewchannel,'Value')==1 ;
                                enthreshold1=str2num(get(handles.edit16_Fewchannel,'string'));
                                enthreshold2=str2num(get(handles.edit19_Fewchannel,'string'));
                                [Yinfomax,W] = ICA_threshold_infomax(Y_bss,WC,Wica,P_ica,0,0,enthreshold1,enthreshold2,10000,10000,10000,10000);
                            end
                            if get(handles.checkbox3_Fewchannel,'Value')==1
                                kuthreshold1=str2num(get(handles.edit17_Fewchannel,'string'));
                                kuthreshold2=str2num(get(handles.edit20_Fewchannel,'string'));
                                [Yinfomax,W] = ICA_threshold_infomax(Y_bss,WC,Wica,P_ica,0,0,10000,10000,kuthreshold1,kuthreshold2,10000,10000);
                            end
                            if get(handles.checkbox4_Fewchannel,'Value')==1
                                vathreshold1=str2num(get(handles.edit21_Fewchannel,'string'));
                                vathreshold2=str2num(get(handles.edit22_Fewchannel,'string'));
                                [Yinfomax,W] = ICA_threshold_infomax(Y_bss,WC,Wica,P_ica,0,0,10000,10000,10000,10000,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox1_Fewchannel,'Value')==1&&get(handles.checkbox2_Fewchannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit14_Fewchannel,'string'));
                                acthreshold2=str2num(get(handles.edit18_Fewchannel,'string'));
                                enthreshold1=str2num(get(handles.edit16_Fewchannel,'string'));
                                enthreshold2=str2num(get(handles.edit19_Fewchannel,'string'));
                                [Yinfomax,W] = ICA_threshold_infomax(Y_bss,WC,Wica,P_ica,acthreshold1,acthreshold2,enthreshold1,enthreshold2,10000,10000,10000,10000);
                            end
                            if  get(handles.checkbox1_Fewchannel,'Value')==1&&get(handles.checkbox3_Fewchannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit16_Fewchannel,'string'));
                                acthreshold2=str2num(get(handles.edit19_Fewchannel,'string'));
                                kuthreshold1=str2num(get(handles.edit17_Fewchannel,'string'));
                                kuthreshold2=str2num(get(handles.edit20_Fewchannel,'string'));
                                [Yinfomax,W] = ICA_threshold_infomax(Y_bss,WC,Wica,P_ica,acthreshold1,acthreshold2,10000,10000,kuthreshold1,kuthreshold2,10000,10000);
                            end
                            if  get(handles.checkbox1_Fewchannel,'Value')==1&&get(handles.checkbox4_Fewchannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit16_Fewchannel,'string'));
                                acthreshold2=str2num(get(handles.edit19_Fewchannel,'string'));
                                vathreshold1=str2num(get(handles.edit21_Fewchannel,'string'));
                                vathreshold2=str2num(get(handles.edit22_Fewchannel,'string'));
                                [Yinfomax,W] = ICA_threshold_infomax(Y_bss,WC,Wica,P_ica,acthreshold1,acthreshold2,10000,10000,10000,10000,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox2_Fewchannel,'Value')==1&&get(handles.checkbox3_Fewchannel,'Value')==1
                                enthreshold1=str2num(get(handles.edit74_Fewchannel,'string'));
                                enthreshold2=str2num(get(handles.edit85_Fewchannel,'string'));
                                kuthreshold1=str2num(get(handles.edit76_Fewchannel,'string'));
                                kuthreshold2=str2num(get(handles.edit86_Fewchannel,'string'));
                                [Yinfomax,W] = ICA_threshold_infomax(Y_bss,WC,Wica,P_ica,0,0,enthreshold1,enthreshold2,kuthreshold1,kuthreshold2,10000,10000);
                            end
                            if  get(handles.checkbox2_Fewchannel,'Value')==1&&get(handles.checkbox4_Fewchannel,'Value')==1
                                enthreshold1=str2num(get(handles.edit74_Fewchannel,'string'));
                                enthreshold2=str2num(get(handles.edit85_Fewchannel,'string'));
                                vathreshold1=str2num(get(handles.edit21_Fewchannel,'string'));
                                vathreshold2=str2num(get(handles.edit22_Fewchannel,'string'));
                                [Yinfomax,W] = ICA_threshold_infomax(Y_bss,WC,Wica,P_ica,0,0,enthreshold1,enthreshold2,10000,10000,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox3_Fewchannel,'Value')==1&&get(handles.checkbox4_Fewchannel,'Value')==1
                                kuthreshold1=str2num(get(handles.edit76_Fewchannel,'string'));
                                kuthreshold2=str2num(get(handles.edit86_Fewchannel,'string'));
                                vathreshold1=str2num(get(handles.edit21_Fewchannel,'string'));
                                vathreshold2=str2num(get(handles.edit22_Fewchannel,'string'));
                                [Yinfomax,W] = ICA_threshold_infomax(Y_bss,WC,Wica,P_ica,0,0,10000,10000,kuthreshold1,kuthreshold2,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox1_Fewchannel,'Value')==1&&get(handles.checkbox2_Fewchannel,'Value')==1&&get(handles.checkbox3_Fewchannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit14_Fewchannel,'string'));
                                acthreshold2=str2num(get(handles.edit18_Fewchannel,'string'));
                                enthreshold1=str2num(get(handles.edit16_Fewchannel,'string'));
                                enthreshold2=str2num(get(handles.edit19_Fewchannel,'string'));
                                kuthreshold1=str2num(get(handles.edit17_Fewchannel,'string'));
                                kuthreshold2=str2num(get(handles.edit20_Fewchannel,'string'));
                                [Yinfomax,W] = ICA_threshold_infomax(Y_bss,WC,Wica,P_ica,acthreshold1,acthreshold2,enthreshold1,enthreshold2,kuthreshold1,kuthreshold2,10000,10000);
                            end
                            if  get(handles.checkbox1_Fewchannel,'Value')==1&&get(handles.checkbox2_Fewchannel,'Value')==1&&get(handles.checkbox4_Fewchannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit14_Fewchannel,'string'));
                                acthreshold2=str2num(get(handles.edit18_Fewchannel,'string'));
                                enthreshold1=str2num(get(handles.edit16_Fewchannel,'string'));
                                enthreshold2=str2num(get(handles.edit19_Fewchannel,'string'));
                                vathreshold1=str2num(get(handles.edit21_Fewchannel,'string'));
                                vathreshold2=str2num(get(handles.edit22_Fewchannel,'string'));
                                [Yinfomax,W] = ICA_threshold_infomax(Y_bss,WC,Wica,P_ica,acthreshold1,acthreshold2,enthreshold1,enthreshold2,10000,10000,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox1_Fewchannel,'Value')==1&&get(handles.checkbox3_Fewchannel,'Value')==1&&get(handles.checkbox4_Fewchannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit14_Fewchannel,'string'));
                                acthreshold2=str2num(get(handles.edit18_Fewchannel,'string'));
                                kuthreshold1=str2num(get(handles.edit17_Fewchannel,'string'));
                                kuthreshold2=str2num(get(handles.edit20_Fewchannel,'string'));
                                vathreshold1=str2num(get(handles.edit21_Fewchannel,'string'));
                                vathreshold2=str2num(get(handles.edit22_Fewchannel,'string'));
                                [Yinfomax,W] = ICA_threshold_infomax(Y_bss,WC,Wica,P_ica,acthreshold1,acthreshold2,10000,10000,kuthreshold1,kuthreshold2,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox2_Fewchannel,'Value')==1&&get(handles.checkbox3_Fewchannel,'Value')==1&&get(handles.checkbox4_Fewchannel,'Value')==1
                                enthreshold1=str2num(get(handles.edit16_Fewchannel,'string'));
                                enthreshold2=str2num(get(handles.edit19_Fewchannel,'string'));
                                kuthreshold1=str2num(get(handles.edit17_Fewchannel,'string'));
                                kuthreshold2=str2num(get(handles.edit20_Fewchannel,'string'));
                                vathreshold1=str2num(get(handles.edit21_Fewchannel,'string'));
                                vathreshold2=str2num(get(handles.edit22_Fewchannel,'string'));
                                [Yinfomax,W] = ICA_threshold_infomax(Y_bss,WC,Wica,P_ica,0,0,enthreshold1,enthreshold2,kuthreshold1,kuthreshold2,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox1_Fewchannel,'Value')==1&&get(handles.checkbox2_Fewchannel,'Value')==1&&get(handles.checkbox3_Fewchannel,'Value')==1&&get(handles.checkbox4_Fewchannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit14_Fewchannel,'string'));
                                acthreshold2=str2num(get(handles.edit18_Fewchannel,'string'));
                                enthreshold1=str2num(get(handles.edit16_Fewchannel,'string'));
                                enthreshold2=str2num(get(handles.edit19_Fewchannel,'string'));
                                kuthreshold1=str2num(get(handles.edit17_Fewchannel,'string'));
                                kuthreshold2=str2num(get(handles.edit20_Fewchannel,'string'));
                                vathreshold1=str2num(get(handles.edit21_Fewchannel,'string'));
                                vathreshold2=str2num(get(handles.edit22_Fewchannel,'string'));
                                [Yinfomax,W] = ICA_threshold_infomax(Y_bss,WC,Wica,P_ica,acthreshold1,acthreshold2,enthreshold1,enthreshold2,kuthreshold1,kuthreshold2,vathreshold1,vathreshold2);
                            end
                            Youtput=Yinfomax;
                    end
                case 2      %CCA
                    [Y_bss,B,WC]= myCCA( existingdata,fs,tlag);
                    if get(handles.checkbox1_Fewchannel,'Value')==1
                        acthreshold1=str2num(get(handles.edit14_Fewchannel,'string'));
                        acthreshold2=str2num(get(handles.edit18_Fewchannel,'string'));
                        [Ycca,W] = CCA_threshold(Y_bss,B,WC,acthreshold1,acthreshold2,10000,10000,10000,10000,10000,10000);
                    end
                    if get(handles.checkbox2_Fewchannel,'Value')==1 ;
                        enthreshold1=str2num(get(handles.edit16_Fewchannel,'string'));
                        enthreshold2=str2num(get(handles.edit19_Fewchannel,'string'));
                        [Ycca,W] = CCA_threshold(Y_bss,B,WC,0,0,enthreshold1,enthreshold2,10000,10000,10000,10000);
                    end
                    if get(handles.checkbox3_Fewchannel,'Value')==1
                        kuthreshold1=str2num(get(handles.edit17_Fewchannel,'string'));
                        kuthreshold2=str2num(get(handles.edit20_Fewchannel,'string'));
                        [Ycca,W] = CCA_threshold(Y_bss,B,WC,0,0,10000,10000,kuthreshold1,kuthreshold2,10000,10000);
                    end
                    if get(handles.checkbox4_Fewchannel,'Value')==1
                        vathreshold1=str2num(get(handles.edit21_Fewchannel,'string'));
                        vathreshold2=str2num(get(handles.edit22_Fewchannel,'string'));
                        [Ycca,W] = CCA_threshold(Y_bss,B,WC,0,0,10000,10000,10000,10000,vathreshold1,vathreshold2);
                    end
                    if  get(handles.checkbox1_Fewchannel,'Value')==1&&get(handles.checkbox2_Fewchannel,'Value')==1
                        acthreshold1=str2num(get(handles.edit14_Fewchannel,'string'));
                        acthreshold2=str2num(get(handles.edit18_Fewchannel,'string'));
                        enthreshold1=str2num(get(handles.edit16_Fewchannel,'string'));
                        enthreshold2=str2num(get(handles.edit19_Fewchannel,'string'));
                        [Ycca,W] = CCA_threshold(Y_bss,B,WC,acthreshold1,acthreshold2,enthreshold1,enthreshold2,10000,10000,10000,10000);
                    end
                    if  get(handles.checkbox1_Fewchannel,'Value')==1&&get(handles.checkbox3_Fewchannel,'Value')==1
                        acthreshold1=str2num(get(handles.edit14_Fewchannel,'string'));
                        acthreshold2=str2num(get(handles.edit18_Fewchannel,'string'));
                        kuthreshold1=str2num(get(handles.edit17_Fewchannel,'string'));
                        kuthreshold2=str2num(get(handles.edit20_Fewchannel,'string'));
                        [Ycca,W] = CCA_threshold(Y_bss,B,WC,acthreshold1,acthreshold2,10000,10000,kuthreshold1,kuthreshold2,10000,10000);
                    end
                    if  get(handles.checkbox1_Fewchannel,'Value')==1&&get(handles.checkbox4_Fewchannel,'Value')==1
                        acthreshold1=str2num(get(handles.edit14_Fewchannel,'string'));
                        acthreshold2=str2num(get(handles.edit18_Fewchannel,'string'));
                        vathreshold1=str2num(get(handles.edit21_Fewchannel,'string'));
                        vathreshold2=str2num(get(handles.edit22_Fewchannel,'string'));
                        [Ycca,W] = CCA_threshold(Y_bss,B,WC,acthreshold1,acthreshold2,10000,10000,10000,10000,vathreshold1,vathreshold2);
                    end
                    if  get(handles.checkbox2_Fewchannel,'Value')==1&&get(handles.checkbox3_Fewchannel,'Value')==1
                        enthreshold1=str2num(get(handles.edit16_Fewchannel,'string'));
                        enthreshold2=str2num(get(handles.edit19_Fewchannel,'string'));
                        kuthreshold1=str2num(get(handles.edit17_Fewchannel,'string'));
                        kuthreshold2=str2num(get(handles.edit20_Fewchannel,'string'));
                        [Ycca,W] = CCA_threshold(Y_bss,B,WC,0,0,enthreshold1,enthreshold2, kuthreshold1, kuthreshold2,10000,10000);
                    end
                    if  get(handles.checkbox2_Fewchannel,'Value')==1&&get(handles.checkbox4_Fewchannel,'Value')==1
                        enthreshold1=str2num(get(handles.edit16_Fewchannel,'string'));
                        enthreshold2=str2num(get(handles.edit19_Fewchannel,'string'));
                        vathreshold1=str2num(get(handles.edit21_Fewchannel,'string'));
                        vathreshold2=str2num(get(handles.edit22_Fewchannel,'string'));
                        [Ycca,W] = CCA_threshold(Y_bss,B,WC,0,0,enthreshold1,enthreshold2, 10000, 10000,vathreshold1,vathreshold2);
                    end
                    if  get(handles.checkbox3_Fewchannel,'Value')==1&&get(handles.checkbox4_Fewchannel,'Value')==1
                        kuthreshold1=str2num(get(handles.edit17_Fewchannel,'string'));
                        kuthreshold2=str2num(get(handles.edit20_Fewchannel,'string'));
                        vathreshold1=str2num(get(handles.edit21_Fewchannel,'string'));
                        vathreshold2=str2num(get(handles.edit22_Fewchannel,'string'));
                        [Ycca,W] = CCA_threshold(Y_bss,B,WC,0,0,10000,10000, kuthreshold1, kuthreshold2,vathreshold1,vathreshold2);
                    end
                    if  get(handles.checkbox1_Fewchannel,'Value')==1&&get(handles.checkbox2_Fewchannel,'Value')==1&&get(handles.checkbox3_Fewchannel,'Value')==1
                        acthreshold1=str2num(get(handles.edit14_Fewchannel,'string'));
                        acthreshold2=str2num(get(handles.edit18_Fewchannel,'string'));
                        enthreshold1=str2num(get(handles.edit16_Fewchannel,'string'));
                        enthreshold2=str2num(get(handles.edit19_Fewchannel,'string'));
                        kuthreshold1=str2num(get(handles.edit17_Fewchannel,'string'));
                        kuthreshold2=str2num(get(handles.edit20_Fewchannel,'string'));
                        [Ycca,W] = CCA_threshold(Y_bss,B,WC,acthreshold1,acthreshold2,enthreshold1,enthreshold2,kuthreshold1,kuthreshold2,10000,10000);
                    end
                    if  get(handles.checkbox1_Fewchannel,'Value')==1&&get(handles.checkbox2_Fewchannel,'Value')==1&&get(handles.checkbox4_Fewchannel,'Value')==1
                        acthreshold1=str2num(get(handles.edit14_Fewchannel,'string'));
                        acthreshold2=str2num(get(handles.edit18_Fewchannel,'string'));
                        enthreshold1=str2num(get(handles.edit16_Fewchannel,'string'));
                        enthreshold2=str2num(get(handles.edit19_Fewchannel,'string'));
                        vathreshold1=str2num(get(handles.edit21_Fewchannel,'string'));
                        vathreshold2=str2num(get(handles.edit22_Fewchannel,'string'));
                        [Ycca,W] = CCA_threshold(Y_bss,B,WC,acthreshold1,acthreshold2,enthreshold1,enthreshold2,10000,10000,vathreshold1,vathreshold2);
                    end
                    if  get(handles.checkbox1_Fewchannel,'Value')==1&&get(handles.checkbox3_Fewchannel,'Value')==1&&get(handles.checkbox4_Fewchannel,'Value')==1
                        acthreshold1=str2num(get(handles.edit14_Fewchannel,'string'));
                        acthreshold2=str2num(get(handles.edit18_Fewchannel,'string'));
                        kuthreshold1=str2num(get(handles.edit17_Fewchannel,'string'));
                        kuthreshold2=str2num(get(handles.edit20_Fewchannel,'string'));
                        vathreshold1=str2num(get(handles.edit21_Fewchannel,'string'));
                        vathreshold2=str2num(get(handles.edit22_Fewchannel,'string'));
                        [Ycca,W] = CCA_threshold(Y_bss,B,WC,acthreshold1,acthreshold2,10000,10000,kuthreshold1,kuthreshold2,vathreshold1,vathreshold2);
                    end
                    if  get(handles.checkbox2_Fewchannel,'Value')==1&&get(handles.checkbox3_Fewchannel,'Value')==1&&get(handles.checkbox4_Fewchannel,'Value')==1
                        enthreshold1=str2num(get(handles.edit16_Fewchannel,'string'));
                        enthreshold2=str2num(get(handles.edit19_Fewchannel,'string'));
                        kuthreshold1=str2num(get(handles.edit17_Fewchannel,'string'));
                        kuthreshold2=str2num(get(handles.edit20_Fewchannel,'string'));
                        vathreshold1=str2num(get(handles.edit21_Fewchannel,'string'));
                        vathreshold2=str2num(get(handles.edit22_Fewchannel,'string'));
                        [Ycca,W] = CCA_threshold(Y_bss,B,WC,0,0,enthreshold1,enthreshold2,kuthreshold1,kuthreshold2,vathreshold1,vathreshold2);
                    end
                    if  get(handles.checkbox1_Fewchannel,'Value')==1&&get(handles.checkbox2_Fewchannel,'Value')==1&&get(handles.checkbox3_Fewchannel,'Value')==1&&get(handles.checkbox4_Fewchannel,'Value')==1
                        acthreshold1=str2num(get(handles.edit14_Fewchannel,'string'));
                        acthreshold2=str2num(get(handles.edit18_Fewchannel,'string'));
                        enthreshold1=str2num(get(handles.edit16_Fewchannel,'string'));
                        enthreshold2=str2num(get(handles.edit19_Fewchannel,'string'));
                        kuthreshold1=str2num(get(handles.edit17_Fewchannel,'string'));
                        kuthreshold2=str2num(get(handles.edit20_Fewchannel,'string'));
                        vathreshold1=str2num(get(handles.edit21_Fewchannel,'string'));
                        vathreshold2=str2num(get(handles.edit22_Fewchannel,'string'));
                        [Ycca,W] = CCA_threshold(Y_bss,B,WC,acthreshold1,acthreshold1,enthreshold1,enthreshold2,kuthreshold1,kuthreshold2,vathreshold1,vathreshold2);
                    end
                    Youtput=Ycca;
                case 3      %IVA
                    [Y_bss,F,WC,P_iva]= myIVA( existingdata,fs,tlag);
                    if get(handles.checkbox1_Fewchannel,'Value')==1
                        acthreshold1=str2num(get(handles.edit14_Fewchannel,'string'));
                        acthreshold2=str2num(get(handles.edit18_Fewchannel,'string'));
                        [Yiva,W] = IVA_threshold(Y_bss,F,WC,P_iva,acthreshold1,acthreshold2,10000,10000,10000,10000,10000,10000);
                    end
                    if get(handles.checkbox2_Fewchannel,'Value')==1
                        enthreshold1=str2num(get(handles.edit16_Fewchannel,'string'));
                        enthreshold2=str2num(get(handles.edit19_Fewchannel,'string'));
                        [Yiva,W] = IVA_threshold(Y_bss,F,WC,P_iva,0,0,enthreshold1,enthreshold2,10000,10000,10000,10000);
                    end
                    if get(handles.checkbox3_Fewchannel,'Value')==1
                        kuthreshold1=str2num(get(handles.edit17_Fewchannel,'string'));
                        kuthreshold2=str2num(get(handles.edit20_Fewchannel,'string'));
                        [Yiva,W] = IVA_threshold(Y_bss,F,WC,P_iva,0,0,10000,10000,kuthreshold1,kuthreshold2,10000,10000);
                    end
                    if get(handles.checkbox4_Fewchannel,'Value')==1
                        vathreshold1=str2num(get(handles.edit21_Fewchannel,'string'));
                        vathreshold2=str2num(get(handles.edit22_Fewchannel,'string'));
                        [Yiva,W] = IVA_threshold(Y_bss,F,WC,P_iva,0,0,10000,10000,10000,10000,vathreshold1,vathreshold2);
                    end
                    if  get(handles.checkbox1_Fewchannel,'Value')==1&&get(handles.checkbox2_Fewchannel,'Value')==1
                        enthreshold1=str2num(get(handles.edit16_Fewchannel,'string'));
                        enthreshold2=str2num(get(handles.edit19_Fewchannel,'string'));
                        acthreshold1=str2num(get(handles.edit17_Fewchannel,'string'));
                        acthreshold2=str2num(get(handles.edit20_Fewchannel,'string'));
                        [Yiva,W] = IVA_threshold(Y_bss,F,WC,P_iva,acthreshold1,acthreshold2,enthreshold1,enthreshold2, 10000,10000,10000,10000);
                    end
                    if  get(handles.checkbox1_Fewchannel,'Value')==1&&get(handles.checkbox3_Fewchannel,'Value')==1
                        acthreshold1=str2num(get(handles.edit14_Fewchannel,'string'));
                        acthreshold2=str2num(get(handles.edit18_Fewchannel,'string'));
                        kuthreshold1=str2num(get(handles.edit17_Fewchannel,'string'));
                        kuthreshold2=str2num(get(handles.edit20_Fewchannel,'string'));
                        [Yiva,W] = IVA_threshold(Y_bss,F,WC,P_iva,acthreshold1,acthreshold2,10000,10000,kuthreshold1,kuthreshold2,10000,10000);
                    end
                    if  get(handles.checkbox1_Fewchannel,'Value')==1&&get(handles.checkbox4_Fewchannel,'Value')==1
                        acthreshold1=str2num(get(handles.edit14_Fewchannel,'string'));
                        acthreshold2=str2num(get(handles.edit18_Fewchannel,'string'));
                        vathreshold1=str2num(get(handles.edit21_Fewchannel,'string'));
                        vathreshold2=str2num(get(handles.edit22_Fewchannel,'string'));
                        [Yiva,W] = IVA_threshold(Y_bss,F,WC,P_iva,acthreshold1,acthreshold2,10000,10000,10000,10000,vathreshold1,vathreshold2);
                    end
                    if  get(handles.checkbox2_Fewchannel,'Value')==1&&get(handles.checkbox3_Fewchannel,'Value')==1
                        enthreshold1=str2num(get(handles.edit16_Fewchannel,'string'));
                        enthreshold2=str2num(get(handles.edit19_Fewchannel,'string'));
                        kuthreshold1=str2num(get(handles.edit17_Fewchannel,'string'));
                        kuthreshold2=str2num(get(handles.edit20_Fewchannel,'string'));
                        [Yiva,W] = IVA_threshold(Y_bss,F,WC,P_iva,0,0,enthreshold1,enthreshold2,kuthreshold1,kuthreshold2,10000,10000);
                    end
                    if  get(handles.checkbox2_Fewchannel,'Value')==1&&get(handles.checkbox4_Fewchannel,'Value')==1
                        enthreshold1=str2num(get(handles.edit16_Fewchannel,'string'));
                        enthreshold2=str2num(get(handles.edit19_Fewchannel,'string'));
                        vathreshold1=str2num(get(handles.edit21_Fewchannel,'string'));
                        vathreshold2=str2num(get(handles.edit22_Fewchannel,'string'));
                        [Yiva,W] = IVA_threshold(Y_bss,F,WC,P_iva,0,0,enthreshold1,enthreshold2,10000,10000,vathreshold1,vathreshold2);
                    end
                    if  get(handles.checkbox3_Fewchannel,'Value')==1&&get(handles.checkbox4_Fewchannel,'Value')==1
                        kuthreshold1=str2num(get(handles.edit17_Fewchannel,'string'));
                        kuthreshold2=str2num(get(handles.edit20_Fewchannel,'string'));
                        vathreshold1=str2num(get(handles.edit21_Fewchannel,'string'));
                        vathreshold2=str2num(get(handles.edit22_Fewchannel,'string'));
                        [Yiva,W] = IVA_threshold(Y_bss,F,WC,P_iva,0,0,10000,10000,kuthreshold1,kuthreshold2,vathreshold1,vathreshold2);
                    end
                    if  get(handles.checkbox1_Fewchannel,'Value')==1&&get(handles.checkbox2_Fewchannel,'Value')==1&&get(handles.checkbox3_Fewchannel,'Value')==1
                        acthreshold1=str2num(get(handles.edit14_Fewchannel,'string'));
                        acthreshold2=str2num(get(handles.edit18_Fewchannel,'string'));
                        enthreshold1=str2num(get(handles.edit16_Fewchannel,'string'));
                        enthreshold2=str2num(get(handles.edit19_Fewchannel,'string'));
                        kuthreshold1=str2num(get(handles.edit17_Fewchannel,'string'));
                        kuthreshold2=str2num(get(handles.edit20_Fewchannel,'string'));
                        [Yiva,W] = IVA_threshold(Y_bss,F,WC,P_iva,acthreshold1,acthreshold2, enthreshold1, enthreshold2,kuthreshold1,kuthreshold2,10000,10000);
                    end
                    if  get(handles.checkbox1_Fewchannel,'Value')==1&&get(handles.checkbox2_Fewchannel,'Value')==1&&get(handles.checkbox4_Fewchannel,'Value')==1
                        acthreshold1=str2num(get(handles.edit14_Fewchannel,'string'));
                        acthreshold2=str2num(get(handles.edit18_Fewchannel,'string'));
                        enthreshold1=str2num(get(handles.edit16_Fewchannel,'string'));
                        enthreshold2=str2num(get(handles.edit19_Fewchannel,'string'));
                        vathreshold1=str2num(get(handles.edit21_Fewchannel,'string'));
                        vathreshold2=str2num(get(handles.edit22_Fewchannel,'string'));
                        [Yiva,W] = IVA_threshold(Y_bss,F,WC,P_iva,acthreshold1,acthreshold2, enthreshold1, enthreshold2,10000,10000,vathreshold1,vathreshold2);
                    end
                    if  get(handles.checkbox1_Fewchannel,'Value')==1&&get(handles.checkbox3_Fewchannel,'Value')==1&&get(handles.checkbox4_Fewchannel,'Value')==1
                        acthreshold1=str2num(get(handles.edit14_Fewchannel,'string'));
                        acthreshold2=str2num(get(handles.edit18_Fewchannel,'string'));
                        kuthreshold1=str2num(get(handles.edit17_Fewchannel,'string'));
                        kuthreshold2=str2num(get(handles.edit20_Fewchannel,'string'));
                        vathreshold1=str2num(get(handles.edit21_Fewchannel,'string'));
                        vathreshold2=str2num(get(handles.edit22_Fewchannel,'string'));
                        [Yiva,W] = IVA_threshold(Y_bss,F,WC,P_iva,acthreshold1,acthreshold2, 10000, 10000,kuthreshold1,kuthreshold2,vathreshold1,vathreshold2);
                    end
                    if  get(handles.checkbox2_Fewchannel,'Value')==1&&get(handles.checkbox3_Fewchannel,'Value')==1&&get(handles.checkbox4_Fewchannel,'Value')==1
                        enthreshold1=str2num(get(handles.edit16_Fewchannel,'string'));
                        enthreshold2=str2num(get(handles.edit19_Fewchannel,'string'));
                        kuthreshold1=str2num(get(handles.edit17_Fewchannel,'string'));
                        kuthreshold2=str2num(get(handles.edit20_Fewchannel,'string'));
                        vathreshold1=str2num(get(handles.edit21_Fewchannel,'string'));
                        vathreshold2=str2num(get(handles.edit22_Fewchannel,'string'));
                        [Yiva,W] = IVA_threshold(Y_bss,F,WC,P_iva,0,0, enthreshold1, enthreshold2,kuthreshold1,kuthreshold2,vathreshold1,vathreshold2);
                    end
                    if  get(handles.checkbox1_Fewchannel,'Value')==1&&get(handles.checkbox2_Fewchannel,'Value')==1&&get(handles.checkbox3_Fewchannel,'Value')==1&&get(handles.checkbox4_Fewchannel,'Value')==1
                        acthreshold1=str2num(get(handles.edit14_Fewchannel,'string'));
                        acthreshold2=str2num(get(handles.edit18_Fewchannel,'string'));
                        enthreshold1=str2num(get(handles.edit16_Fewchannel,'string'));
                        enthreshold2=str2num(get(handles.edit19_Fewchannel,'string'));
                        kuthreshold1=str2num(get(handles.edit17_Fewchannel,'string'));
                        kuthreshold2=str2num(get(handles.edit20_Fewchannel,'string'));
                        vathreshold1=str2num(get(handles.edit21_Fewchannel,'string'));
                        vathreshold2=str2num(get(handles.edit22_Fewchannel,'string'));
                        [Yiva,W] = IVA_threshold(Y_bss,F,WC,P_iva,acthreshold1,acthreshold2, enthreshold1, enthreshold2,kuthreshold1,kuthreshold2,vathreshold1,vathreshold2);
                    end
                    Youtput= Yiva;
            end
    end
      waitbar(1,h,'Completed');
        pause(1.5);
        delete(h);
    axes(handles.axes4_Fewchannel);
    cla reset;
    multichannelplot_normal_chen1( Youtput,fs);
   
end
if strcmp(response,'No')
end


% --- Executes on button press in pushbutton15_Fewchannel.
function pushbutton15_Fewchannel_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton15_Fewchannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes4_Fewchannel);
cla reset;

% --- Executes on button press in pushbutton19_Fewchannel.
function pushbutton19_Fewchannel_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton19_Fewchannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Yd;
global Youtput;
global Yrow_1;
 Yd=Youtput;
    [row,column]=size(Yd);
    Yrow_1 = [];
    for i = 1:row
        Yrow_1(i,1) = i;
    end
       set(handles.uipanel63,'visible','on');
%       set(handles.tab_SignalAnalysis,'Visible','on');

  function tab_SignalAnalysis_ResizeFcn(hObject, eventdata, handles)
% hObject    handle to tab1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
   
%     


function edit11_Fewchannel_Callback(hObject, eventdata, handles)
% hObject    handle to edit11_Fewchannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit11_Fewchannel as text
%        str2double(get(hObject,'String')) returns contents of edit11_Fewchannel as a double


% --- Executes during object creation, after setting all properties.
function edit11_Fewchannel_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit11_Fewchannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Fewchannel_Callback(hObject, eventdata, handles)
% hObject    handle to edit2_Fewchannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2_Fewchannel as text
%        str2double(get(hObject,'String')) returns contents of edit2_Fewchannel as a double


% --- Executes during object creation, after setting all properties.
function edit2_Fewchannel_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2_Fewchannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in listbox2_SignalAnalysis.
function listbox2_SignalAnalysis_Callback(hObject, eventdata, handles)
% hObject    handle to listbox2_SignalAnalysis (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox2_SignalAnalysis contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox2_SignalAnalysis
global fs;
global Yd;
global vd;
 cla reset;  
vd=get(handles. listbox2_SignalAnalysis,'value');
if vd==1       
    return;
end
vd=vd-1;
 axes(handles.axes1_SignalAnalysis);
  multichannelplot_normal_chen3(Yd(vd,:),fs);
  Ymax=max(Yd(vd,:));
  Ymin=min(Yd(vd,:));
  Ymean=mean(Yd(vd,:));
  set(handles.edit9_SignalAnalysis,'string',num2str(Ymax));
  set(handles.edit8_SignalAnalysis,'string',num2str(Ymean));
  set(handles.edit7_SignalAnalysis,'string',num2str(Ymin));

% --- Executes during object creation, after setting all properties.
function listbox2_SignalAnalysis_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox2_SignalAnalysis (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton6_SignalAnalysis.
function pushbutton6_SignalAnalysis_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6_SignalAnalysis (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Yrow;
set(handles.listbox2_SignalAnalysis,'string',{'Num of signal',num2str(Yrow)});

% --- Executes on button press in pushbutton7_SignalAnalysis.
function pushbutton7_SignalAnalysis_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7_SignalAnalysis (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global vd;
vd=vd-1;
global Yd;
[filename ,pathname]=uiputfile({' Yd','MAT-files(*.mat)'},'save');%pathname获取保存数据路径，filename获取保存数据名称
str=strcat(pathname,filename);%字符串连接
Yd=Yd(vd,:);
save(str, 'Yd')

% --- Executes on button press in pushbutton8_SignalAnalysis.
function pushbutton8_SignalAnalysis_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8_SignalAnalysis (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clc;
set(handles.tab_SignalAnalysis,'Visible','off');

function edit7_SignalAnalysis_Callback(hObject, eventdata, handles)
% hObject    handle to edit7_SignalAnalysis (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7_SignalAnalysis as text
%        str2double(get(hObject,'String')) returns contents of edit7_SignalAnalysis as a double


% --- Executes during object creation, after setting all properties.
function edit7_SignalAnalysis_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7_SignalAnalysis (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit8_SignalAnalysis_Callback(hObject, eventdata, handles)
% hObject    handle to edit8_SignalAnalysis (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit8_SignalAnalysis as text
%        str2double(get(hObject,'String')) returns contents of edit8_SignalAnalysis as a double


% --- Executes during object creation, after setting all properties.
function edit8_SignalAnalysis_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit8_SignalAnalysis (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit9_SignalAnalysis_Callback(hObject, eventdata, handles)
% hObject    handle to edit9_SignalAnalysis (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit9_SignalAnalysis as text
%        str2double(get(hObject,'String')) returns contents of edit9_SignalAnalysis as a double


% --- Executes during object creation, after setting all properties.
function edit9_SignalAnalysis_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit9_SignalAnalysis (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit79_Callback(hObject, eventdata, handles)
% hObject    handle to edit29_Multichannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit29_Multichannel as text
%        str2double(get(hObject,'String')) returns contents of edit29_Multichannel as a double


% --- Executes during object creation, after setting all properties.
function edit29_Multichannel_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit29_Multichannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu1_Multichannel.
function popupmenu1_Multichannel_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1_Multichannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1_Multichannel contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1_Multichannel
global vah;
global componumber;
vah=get(handles.popupmenu1_Multichannel ,'value');
switch (vah)
    case 1      %SSA
        set(handles.edit25_Multichannel,'string','Window width','visible','on');
        set(handles.edit26_Multichannel,'string','','visible','on');
        set(handles.edit29_Multichannel,'string','Num of comps','visible','on');
        set(handles.edit30_Multichannel,'string','','visible','on');
        set(handles.edit31_Multichannel,'string','NumImf','visible','off');
        set(handles.edit32_Multichannel,'visible','off');
        set(handles. popupmenu5_Multichannel,'visible','off');
        set(handles. pushbutton1_Multichannel,'Enable','on');
        set(handles. pushbutton9_Multichannel,'Enable','on');
        set(handles. pushbutton11_Multichannel,'Enable','on');
        set(handles. pushbutton12_Multichannel,'Enable','on');
        set(handles. pushbutton13_Multichannel,'Enable','on');
        set(handles. pushbutton15_Multichannel,'Enable','on');
        
    case 2                      %Wavelet
        set(handles.edit25_Multichannel,'string','Wave level','visible','on');
        set(handles.edit26_Multichannel,'string','','visible','on');
        set(handles.edit29_Multichannel,'string','Wavebase','visible','on');
        set(handles.edit30_Multichannel,'string','','visible','on');
        set(handles.edit31_Multichannel,'string','Threshold','visible','off');
        set(handles.edit32_Multichannel,'string','','visible','off');
        set(handles. popupmenu5_Multichannel,'visible','on');
        set(handles. pushbutton1_Multichannel,'Enable','on');
        set(handles. pushbutton9_Multichannel,'Enable','on');
        set(handles. pushbutton11_Multichannel,'Enable','on');
        set(handles. pushbutton12_Multichannel,'Enable','on');
        set(handles. pushbutton13_Multichannel,'Enable','on');
        set(handles. pushbutton15_Multichannel,'Enable','on');
        
    case 3                     %EEMD
        set(handles.edit25_Multichannel,'string','Noise level','visible','on');
        set(handles.edit26_Multichannel,'string','','visible','on');
        set(handles.edit29_Multichannel,'string','Ensemble Number','visible','on');
        set(handles.edit30_Multichannel,'string','','visible','on');
        set(handles.edit31_Multichannel,'string','NumImf','visible','on');
        set(handles.edit32_Multichannel,'string','','visible','on');
        set(handles. popupmenu5_Multichannel,'visible','off');
        set(handles. pushbutton1_Multichannel,'Enable','on');
        set(handles. pushbutton9_Multichannel,'Enable','on');
        set(handles. pushbutton11_Multichannel,'Enable','on');
        set(handles. pushbutton12_Multichannel,'Enable','on');
        set(handles. pushbutton13_Multichannel,'Enable','on');
        set(handles. pushbutton15_Multichannel,'Enable','on');
    case 4                     %直接使用BSS
        set(handles.edit25_Multichannel,'string','Noise level','visible','off');
        set(handles.edit26_Multichannel,'visible','off');
        set(handles.edit29_Multichannel,'string','Ensemble Number','visible','off');
        set(handles.edit30_Multichannel,'visible','off');
        set(handles.edit31_Multichannel,'string','Threshold','visible','off');
        set(handles.edit32_Multichannel,'string','','visible','off');
        set(handles. popupmenu5_Multichannel,'visible','off');
        set(handles. pushbutton1_Multichannel,'Enable','off');
        set(handles. pushbutton9_Multichannel,'Enable','off');
        set(handles. pushbutton11_Multichannel,'Enable','off');
        set(handles. pushbutton12_Multichannel,'Enable','off');
        set(handles. pushbutton13_Multichannel,'Enable','off');
        set(handles. pushbutton15_Multichannel,'Enable','off');
        componumber=1;
end


% --- Executes during object creation, after setting all properties.
function popupmenu1_Multichannel_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1_Multichannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit26_Multichannel_Callback(hObject, eventdata, handles)
% hObject    handle to edit26_Multichannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit26_Multichannel as text
%        str2double(get(hObject,'String')) returns contents of edit26_Multichannel as a double


% --- Executes during object creation, after setting all properties.
function edit26_Multichannel_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit26_Multichannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit30_Multichannel_Callback(hObject, eventdata, handles)
% hObject    handle to edit30_Multichannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit30_Multichannel as text
%        str2double(get(hObject,'String')) returns contents of edit30_Multichannel as a double


% --- Executes during object creation, after setting all properties.
function edit30_Multichannel_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit30_Multichannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton3_Multichannel.
function pushbutton3_Multichannel_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3_Multichannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global vah;
vah=get(handles.popupmenu1_Multichannel ,'value');
switch (vah)
    case 1      %SSA
        set(handles.edit25_Multichannel,'string','Window width','visible','on');
        set(handles.edit26_Multichannel,'string','30','visible','on');
        set(handles.edit29_Multichannel,'string','Num of comps','visible','on');
        set(handles.edit30_Multichannel,'string','12','visible','on');
        set(handles.edit31_Multichannel,'string','NumImf','visible','off');
        set(handles.edit32_Multichannel,'visible','off');
        set(handles. popupmenu5_Multichannel,'visible','off');
        
    case 2                      %Wavelet
        set(handles.edit25_Multichannel,'string','Wavelevel','visible','on');
        set(handles.edit26_Multichannel,'string','10','visible','on');
        set(handles.edit29_Multichannel,'string','Wavebase','visible','on');
        set(handles.edit30_Multichannel,'string','db4','visible','on');
        set(handles.edit31_Multichannel,'string','Threshold','visible','off');
        set(handles.edit32_Multichannel,'string','','visible','off');
        set(handles. popupmenu5_Multichannel,'visible','on');
        
    case 3                     %EEMD
        set(handles.edit25_Multichannel,'string','Noiselevel','visible','on');
        set(handles.edit26_Multichannel,'string','0.2','visible','on');
        set(handles.edit29_Multichannel,'string','Ensemble Number','visible','on');
        set(handles.edit30_Multichannel,'string','100','visible','on');
        set(handles.edit31_Multichannel,'string','NumImf','visible','on');
        set(handles.edit32_Multichannel,'string','-1','visible','on');
        set(handles. popupmenu5_Multichannel,'visible','off');
        
end

% --- Executes on selection change in popupmenu5_Multichannel.
function popupmenu5_Multichannel_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu5_Multichannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu5_Multichannel contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu5_Multichannel


% --- Executes during object creation, after setting all properties.
function popupmenu5_Multichannel_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu5_Multichannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton11_Multichannel.
function pushbutton11_Multichannel_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton11_Multichannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global existingdata;
global Imfnumber;
global  componumber;
global vah;
global fs;
global Ydecompose;
global Yrow;
global  Yd;
global H;
 h=waitbar(0,'Running...');
switch (vah)
    case 1                       %SSA
        Windowwidth=str2num(get(handles.edit26_Multichannel,'string'));
        ncomps=str2num(get(handles.edit30_Multichannel,'string'));
        [Ydecompose] = SSA_decompose(existingdata,Windowwidth,ncomps,fs);
        [Hssa,Lssa]=size (Ydecompose);
        ssanum= Hssa/H;
        componumber=ssanum;
    case 2                       %Wavelet
        Wavelevel=str2num(get(handles.edit26_Multichannel,'string'));
        Wavebase=num2str(get(handles.edit30_Multichannel,'string'));
        [Ydecompose,wmcnumber] = wavelet_decompose(existingdata, Wavelevel, Wavebase,fs);
        componumber=wmcnumber;
    case 3                     %EEMD
        Noiselevel=str2num(get(handles.edit26_Multichannel,'string'));
        NE=str2num(get(handles.edit30_Multichannel,'string'));
        numImf_eemd=str2num(get(handles.edit32_Multichannel,'string'));
        [Ydecompose,Imfnumber] = EEMD_mdecompose(existingdata,Noiselevel,NE,fs,numImf_eemd);
        componumber=Imfnumber;
end
      waitbar(1,h,'Completed');
        pause(2);
        delete(h);


% --- Executes on button press in pushbutton12_Multichannel.
function pushbutton12_Multichannel_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton12_Multichannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Ydecompose;
[filename ,pathname]=uiputfile({' Ydecompose','MAT-files(*.mat)'},'save');%pathname获取保存数据路径，filename获取保存数据名称
str=strcat(pathname,filename);%字符串连接
save(str, 'Ydecompose')%将数据a保存为mat文件；

% --- Executes on button press in pushbutton13_Multichannel.
function pushbutton13_Multichannel_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton13_Multichannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global vah;
global Yd;
global Yrow;
global Ydecompose;
global fs;
switch(vah)
    case 1
        Yd=Ydecompose;
        [row,column]=size(Yd);
        Yrow = [];
        for i = 1:row
            Yrow(i,1) = i;
        end
%         set(handles.tab_Decompositioncomponents,'Visible','on');
        run ('de_Signal_Analysis.m');
    case 2
        Yd=Ydecompose;
        [row,column]=size(Yd);
        Yrow = [];
        for i = 1:row
            Yrow(i,1) = i;
        end
%         set(handles.tab_Waveletcomponents,'Visible','on');
        run ('wt_Signal_Analysis.m');
    case 3
        Yd=Ydecompose;
        [row,column]=size(Yd);
        Yrow = [];
        for i = 1:row
            Yrow(i,1) = i;
        end
%         set(handles.tab_IMFs,'Visible','on');
        run ('decompose_Signal_Analysis.m');
end 
          

function edit32_Multichannel_Callback(hObject, eventdata, handles)
% hObject    handle to edit32_Multichannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit32_Multichannel as text
%        str2double(get(hObject,'String')) returns contents of edit32_Multichannel as a double


% --- Executes during object creation, after setting all properties.
function edit32_Multichannel_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit32_Multichannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit72_Multichannel_Callback(hObject, eventdata, handles)
% hObject    handle to edit72_Multichannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit72_Multichannel as text
%        str2double(get(hObject,'String')) returns contents of edit72_Multichannel as a double


% --- Executes during object creation, after setting all properties.
function edit72_Multichannel_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit72_Multichannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in checkbox9_Multichannel.
function checkbox9_Multichannel_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox9_Multichannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox9_Multichannel


% --- Executes on button press in checkbox6_Multichannel.
function checkbox6_Multichannel_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox6_Multichannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox6_Multichannel


% --- Executes on button press in checkbox7_Multichannel.
function checkbox7_Multichannel_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox7_Multichannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox7_Multichannel



function edit74_Multichannel_Callback(hObject, eventdata, handles)
% hObject    handle to edit74_Multichannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit74_Multichannel as text
%        str2double(get(hObject,'String')) returns contents of edit74_Multichannel as a double


% --- Executes during object creation, after setting all properties.
function edit74_Multichannel_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit74_Multichannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit75_Multichannel_Callback(hObject, eventdata, handles)
% hObject    handle to edit84_Multichannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit84_Multichannel as text
%        str2double(get(hObject,'String')) returns contents of edit84_Multichannel as a double


% --- Executes during object creation, after setting all properties.
function edit75_Multichannel_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit84_Multichannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit84_Multichannel_Callback(hObject, eventdata, handles)
% hObject    handle to edit84_Multichannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit84_Multichannel as text
%        str2double(get(hObject,'String')) returns contents of edit84_Multichannel as a double


% --- Executes during object creation, after setting all properties.
function edit84_Multichannel_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit84_Multichannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit85_Multichannel_Callback(hObject, eventdata, handles)
% hObject    handle to edit85_Multichannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit85_Multichannel as text
%        str2double(get(hObject,'String')) returns contents of edit85_Multichannel as a double


% --- Executes during object creation, after setting all properties.
function edit85_Multichannel_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit85_Multichannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit78_Multichannel_Callback(hObject, eventdata, handles)
% hObject    handle to edit86_Multichannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit86_Multichannel as text
%        str2double(get(hObject,'String')) returns contents of edit86_Multichannel as a double


% --- Executes during object creation, after setting all properties.
function edit78_Multichannel_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit86_Multichannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu3_Multichannel.
function popupmenu3_Multichannel_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu3_Multichannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu3_Multichannel contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu3_Multichannel


% --- Executes during object creation, after setting all properties.
function popupmenu3_Multichannel_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu3_Multichannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu2_Multichannel.
function popupmenu2_Multichannel_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu2_Multichannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu2_Multichannel contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu2_Multichannel
global vah1;
vah1=get(handles.popupmenu2_Multichannel ,'value');
switch (vah1)
    case 1     %ICA
        set(handles.edit57_Multichannel,'string','IcaType','visible','on');
        set(handles.popupmenu3_Multichannel,'visible','on');
        set(handles.edit120_Multichannel,'string','','visible','off');
        set(handles.text94_multi,'visible','off');
        set(handles.pushbutton4_Multichannel,'Enable','on');
        set(handles.pushbutton10_Multichannel,'Enable','on');
        set(handles.pushbutton16_Multichannel,'Enable','on');
        set(handles.checkbox9_Multichannel,'Enable','on');
         set(handles.checkbox6_Multichannel,'Enable','on');
       set(handles.checkbox7_Multichannel,'Enable','on');
    case 2     %CCA
        set(handles.edit57_Multichannel,'string','Time delay','visible','on');
        set(handles.popupmenu3_Multichannel,'visible','off');
        set(handles.edit120_Multichannel,'string','','visible','on');
        set(handles.text94_multi,'visible','on');
        set(handles.pushbutton4_Multichannel,'Enable','on');
        set(handles.pushbutton10_Multichannel,'Enable','on');
        set(handles.pushbutton16_Multichannel,'Enable','on');
        set(handles.checkbox9_Multichannel,'Enable','on');
         set(handles.checkbox6_Multichannel,'Enable','on');
       set(handles.checkbox7_Multichannel,'Enable','on');
    case 3       %IVA
        set(handles.edit57_Multichannel,'string','Time delay','visible','on');
        set(handles.popupmenu3_Multichannel,'visible','off');
        set(handles.edit120_Multichannel,'string','','visible','on');
        set(handles.text94_multi,'visible','on');
        set(handles.pushbutton4_Multichannel,'Enable','on');
        set(handles.pushbutton10_Multichannel,'Enable','on');
        set(handles.pushbutton16_Multichannel,'Enable','on');
         set(handles.checkbox9_Multichannel,'Enable','on');
         set(handles.checkbox6_Multichannel,'Enable','on');
       set(handles.checkbox7_Multichannel,'Enable','on');
    case 4   %No BSS
        set(handles.edit57_Multichannel,'string','Time delay','visible','off');
        set(handles.popupmenu3_Multichannel,'visible','off');
        set(handles.edit120_Multichannel,'string','','visible','off');
        set(handles.text94_multi,'visible','off');
        set(handles.pushbutton4_Multichannel,'Enable','off');
        set(handles.pushbutton10_Multichannel,'Enable','off');
        set(handles.pushbutton16_Multichannel,'Enable','off');
        set(handles.checkbox9_Multichannel,'Enable','off');
         set(handles.checkbox6_Multichannel,'Enable','off');
       set(handles.checkbox7_Multichannel,'Enable','off');
end

% --- Executes during object creation, after setting all properties.
function popupmenu2_Multichannel_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu2_Multichannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton4_Multichannel.
function pushbutton4_Multichannel_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4_Multichannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global vah;
global vah1;
global vah2;
global Z_m;
global fs;
global existingdata;
global tlag;
global Ybss;
global Y_bss;
global WC;
 h=waitbar(0,'Running...');

tlag=str2num(get(handles.edit120_Multichannel,'string'));
vah1=get(handles.popupmenu2_Multichannel ,'value');
vah2=get(handles.popupmenu3_Multichannel ,'value');
switch(vah)
    case 1 %SSA分解模块
        switch (vah1)
            case 1 %ICA        ssa---ica
                switch (vah2)
                    case 1         %fast ica
                        [Ybss,Wica,WC,P_ica ]= myfastICA( Z_m,fs);
                    case 2     %sobi
                        [Ybss,Wica,WC,P_ica]=mysobi( Z_m,fs,4);
                    case 3     %jade
                        [Ybss,WC,P_ica,B]=myjade( Z_m,fs);
                    case 4     %InfoMax
                        [Ybss,Wica,WC,P_ica] = myinfomax(Z_m,fs);
                end
            case 2                                       %ssa-——CCA
                [Ybss,B,WC]= myCCA( Z_m,fs,tlag);
            case 3       %SSA-iva
                [Ybss,F,WC,P_iva]= myIVA( Z_m,fs,tlag);
        end
    case 2% Wavelet
        switch (vah1)
            case 1 %ICA        ssa---ica
                switch (vah2)
                    case 1         %fast ica
                        [Ybss,Wica,WC,P_ica ] = myfastICA( Z_m,fs);
                    case 2     %sobi
                        [Ybss,Wica,WC,P_ica]=mysobi( Z_m,fs,4);
                    case 3     %jade
                        [Ybss,WC,P_ica,B]=myjade( Z_m,fs);
                        case 4     %InfoMax
                        [Ybss,Wica,WC,P_ica] = myinfomax(Z_m,fs);
                end
            case 2
                [Ybss,B,WC]= myCCA( Z_m,fs,tlag);
            case 3
                [Ybss,F,WC,P_iva]= myIVA( Z_m,fs,tlag);
        end
    case 3   %EEMD分解模块
        switch (vah1)
            case 1 %ICA        ssa---ica
                switch (vah2)
                    case 1         %fast ica
                        [Ybss,Wica,WC,P_ica ]= myfastICA( Z_m,fs);
                    case 2     %sobi
                        [Ybss,Wica,WC,P_ica]=mysobi( Z_m,fs,4);
                    case 3     %jade
                        [Ybss,WC,P_ica,B]=myjade( Z_m,fs);
                        case 4     %InfoMax
                        [Ybss,Wica,WC,P_ica] = myinfomax(Z_m,fs);
                end
            case 2
                [Ybss,B,WC]= myCCA( Z_m,fs,tlag);
            case 3
                [Ybss,F,WC,P_iva]= myIVA( Z_m,fs,tlag);
        end
    case 4              %  use bss directly
        switch (vah1)
            case 1        %ICA
                switch(vah2)
                    case 1             %FASTICA
                        [Y_bss,Wica,WC,P_ica ]= myfastICA( existingdata,fs);
                    case 2               %sobi
                        [Y_bss,Wica,WC,P_ica] = mysobi( existingdata,fs,4);
                    case 3               %jade
                        [Y_bss,WC,P_ica,B]= myjade( existingdata,fs);
                        case 4     %InfoMax
                        [Ybss,Wica,WC,P_ica] = myinfomax(existingdata,fs);
                end
            case 2      %CCA
                [Y_bss,B,WC]= myCCA( existingdata,fs,tlag);
            case 3      %IVA
                [Y_bss,F,WC,P_iva]= myIVA( existingdata,fs,tlag)
        end
end        %%%得到BSS后的信号
        waitbar(1,h,'Completed');
        pause(1);
        delete(h);


function edit220_Multichannel_Callback(hObject, eventdata, handles)
% hObject    handle to edit220_Multichannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit220_Multichannel as text
%        str2double(get(hObject,'String')) returns contents of edit220_Multichannel as a double


% --- Executes during object creation, after setting all properties.
function edit220_Multichannel_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit220_Multichannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton10_Multichannel.
function pushbutton10_Multichannel_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10_Multichannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Ybss;
global Y_bss;
global vah;
switch (vah)
    case{1,2,3}
        [filename ,pathname]=uiputfile({'*.mat','MAT-files(*.mat)'},'save');%pathname获取保存数据路径，filename获取保存数据名称
        str=strcat(pathname,filename);%字符串连接
        save(char(str), 'Ybss')%将数据a保存为mat文件；
    case 4
        [filename ,pathname]=uiputfile({'*.mat','MAT-files(*.mat)'},'save');%pathname获取保存数据路径，filename获取保存数据名称
        str=strcat(pathname,filename);%字符串连接
        save(char(str), 'Y_bss')%将数据a保存为mat文件；
end



% --- Executes on button press in pushbutton16_Multichannel.
function pushbutton16_Multichannel_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton16_Multichannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global vah;
global vah1;
global Ybss;
global Yd;
global Yrow;
global Y_bss;
global fs;
switch(vah)
    case{1,2,3}
        Yd=Ybss;
        [row,column]=size(Yd);
        Yrow = [];
        for i = 1:row
            Yrow(i,1) = i;
        end
        switch (vah1)
            case{1,3}
                run ('Bss_Signal_Analysis.m');
%                 set(handles.tab_ICs,'Visible','on');
            case 2
                run ('CCA_Analysis.m');
%                 set(handles.tab_CVs,'Visible','on');
        end
    case 4
        Yd=Y_bss;
        [row,column]=size(Yd);
        Yrow = [];
        for i = 1:row
            Yrow(i,1) = i;
        end
        switch (vah1)
            case{1,3}
                run ('Bss_Signal_Analysis.m');
%                  set(handles.tab_ICs,'Visible','on');
            case 2
                run ('CCA_Analysis.m');
%                 set(handles.tab_CVs,'Visible','on');
        end
end

%                
% --- Executes on button press in pushbutton16_Multichannel.
function pushbutton79_Multichannel_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton16_Multichannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton80.
function pushbutton80_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton80 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton2_Multichannel.
function pushbutton2_Multichannel_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2_Multichannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global vah;
global vah1;
global existingdata;
global vah2;
global fs;
global Y_m;
global componumber;
global Youtput;
global Z_m;
global tlag;
global H;
global Ydecompose;
tlag=str2num(get(handles.edit120_Multichannel,'string'));
choosestr={'Determine the correct parameters？ '};
response=questdlg(choosestr,'Question dialog box','Yes','No',2);
vah=get(handles.popupmenu1_Multichannel ,'value');
switch (vah)
    case 1                       %SSA
        Windowwidth=str2num(get(handles.edit26_Multichannel,'string'));
        ncomps=str2num(get(handles.edit30_Multichannel,'string'));
        [Ydecompose] = SSA_decompose(existingdata,Windowwidth,ncomps,fs);
        [Hssa,Lssa]=size (Ydecompose);
        ssanum=Hssa/H;
        componumber=ssanum;
        
    case 2                       %Wavelet
        Wavelevel=str2num(get(handles.edit26_Multichannel,'string'));
        Wavebase=num2str(get(handles.edit30_Multichannel,'string'));
        [Ydecompose,wmcnumber] = wavelet_decompose(existingdata, Wavelevel, Wavebase,fs);
        componumber=wmcnumber;
        
    case 3                     %EEMD
        Noiselevel=str2num(get(handles.edit26_Multichannel,'string'));
        NE=str2num(get(handles.edit30_Multichannel,'string'));
        numImf_eemd=str2num(get(handles.edit32_Multichannel,'string'));
        [Ydecompose,Imfnumber] = EEMD_mdecompose(existingdata,Noiselevel,NE,fs,numImf_eemd);
        componumber=Imfnumber;
end
if get(handles.checkbox2_Multichannel,'Value')==1
    acthreshold1=str2num(get(handles.edit68_Multichannel,'string'));
    acthreshold2=str2num(get(handles.edit97_Multichannel,'string'));
    [Z_m,Y_m] = choose_compo(Ydecompose,acthreshold1,acthreshold2,10000,10000,10000,10000,10000,10000);
end
if get(handles.checkbox3_Multichannel,'Value')==1
    enthreshold1=str2num(get(handles.edit69_Multichannel,'string'));
    enthreshold2=str2num(get(handles.edit79_Multichannel,'string'));
    [Z_m,Y_m] = choose_compo(Ydecompose,0,0,enthreshold1,enthreshold2,10000,10000,10000,100000);
end
if get(handles.checkbox4_Multichannel,'Value')==1
    kuthreshold1=str2num(get(handles.edit70_Multichannel,'string'));
    kuthreshold2=str2num(get(handles.edit80_Multichannel,'string'));
    [Z_m,Y_m] = choose_compo(Ydecompose,0,0,10000,10000,kuthreshold1,kuthreshold2,10000,10000);
end
if get(handles.checkbox10_Multichannel,'Value')==1
    vathreshold1=str2num(get(handles.edit71_Multichannel,'string'));
    vathreshold2=str2num(get(handles.edit81_Multichannel,'string'));
    [Z_m,Y_m] = choose_compo(Ydecompose,0,0,10000,10000,10000,10000,vathreshold1,vathreshold2);
end
if get(handles.checkbox2_Multichannel,'Value')==1&&get(handles.checkbox3_Multichannel,'Value')==1
    acthreshold1=str2num(get(handles.edit68_Multichannel,'string'));
    acthreshold2=str2num(get(handles.edit78_Multichannel,'string'));
    enthreshold1=str2num(get(handles.edit69_Multichannel,'string'));
    enthreshold2=str2num(get(handles.edit79_Multichannel,'string'));
    [Z_m,Y_m] = choose_compo(Ydecompose,acthreshold1,acthreshold2,enthreshold1,enthreshold2,10000,10000,10000,10000);
end
if get(handles.checkbox2_Multichannel,'Value')==1&&get(handles.checkbox4_Multichannel,'Value')==1
    acthreshold1=str2num(get(handles.edit68_Multichannel,'string'));
    acthreshold2=str2num(get(handles.edit97_Multichannel,'string'));
    kuthreshold1=str2num(get(handles.edit70_Multichannel,'string'));
    kuthreshold2=str2num(get(handles.edit80_Multichannel,'string'));
    [Z_m,Y_m] = choose_compo(Ydecompose,acthreshold1,acthreshold2,10000,10000, kuthreshold1, kuthreshold2,10000,10000);
end
if get(handles.checkbox2_Multichannel,'Value')==1&&get(handles.checkbox10_Multichannel,'Value')==1
    acthreshold1=str2num(get(handles.edit68_Multichannel,'string'));
    acthreshold2=str2num(get(handles.edit78_Multichannel,'string'));
    vathreshold1=str2num(get(handles.edit71_Multichannel,'string'));
    vathreshold2=str2num(get(handles.edit81_Multichannel,'string'));
    [Z_m,Y_m] = choose_compo(Ydecompose,acthreshold1,acthreshold2,10000,10000, 10000, 10000,vathreshold1,vathreshold2);
end
if get(handles.checkbox3_Multichannel,'Value')==1&&get(handles.checkbox4_Multichannel,'Value')==1
    enthreshold1=str2num(get(handles.edit69_Multichannel,'string'));
    enthreshold2=str2num(get(handles.edit79_Multichannel,'string'));
    kuthreshold1=str2num(get(handles.edit70_Multichannel,'string'));
    kuthreshold2=str2num(get(handles.edit80_Multichannel,'string'));
    [Z_m,Y_m] = choose_compo(Ydecompose,0,0,enthreshold1,enthreshold2,kuthreshold1,kuthreshold2,10000,10000);
end
if get(handles.checkbox3_Multichannel,'Value')==1&&get(handles.checkbox10_Multichannel,'Value')==1
    enthreshold1=str2num(get(handles.edit69_Multichannel,'string'));
    enthreshold2=str2num(get(handles.edit79_Multichannel,'string'));
    vathreshold1=str2num(get(handles.edit71_Multichannel,'string'));
    vathreshold2=str2num(get(handles.edit81_Multichannel,'string'));
    [Z_m,Y_m] = choose_compo(Ydecompose,0,0,enthreshold1,enthreshold2,10000,10000,vathreshold1,vathreshold2);
end
if get(handles.checkbox4_Multichannel,'Value')==1&&get(handles.checkbox10_Multichannel,'Value')==1
    kuthreshold1=str2num(get(handles.edit70_Multichannel,'string'));
    kuthreshold2=str2num(get(handles.edit80_Multichannel,'string'));
    vathreshold1=str2num(get(handles.edit71_Multichannel,'string'));
    vathreshold2=str2num(get(handles.edit81_Multichannel,'string'));
    [Z_m,Y_m] = choose_compo(Ydecompose,0,0,10000,10000,kuthreshold1,kuthreshold2,vathreshold1,vathreshold2);
end
if get(handles.checkbox2_Multichannel,'Value')==1&&get(handles.checkbox3_Multichannel,'Value')==1&&get(handles.checkbox4_Multichannel,'Value')==1
    acthreshold1=str2num(get(handles.edit68_Multichannel,'string'));
    acthreshold2=str2num(get(handles.edit97_Multichannel,'string'));
    enthreshold1=str2num(get(handles.edit69_Multichannel,'string'));
    enthreshold2=str2num(get(handles.edit79_Multichannel,'string'));
    kuthreshold1=str2num(get(handles.edit70_Multichannel,'string'));
    kuthreshold2=str2num(get(handles.edit80_Multichannel,'string'));
    [Z_m,Y_m] = choose_compo(Ydecompose,acthreshold1,acthreshold2,enthreshold1,enthreshold2,kuthreshold1,kuthreshold2,10000,10000);
end
if get(handles.checkbox2_Multichannel,'Value')==1&&get(handles.checkbox3_Multichannel,'Value')==1&&get(handles.checkbox10_Multichannel,'Value')==1
    acthreshold1=str2num(get(handles.edit68_Multichannel,'string'));
    acthreshold2=str2num(get(handles.edit97_Multichannel,'string'));
    enthreshold1=str2num(get(handles.edit69_Multichannel,'string'));
    enthreshold2=str2num(get(handles.edit79_Multichannel,'string'));
    vathreshold1=str2num(get(handles.edit71_Multichannel,'string'));
    vathreshold2=str2num(get(handles.edit81_Multichannel,'string'));
    [Z_m,Y_m] = choose_compo(Ydecompose,acthreshold1,acthreshold2,enthreshold1,enthreshold2,10000,10000,vathreshold1,vathreshold2);
end
if get(handles.checkbox2_Multichannel,'Value')==1&&get(handles.checkbox4_Multichannel,'Value')==1&&get(handles.checkbox10_Multichannel,'Value')==1
    acthreshold1=str2num(get(handles.edit68_Multichannel,'string'));
    acthreshold2=str2num(get(handles.edit97_Multichannel,'string'));
    kuthreshold1=str2num(get(handles.edit70_Multichannel,'string'));
    kuthreshold2=str2num(get(handles.edit80_Multichannel,'string'));
    vathreshold1=str2num(get(handles.edit71_Multichannel,'string'));
    vathreshold2=str2num(get(handles.edit81_Multichannel,'string'));
    [Z_m,Y_m] = choose_compo(Ydecompose,acthreshold1,acthreshold2,10000,10000,kuthreshold1,kuthreshold2,vathreshold1,vathreshold2);
end
if get(handles.checkbox3_Multichannel,'Value')==1&&get(handles.checkbox4_Multichannel,'Value')==1&&get(handles.checkbox10_Multichannel,'Value')==1
   enthreshold1=str2num(get(handles.edit69_Multichannel,'string'));
    enthreshold2=str2num(get(handles.edit79_Multichannel,'string'));
    kuthreshold1=str2num(get(handles.edit70_Multichannel,'string'));
    kuthreshold2=str2num(get(handles.edit80_Multichannel,'string'));
    vathreshold1=str2num(get(handles.edit71_Multichannel,'string'));
    vathreshold2=str2num(get(handles.edit81_Multichannel,'string'));
    [Z_m,Y_m] = choose_compo(Ydecompose,0,0,enthreshold1,enthreshold2,kuthreshold1,kuthreshold2,vathreshold1,vathreshold2);
end
if get(handles.checkbox2_Multichannel,'Value')==1&&get(handles.checkbox3_Multichannel,'Value')==1&&get(handles.checkbox4_Multichannel,'Value')==1&&get(handles.checkbox10_Multichannel,'Value')==1
    acthreshold1=str2num(get(handles.edit68_Multichannel,'string'));
    acthreshold2=str2num(get(handles.edit97_Multichannel,'string'));
    enthreshold1=str2num(get(handles.edit69_Multichannel,'string'));
    enthreshold2=str2num(get(handles.edit79_Multichannel,'string'));
    kuthreshold1=str2num(get(handles.edit70_Multichannel,'string'));
    kuthreshold2=str2num(get(handles.edit80_Multichannel,'string'));
    vathreshold1=str2num(get(handles.edit71_Multichannel,'string'));
    vathreshold2=str2num(get(handles.edit81_Multichannel,'string'));
    [Z_m,Y_m] = choose_compo(Ydecompose,acthreshold1,acthreshold2,enthreshold1,enthreshold2,kuthreshold1,kuthreshold2,vathreshold1,vathreshold2);
end
if   strcmp(response,'Yes')
    vah=get(handles.popupmenu1_Multichannel ,'value'); %挑选EEMD,Wavelet，SSA,No decomposement
    vah1=get(handles.popupmenu2_Multichannel ,'value');%挑选ICA,CCA,IVA
    vah2=get(handles.popupmenu3_Multichannel ,'value');%挑选ICA类型
    h=waitbar(0,'Running...');
    switch(vah)
        case 1 %SSA分解模块
            switch (vah1)
                case 1 %ICA        ssa---ica
                    switch (vah2)
                        case 1         %fast ica
                            [Ybss,Wica,WC,P_ica ]= myfastICA( Z_m,fs);
                        case 2     %sobi
                            [Ybss,Wica,WC,P_ica]=mysobi( Z_m,fs,4);
                        case 3     %jade
                            [Ybss,WC,P_ica,B]=myjade( Z_m,fs);
                            case 4     %InfoMax
                        [Ybss,Wica,WC,P_ica] = myinfomax(Z_m,fs);
                    end
                case 2                                       %SSA—CCA
                    [Ybss,B,WC]= myCCA( Z_m,fs,tlag);
                case 3       %SSA-iva
                    [Ybss,F,WC,P_iva]= myIVA( Z_m,fs,tlag);
                case 4     %No BSS
                     [Youtput] = multiEEG_1_recon(Ydecompose,Y_m,existingdata,componumber,fs);
                    
            end
        case 2% Wavelet
            switch (vah1)
                case 1 %ICA        ssa---ica
                    switch (vah2)
                        case 1         %fast ica
                            [Ybss,Wica,WC,P_ica ] = myfastICA( Z_m,fs);
                        case 2     %sobi
                            [Ybss,Wica,WC,P_ica]=mysobi( Z_m,fs,4);
                        case 3     %jade
                            [Ybss,WC,P_ica,B]=myjade( Z_m,fs);
                        case 4     %InfoMax
                        [Ybss,Wica,WC,P_ica] = myinfomax(Z_m,fs);
                    end
                case 2
                    [Ybss,B,WC]= myCCA( Z_m,fs,tlag);
                case 3
                    [Ybss,F,WC,P_iva]= myIVA( Z_m,fs,tlag);
                case 4     %No BSS
                     [Youtput] = multiEEG_1_recon(Ydecompose,Y_m,existingdata,componumber,fs);
            end
        case 3   %EEMD分解模块
            switch (vah1)
                case 1 %ICA        ssa---ica
                    switch (vah2)
                        case 1         %fast ica
                            [Ybss,Wica,WC,P_ica ]= myfastICA( Z_m,fs);
                        case 2     %sobi
                            [Ybss,Wica,WC,P_ica]=mysobi( Z_m,fs,4);
                        case 3     %jade
                            [Ybss,WC,P_ica,B]=myjade( Z_m,fs);
                        case 4     %InfoMax
                        [Ybss,Wica,WC,P_ica] = myinfomax(Z_m,fs);
                    end
                case 2
                    [Ybss,B,WC]= myCCA( Z_m,fs,tlag);
                case 3
                    [Ybss,F,WC,P_iva]= myIVA( Z_m,fs,tlag);
                case 4     %No BSS
                     [Youtput] = multiEEG_1_recon(Ydecompose,Y_m,existingdata,componumber,fs);
            end
        case 4              %  use bss directly
            switch (vah1)
                case 1        %ICA
                    switch(vah2)
                        case 1             %FASTICA
                            [Y_bss,Wica,WC,P_ica ]= myfastICA( existingdata,fs);
                            if get(handles.checkbox9_Multichannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit72_Multichannel,'string'));
                                acthreshold2=str2num(get(handles.edit84_Multichannel,'string'));
                                [Y_fastICA,W] = ICA_threshold_fastica(Y_bss,WC,Wica,P_ica,acthreshold1,acthreshold2,10000,10000,10000,10000,10000,10000);
                            end
                            if get(handles.checkbox6_Multichannel,'Value')==1 ;
                                enthreshold1=str2num(get(handles.edit74_Multichannel,'string'));
                                enthreshold2=str2num(get(handles.edit85_Multichannel,'string'));
                                [Y_fastICA,W] = ICA_threshold_fastica(Y_bss,WC,Wica,P_ica,0,0,enthreshold1,enthreshold2,10000,10000,10000,10000);
                            end
                            if get(handles.checkbox7_Multichannel,'Value')==1
                                kuthreshold1=str2num(get(handles.edit220_Multichannel,'string'));
                                kuthreshold2=str2num(get(handles.edit86_Multichannel,'string'));
                                [Y_fastICA,W] = ICA_threshold_fastica(Y_bss,WC,Wica,P_ica,0,0,10000,10000,kuthreshold1,kuthreshold2,10000,10000);
                            end
                            if get(handles.checkbox8_Multichannel,'Value')==1
                                vathreshold1=str2num(get(handles.edit78_Multichannel,'string'));
                                vathreshold2=str2num(get(handles.edit87_Multichannel,'string'));
                                [Y_fastICA,W] = ICA_threshold_fastica(Y_bss,WC,Wica,P_ica,0,0,10000,10000,10000,10000,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox9_Multichannel,'Value')==1&&get(handles.checkbox6_Multichannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit72_Multichannel,'string'));
                                acthreshold2=str2num(get(handles.edit84_Multichannel,'string'));
                                enthreshold1=str2num(get(handles.edit74_Multichannel,'string'));
                                enthreshold2=str2num(get(handles.edit85_Multichannel,'string'));
                                [Y_fastICA,W] = ICA_threshold_fastica(Y_bss,WC,Wica,P_ica,acthreshold1,acthreshold2,enthreshold1,enthreshold2,10000,10000,10000,10000);
                            end
                            if  get(handles.checkbox9_Multichannel,'Value')==1&&get(handles.checkbox8_Multichannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit72_Multichannel,'string'));
                                acthreshold2=str2num(get(handles.edit84_Multichannel,'string'));
                                vathreshold1=str2num(get(handles.edit78_Multichannel,'string'));
                                vathreshold2=str2num(get(handles.edit87_Multichannel,'string'));
                                [Y_fastICA,W] = ICA_threshold_fastica(Y_bss,WC,Wica,P_ica,acthreshold1,acthreshold2,10000,10000,10000,10000,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox9_Multichannel,'Value')==1&&get(handles.checkbox7_Multichannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit72_Multichannel,'string'));
                                acthreshold2=str2num(get(handles.edit84_Multichannel,'string'));
                                kuthreshold1=str2num(get(handles.edit220_Multichannel,'string'));
                                kuthreshold2=str2num(get(handles.edit86_Multichannel,'string'));
                                [Y_fastICA,W] = ICA_threshold_fastica(Y_bss,WC,Wica,P_ica,acthreshold1,acthreshold2,10000,10000,kuthreshold1,kuthreshold2,10000,10000);
                            end
                            if  get(handles.checkbox6_Multichannel,'Value')==1&&get(handles.checkbox7_Multichannel,'Value')==1
                                enthreshold1=str2num(get(handles.edit74_Multichannel,'string'));
                                enthreshold2=str2num(get(handles.edit85_Multichannel,'string'));
                                kuthreshold1=str2num(get(handles.edit220_Multichannel,'string'));
                                kuthreshold2=str2num(get(handles.edit86_Multichannel,'string'));
                                [Y_fastICA,W] = ICA_threshold_fastica(Y_bss,WC,Wica,P_ica,0,0,enthreshold1,enthreshold2,kuthreshold1,kuthreshold2,10000,10000);
                            end
                            if  get(handles.checkbox6_Multichannel,'Value')==1&&get(handles.checkbox8_Multichannel,'Value')==1
                                enthreshold1=str2num(get(handles.edit74_Multichannel,'string'));
                                enthreshold2=str2num(get(handles.edit85_Multichannel,'string'));
                                vathreshold1=str2num(get(handles.edit78_Multichannel,'string'));
                                vathreshold2=str2num(get(handles.edit87_Multichannel,'string'));
                                [Y_fastICA,W] = ICA_threshold_fastica(Y_bss,WC,Wica,P_ica,0,0,enthreshold1,enthreshold2,10000,10000,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox7_Multichannel,'Value')==1&&get(handles.checkbox8_Multichannel,'Value')==1
                                kuthreshold1=str2num(get(handles.edit220_Multichannel,'string'));
                                kuthreshold2=str2num(get(handles.edit86_Multichannel,'string'));
                                vathreshold1=str2num(get(handles.edit78_Multichannel,'string'));
                                vathreshold2=str2num(get(handles.edit87_Multichannel,'string'));
                                [Y_fastICA,W] = ICA_threshold_fastica(Y_bss,WC,Wica,P_ica,0,0,10000,10000,kuthreshold1,kuthreshold2,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox9_Multichannel,'Value')==1&&get(handles.checkbox6_Multichannel,'Value')==1&&get(handles.checkbox7_Multichannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit72_Multichannel,'string'));
                                acthreshold2=str2num(get(handles.edit84_Multichannel,'string'));
                                enthreshold1=str2num(get(handles.edit74_Multichannel,'string'));
                                enthreshold2=str2num(get(handles.edit85_Multichannel,'string'));
                                kuthreshold1=str2num(get(handles.edit220_Multichannel,'string'));
                                kuthreshold2=str2num(get(handles.edit86_Multichannel,'string'));
                                [Y_fastICA,W] = ICA_threshold_fastica(Y_bss,WC,Wica,P_ica,acthreshold1,acthreshold2,enthreshold1,enthreshold2,kuthreshold1,kuthreshold2,10000,10000);
                            end
                            if  get(handles.checkbox9_Multichannel,'Value')==1&&get(handles.checkbox6_Multichannel,'Value')==1&&get(handles.checkbox8_Multichannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit72_Multichannel,'string'));
                                acthreshold2=str2num(get(handles.edit84_Multichannel,'string'));
                                enthreshold1=str2num(get(handles.edit74_Multichannel,'string'));
                                enthreshold2=str2num(get(handles.edit85_Multichannel,'string'));
                                vathreshold1=str2num(get(handles.edit78_Multichannel,'string'));
                                vathreshold2=str2num(get(handles.edit87_Multichannel,'string'));
                                [Y_fastICA,W] = ICA_threshold_fastica(Y_bss,WC,Wica,P_ica,acthreshold1,acthreshold2,enthreshold1,enthreshold2,10000,10000,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox9_Multichannel,'Value')==1&&get(handles.checkbox7_Multichannel,'Value')==1&&get(handles.checkbox8_Multichannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit72_Multichannel,'string'));
                                acthreshold2=str2num(get(handles.edit84_Multichannel,'string'));
                                kuthreshold1=str2num(get(handles.edit220_Multichannel,'string'));
                                kuthreshold2=str2num(get(handles.edit86_Multichannel,'string'));
                                vathreshold1=str2num(get(handles.edit78_Multichannel,'string'));
                                vathreshold2=str2num(get(handles.edit87_Multichannel,'string'));
                                [Y_fastICA,W] = ICA_threshold_fastica(Y_bss,WC,Wica,P_ica,acthreshold1,acthreshold2,10000,10000, kuthreshold1, kuthreshold2,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox6_Multichannel,'Value')==1&&get(handles.checkbox7_Multichannel,'Value')==1&&get(handles.checkbox8_Multichannel,'Value')==1
                                enthreshold1=str2num(get(handles.edit74_Multichannel,'string'));
                                enthreshold2=str2num(get(handles.edit85_Multichannel,'string'));
                                kuthreshold1=str2num(get(handles.edit220_Multichannel,'string'));
                                kuthreshold2=str2num(get(handles.edit86_Multichannel,'string'));
                                vathreshold1=str2num(get(handles.edit78_Multichannel,'string'));
                                vathreshold2=str2num(get(handles.edit87_Multichannel,'string'));
                                [Y_fastICA,W] = ICA_threshold_fastica(Y_bss,WC,Wica,P_ica,0,0,enthreshold1,enthreshold2, kuthreshold1, kuthreshold2,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox9_Multichannel,'Value')==1&&get(handles.checkbox6_Multichannel,'Value')==1&&get(handles.checkbox7_Multichannel,'Value')==1&&get(handles.checkbox8_Multichannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit72_Multichannel,'string'));
                                acthreshold2=str2num(get(handles.edit84_Multichannel,'string'));
                                enthreshold1=str2num(get(handles.edit74_Multichannel,'string'));
                                enthreshold2=str2num(get(handles.edit85_Multichannel,'string'));
                                kuthreshold1=str2num(get(handles.edit220_Multichannel,'string'));
                                kuthreshold2=str2num(get(handles.edit86_Multichannel,'string'));
                                vathreshold1=str2num(get(handles.edit78_Multichannel,'string'));
                                vathreshold2=str2num(get(handles.edit87_Multichannel,'string'));
                                [Y_fastICA,W] = ICA_threshold_fastica(Y_bss,WC,Wica,P_ica,acthreshold1,acthreshold2,enthreshold1,enthreshold2, kuthreshold1, kuthreshold2,vathreshold1,vathreshold2);
                            end
                            Youtput= Y_fastICA;
                        case 2               %sobi
                            [Y_bss,Wica,WC,P_ica] = mysobi( existingdata,fs,4);
                            if get(handles.checkbox9_Multichannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit72_Multichannel,'string'));
                                acthreshold2=str2num(get(handles.edit84_Multichannel,'string'));
                                [Y_sobi,W] = ICA_threshold_sobi(Y_bss,WC,Wica,P_ica,acthreshold1,acthreshold2,10000,10000,10000,10000,10000,10000);
                            end
                             if get(handles.checkbox6_Multichannel,'Value')==1 ;
                                enthreshold1=str2num(get(handles.edit74_Multichannel,'string'));
                                enthreshold2=str2num(get(handles.edit85_Multichannel,'string'));
                                [Y_sobi,W] = ICA_threshold_sobi(Y_bss,WC,Wica,P_ica,0,0,enthreshold1,enthreshold2,10000,10000,10000,10000);
                            end
                            if get(handles.checkbox7_Multichannel,'Value')==1
                                kuthreshold1=str2num(get(handles.edit220_Multichannel,'string'));
                                kuthreshold2=str2num(get(handles.edit86_Multichannel,'string'));
                                [Y_sobi,W] = ICA_threshold_sobi(Y_bss,WC,Wica,P_ica,0,0,10000,10000,kuthreshold1,kuthreshold2,10000,10000);
                            end
                            if get(handles.checkbox8_Multichannel,'Value')==1
                                vathreshold1=str2num(get(handles.edit78_Multichannel,'string'));
                                vathreshold2=str2num(get(handles.edit87_Multichannel,'string'));
                                [Y_sobi,W] = ICA_threshold_sobi(Y_bss,WC,Wica,P_ica,0,0,10000,10000,10000,10000,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox9_Multichannel,'Value')==1&&get(handles.checkbox6_Multichannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit72_Multichannel,'string'));
                                acthreshold2=str2num(get(handles.edit84_Multichannel,'string'));
                                enthreshold1=str2num(get(handles.edit74_Multichannel,'string'));
                                enthreshold2=str2num(get(handles.edit85_Multichannel,'string'));
                                [Y_sobi,W] = ICA_threshold_sobi(Y_bss,WC,Wica,P_ica,acthreshold1,acthreshold2,enthreshold1,enthreshold2,10000,10000,10000,10000);
                            end
                            if  get(handles.checkbox9_Multichannel,'Value')==1&&get(handles.checkbox8_Multichannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit72_Multichannel,'string'));
                                acthreshold2=str2num(get(handles.edit84_Multichannel,'string'));
                                vathreshold1=str2num(get(handles.edit78_Multichannel,'string'));
                                vathreshold2=str2num(get(handles.edit87_Multichannel,'string'));
                                [Y_sobi,W] = ICA_threshold_sobi(Y_bss,WC,Wica,P_ica,acthreshold1,acthreshold2,10000,10000,10000,10000,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox9_Multichannel,'Value')==1&&get(handles.checkbox7_Multichannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit72_Multichannel,'string'));
                                acthreshold2=str2num(get(handles.edit84_Multichannel,'string'));
                                kuthreshold1=str2num(get(handles.edit220_Multichannel,'string'));
                                kuthreshold2=str2num(get(handles.edit86_Multichannel,'string'));
                                [Y_sobi,W] = ICA_threshold_sobi(Y_bss,WC,Wica,P_ica,acthreshold1,acthreshold2,10000,10000,kuthreshold1,kuthreshold2,10000,10000);
                            end
                            if  get(handles.checkbox6_Multichannel,'Value')==1&&get(handles.checkbox7_Multichannel,'Value')==1
                                enthreshold1=str2num(get(handles.edit74_Multichannel,'string'));
                                enthreshold2=str2num(get(handles.edit85_Multichannel,'string'));
                                kuthreshold1=str2num(get(handles.edit220_Multichannel,'string'));
                                kuthreshold2=str2num(get(handles.edit86_Multichannel,'string'));
                                [Y_sobi,W] = ICA_threshold_sobi(Y_bss,Wica,P_ica,0,0,enthreshold1,enthreshold2,kuthreshold1,kuthreshold2,10000,10000);
                            end
                            if  get(handles.checkbox6_Multichannel,'Value')==1&&get(handles.checkbox8_Multichannel,'Value')==1
                                enthreshold1=str2num(get(handles.edit74_Multichannel,'string'));
                                enthreshold2=str2num(get(handles.edit85_Multichannel,'string'));
                                vathreshold1=str2num(get(handles.edit78_Multichannel,'string'));
                                vathreshold2=str2num(get(handles.edit87_Multichannel,'string'));
                                [Y_sobi,W] = ICA_threshold_sobi(Y_bss,WC,Wica,P_ica,0,0,enthreshold1,enthreshold2,10000,10000,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox7_Multichannel,'Value')==1&&get(handles.checkbox8_Multichannel,'Value')==1
                                kuthreshold1=str2num(get(handles.edit220_Multichannel,'string'));
                                kuthreshold2=str2num(get(handles.edit86_Multichannel,'string'));
                                vathreshold1=str2num(get(handles.edit78_Multichannel,'string'));
                                vathreshold2=str2num(get(handles.edit87_Multichannel,'string'));
                                [Y_sobi,W] = ICA_threshold_sobi(Y_bss,WC,Wica,P_ica,0,0,10000,10000,kuthreshold1,kuthreshold2,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox9_Multichannel,'Value')==1&&get(handles.checkbox6_Multichannel,'Value')==1&&get(handles.checkbox7_Multichannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit72_Multichannel,'string'));
                                acthreshold2=str2num(get(handles.edit84_Multichannel,'string'));
                                enthreshold1=str2num(get(handles.edit74_Multichannel,'string'));
                                enthreshold2=str2num(get(handles.edit85_Multichannel,'string'));
                                kuthreshold1=str2num(get(handles.edit220_Multichannel,'string'));
                                kuthreshold2=str2num(get(handles.edit86_Multichannel,'string'));
                                [Y_sobi,W] = ICA_threshold_sobi(Y_bss,WC,Wica,P_ica,acthreshold1,acthreshold2,enthreshold1,enthreshold2,kuthreshold1,kuthreshold2,10000,10000);
                            end
                            if  get(handles.checkbox9_Multichannel,'Value')==1&&get(handles.checkbox6_Multichannel,'Value')==1&&get(handles.checkbox8_Multichannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit72_Multichannel,'string'));
                                acthreshold2=str2num(get(handles.edit84_Multichannel,'string'));
                                enthreshold1=str2num(get(handles.edit74_Multichannel,'string'));
                                enthreshold2=str2num(get(handles.edit85_Multichannel,'string'));
                                vathreshold1=str2num(get(handles.edit78_Multichannel,'string'));
                                vathreshold2=str2num(get(handles.edit87_Multichannel,'string'));
                                [Y_sobi,W] = ICA_threshold_sobi(Y_bss,WC,Wica,P_ica,acthreshold1,acthreshold2,enthreshold1,enthreshold2,10000,10000,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox9_Multichannel,'Value')==1&&get(handles.checkbox7_Multichannel,'Value')==1&&get(handles.checkbox8_Multichannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit72_Multichannel,'string'));
                                acthreshold2=str2num(get(handles.edit84_Multichannel,'string'));
                                kuthreshold1=str2num(get(handles.edit220_Multichannel,'string'));
                                kuthreshold2=str2num(get(handles.edit86_Multichannel,'string'));
                                vathreshold1=str2num(get(handles.edit78_Multichannel,'string'));
                                vathreshold2=str2num(get(handles.edit87_Multichannel,'string'));
                                [Y_sobi,W] = ICA_threshold_sobi(Y_bss,WC,Wica,P_ica,acthreshold1,acthreshold2,10000,10000, kuthreshold1, kuthreshold2,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox6_Multichannel,'Value')==1&&get(handles.checkbox7_Multichannel,'Value')==1&&get(handles.checkbox8_Multichannel,'Value')==1
                                enthreshold1=str2num(get(handles.edit74_Multichannel,'string'));
                                enthreshold2=str2num(get(handles.edit85_Multichannel,'string'));
                                kuthreshold1=str2num(get(handles.edit220_Multichannel,'string'));
                                kuthreshold2=str2num(get(handles.edit86_Multichannel,'string'));
                                vathreshold1=str2num(get(handles.edit78_Multichannel,'string'));
                                vathreshold2=str2num(get(handles.edit87_Multichannel,'string'));
                                [Y_sobi,W] = ICA_threshold_sobi(Y_bss,WC,Wica,P_ica,0,0,enthreshold1,enthreshold2, kuthreshold1, kuthreshold2,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox9_Multichannel,'Value')==1&&get(handles.checkbox6_Multichannel,'Value')==1&&get(handles.checkbox7_Multichannel,'Value')==1&&get(handles.checkbox8_Multichannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit72_Multichannel,'string'));
                                acthreshold2=str2num(get(handles.edit84_Multichannel,'string'));
                                enthreshold1=str2num(get(handles.edit74_Multichannel,'string'));
                                enthreshold2=str2num(get(handles.edit85_Multichannel,'string'));
                                kuthreshold1=str2num(get(handles.edit220_Multichannel,'string'));
                                kuthreshold2=str2num(get(handles.edit86_Multichannel,'string'));
                                vathreshold1=str2num(get(handles.edit78_Multichannel,'string'));
                                vathreshold2=str2num(get(handles.edit87_Multichannel,'string'));
                                [Y_sobi,W] = ICA_threshold_sobi(Y_bss,WC,Wica,P_ica,acthreshold1,acthreshold2,enthreshold1,enthreshold2, kuthreshold1, kuthreshold2,vathreshold1,vathreshold2);
                            end
                            Youtput=Y_sobi;
                        case 3               %jade
                            [Y_bss,WC,P_ica,B]= myjade( existingdata,fs);
                            if get(handles.checkbox9_Multichannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit72_Multichannel,'string'));
                                acthreshold2=str2num(get(handles.edit84_Multichannel,'string'));
                                [Y_jade,W] = ICA_threshold_jade(Y_bss,WC,B,P_ica,acthreshold1,acthreshold2,10000,10000,10000,10000,10000,10000) ;
                            end
                            if get(handles.checkbox6_Multichannel,'Value')==1 ;
                                enthreshold1=str2num(get(handles.edit74_Multichannel,'string'));
                                enthreshold2=str2num(get(handles.edit85_Multichannel,'string'));
                                [Y_jade,W] = ICA_threshold_jade(Y_bss,WC,B,P_ica,0,0,enthreshold1,enthreshold2,10000,10000,10000,10000);
                            end
                            if get(handles.checkbox7_Multichannel,'Value')==1
                                kuthreshold1=str2num(get(handles.edit220_Multichannel,'string'));
                                kuthreshold2=str2num(get(handles.edit86_Multichannel,'string'));
                                [Y_jade,W] = ICA_threshold_jade(Y_bss,WC,B,P_ica,0,0,10000,10000,kuthreshold1,kuthreshold2,10000,10000);
                            end
                            if get(handles.checkbox8_Multichannel,'Value')==1
                                vathreshold1=str2num(get(handles.edit78_Multichannel,'string'));
                                vathreshold2=str2num(get(handles.edit87_Multichannel,'string'));
                                [Y_jade,W] = ICA_threshold_jade(Y_bss,WC,B,P_ica,0,0,10000,10000,10000,10000,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox9_Multichannel,'Value')==1&&get(handles.checkbox6_Multichannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit72_Multichannel,'string'));
                                acthreshold2=str2num(get(handles.edit84_Multichannel,'string'));
                                enthreshold1=str2num(get(handles.edit74_Multichannel,'string'));
                                enthreshold2=str2num(get(handles.edit85_Multichannel,'string'));
                                [Y_jade,W] = ICA_threshold_jade(Y_bss,B,P_ica,acthreshold1,acthreshold2,enthreshold1,enthreshold2,10000,10000,10000,10000);
                            end
                            if  get(handles.checkbox9_Multichannel,'Value')==1&&get(handles.checkbox8_Multichannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit72_Multichannel,'string'));
                                acthreshold2=str2num(get(handles.edit84_Multichannel,'string'));
                                vathreshold1=str2num(get(handles.edit78_Multichannel,'string'));
                                vathreshold2=str2num(get(handles.edit87_Multichannel,'string'));
                                [Y_jade,W] = ICA_threshold_jade(Y_bss,WC,B,P_ica,acthreshold1,acthreshold2,10000,10000,10000,10000,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox9_Multichannel,'Value')==1&&get(handles.checkbox7_Multichannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit72_Multichannel,'string'));
                                acthreshold2=str2num(get(handles.edit84_Multichannel,'string'));
                                kuthreshold1=str2num(get(handles.edit220_Multichannel,'string'));
                                kuthreshold2=str2num(get(handles.edit86_Multichannel,'string'));
                                [Y_jade,W] = ICA_threshold_jade(Y_bss,WC,B,P_ica,acthreshold1,acthreshold2,10000,10000,kuthreshold1,kuthreshold2,10000,10000);
                            end
                            if  get(handles.checkbox6_Multichannel,'Value')==1&&get(handles.checkbox7_Multichannel,'Value')==1
                                enthreshold1=str2num(get(handles.edit74_Multichannel,'string'));
                                enthreshold2=str2num(get(handles.edit85_Multichannel,'string'));
                                kuthreshold1=str2num(get(handles.edit220_Multichannel,'string'));
                                kuthreshold2=str2num(get(handles.edit86_Multichannel,'string'));
                                [Y_jade,W] = ICA_threshold_jade(Y_bss,WC,B,P_ica,0,0,enthreshold1,enthreshold2,kuthreshold1,kuthreshold2,10000,10000);
                            end
                            if  get(handles.checkbox6_Multichannel,'Value')==1&&get(handles.checkbox8_Multichannel,'Value')==1
                                enthreshold1=str2num(get(handles.edit74_Multichannel,'string'));
                                enthreshold2=str2num(get(handles.edit85_Multichannel,'string'));
                                vathreshold1=str2num(get(handles.edit78_Multichannel,'string'));
                                vathreshold2=str2num(get(handles.edit87_Multichannel,'string'));
                                [Y_jade,W] = ICA_threshold_jade(Y_bss,WC,B,P_ica,0,0,enthreshold1,enthreshold2,10000,10000,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox7_Multichannel,'Value')==1&&get(handles.checkbox8_Multichannel,'Value')==1
                                kuthreshold1=str2num(get(handles.edit220_Multichannel,'string'));
                                kuthreshold2=str2num(get(handles.edit86_Multichannel,'string'));
                                vathreshold1=str2num(get(handles.edit78_Multichannel,'string'));
                                vathreshold2=str2num(get(handles.edit87_Multichannel,'string'));
                                [Y_jade,W] = ICA_threshold_jade(Y_bss,WC,B,P_ica,0,0,10000,10000,kuthreshold1,kuthreshold2,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox9_Multichannel,'Value')==1&&get(handles.checkbox6_Multichannel,'Value')==1&&get(handles.checkbox7_Multichannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit72_Multichannel,'string'));
                                acthreshold2=str2num(get(handles.edit84_Multichannel,'string'));
                                enthreshold1=str2num(get(handles.edit74_Multichannel,'string'));
                                enthreshold2=str2num(get(handles.edit85_Multichannel,'string'));
                                kuthreshold1=str2num(get(handles.edit220_Multichannel,'string'));
                                kuthreshold2=str2num(get(handles.edit86_Multichannel,'string'));
                                [Y_jade,W] = ICA_threshold_jade(Y_bss,WC,B,P_ica,acthreshold1,acthreshold2,enthreshold1,enthreshold2,kuthreshold1,kuthreshold2,10000,10000);
                            end
                            if  get(handles.checkbox9_Multichannel,'Value')==1&&get(handles.checkbox6_Multichannel,'Value')==1&&get(handles.checkbox8_Multichannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit72_Multichannel,'string'));
                                acthreshold2=str2num(get(handles.edit84_Multichannel,'string'));
                                enthreshold1=str2num(get(handles.edit74_Multichannel,'string'));
                                enthreshold2=str2num(get(handles.edit85_Multichannel,'string'));
                                vathreshold1=str2num(get(handles.edit78_Multichannel,'string'));
                                vathreshold2=str2num(get(handles.edit87_Multichannel,'string'));
                                [Y_jade,W] = ICA_threshold_jade(Y_bss,WC,B,P_ica,acthreshold1,acthreshold2,enthreshold1,enthreshold2,10000,10000,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox9_Multichannel,'Value')==1&&get(handles.checkbox7_Multichannel,'Value')==1&&get(handles.checkbox8_Multichannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit72_Multichannel,'string'));
                                acthreshold2=str2num(get(handles.edit84_Multichannel,'string'));
                                kuthreshold1=str2num(get(handles.edit220_Multichannel,'string'));
                                kuthreshold2=str2num(get(handles.edit86_Multichannel,'string'));
                                vathreshold1=str2num(get(handles.edit78_Multichannel,'string'));
                                vathreshold2=str2num(get(handles.edit87_Multichannel,'string'));
                                [Y_jade,W] = ICA_threshold_jade(Y_bss,WC,B,P_ica,acthreshold1,acthreshold2,10000,10000, kuthreshold1, kuthreshold2,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox6_Multichannel,'Value')==1&&get(handles.checkbox7_Multichannel,'Value')==1&&get(handles.checkbox8_Multichannel,'Value')==1
                                enthreshold1=str2num(get(handles.edit74_Multichannel,'string'));
                                enthreshold2=str2num(get(handles.edit85_Multichannel,'string'));
                                kuthreshold1=str2num(get(handles.edit220_Multichannel,'string'));
                                kuthreshold2=str2num(get(handles.edit86_Multichannel,'string'));
                                vathreshold1=str2num(get(handles.edit78_Multichannel,'string'));
                                vathreshold2=str2num(get(handles.edit87_Multichannel,'string'));
                                [Y_jade,W] = ICA_threshold_jade(Y_bss,WC,B,P_ica,0,0,enthreshold1,enthreshold2, kuthreshold1, kuthreshold2,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox9_Multichannel,'Value')==1&&get(handles.checkbox6_Multichannel,'Value')==1&&get(handles.checkbox7_Multichannel,'Value')==1&&get(handles.checkbox8_Multichannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit72_Multichannel,'string'));
                                acthreshold2=str2num(get(handles.edit84_Multichannel,'string'));
                                enthreshold1=str2num(get(handles.edit74_Multichannel,'string'));
                                enthreshold2=str2num(get(handles.edit85_Multichannel,'string'));
                                kuthreshold1=str2num(get(handles.edit220_Multichannel,'string'));
                                kuthreshold2=str2num(get(handles.edit86_Multichannel,'string'));
                                vathreshold1=str2num(get(handles.edit78_Multichannel,'string'));
                                vathreshold2=str2num(get(handles.edit87_Multichannel,'string'));
                                [Y_jade,W] = ICA_threshold_jade(Y_bss,WC,B,P_ica,acthreshold1,acthreshold2,enthreshold1,enthreshold2, kuthreshold1, kuthreshold2,vathreshold1,vathreshold2);
                            end
                            Youtput=Y_jade;
                              case 4               %infomax
                        [Y_bss,Wica,WC,P_ica] = myinfomax(existingdata,fs);
                            if get(handles.checkbox9_Multichannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit72_Multichannel,'string'));
                                acthreshold2=str2num(get(handles.edit84_Multichannel,'string'));
                                [Y_infomax,W] = ICA_threshold_infomax(Y_bss,WC,Wica,P_ica,acthreshold1,acthreshold2,10000,10000,10000,10000,10000,10000);
                            end
                            if get(handles.checkbox6_Multichannel,'Value')==1 ;
                                enthreshold1=str2num(get(handles.edit74_Multichannel,'string'));
                                enthreshold2=str2num(get(handles.edit85_Multichannel,'string'));
                                [Y_infomax,W] = ICA_threshold_infomax(Y_bss,WC,Wica,P_ica,0,0,enthreshold1,enthreshold2,10000,10000,10000,10000);
                            end
                            if get(handles.checkbox7_Multichannel,'Value')==1
                                kuthreshold1=str2num(get(handles.edit220_Multichannel,'string'));
                                kuthreshold2=str2num(get(handles.edit86_Multichannel,'string'));
                                [Y_infomax,W] = ICA_threshold_infomax(Y_bss,WC,Wica,P_ica,0,0,10000,10000,kuthreshold1,kuthreshold2,10000,10000);
                            end
                            if get(handles.checkbox8_Multichannel,'Value')==1
                                vathreshold1=str2num(get(handles.edit78_Multichannel,'string'));
                                vathreshold2=str2num(get(handles.edit87_Multichannel,'string'));
                                [Y_infomax,W] = ICA_threshold_infomax(Y_bss,WC,Wica,P_ica,0,0,10000,10000,10000,10000,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox9_Multichannel,'Value')==1&&get(handles.checkbox6_Multichannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit72_Multichannel,'string'));
                                acthreshold2=str2num(get(handles.edit84_Multichannel,'string'));
                                enthreshold1=str2num(get(handles.edit74_Multichannel,'string'));
                                enthreshold2=str2num(get(handles.edit85_Multichannel,'string'));
                                [Y_infomax,W] = ICA_threshold_infomax(Y_bss,WC,Wica,P_ica,acthreshold1,acthreshold2,enthreshold1,enthreshold2,10000,10000,10000,10000);
                            end
                            if  get(handles.checkbox9_Multichannel,'Value')==1&&get(handles.checkbox8_Multichannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit72_Multichannel,'string'));
                                acthreshold2=str2num(get(handles.edit84_Multichannel,'string'));
                                vathreshold1=str2num(get(handles.edit78_Multichannel,'string'));
                                vathreshold2=str2num(get(handles.edit87_Multichannel,'string'));
                                [Y_infomax,W] = ICA_threshold_infomax(Y_bss,Wica,P_ica,acthreshold1,acthreshold2,10000,10000,10000,10000,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox9_Multichannel,'Value')==1&&get(handles.checkbox7_Multichannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit72_Multichannel,'string'));
                                acthreshold2=str2num(get(handles.edit84_Multichannel,'string'));
                                kuthreshold1=str2num(get(handles.edit220_Multichannel,'string'));
                                kuthreshold2=str2num(get(handles.edit86_Multichannel,'string'));
                                [Y_infomax,W] = ICA_threshold_infomax(Y_bss,Wica,P_ica,acthreshold1,acthreshold2,10000,10000,kuthreshold1,kuthreshold2,10000,10000);
                            end
                            if  get(handles.checkbox6_Multichannel,'Value')==1&&get(handles.checkbox7_Multichannel,'Value')==1
                                enthreshold1=str2num(get(handles.edit74_Multichannel,'string'));
                                enthreshold2=str2num(get(handles.edit85_Multichannel,'string'));
                                kuthreshold1=str2num(get(handles.edit220_Multichannel,'string'));
                                kuthreshold2=str2num(get(handles.edit86_Multichannel,'string'));
                                [Y_infomax,W] = ICA_threshold_infomax(Y_bss,WC,Wica,P_ica,0,0,enthreshold1,enthreshold2,kuthreshold1,kuthreshold2,10000,10000);
                            end
                            if  get(handles.checkbox6_Multichannel,'Value')==1&&get(handles.checkbox8_Multichannel,'Value')==1
                                enthreshold1=str2num(get(handles.edit74_Multichannel,'string'));
                                enthreshold2=str2num(get(handles.edit85_Multichannel,'string'));
                                vathreshold1=str2num(get(handles.edit78_Multichannel,'string'));
                                vathreshold2=str2num(get(handles.edit87_Multichannel,'string'));
                                [Y_infomax,W] = ICA_threshold_infomax(Y_bss,WC,Wica,P_ica,0,0,enthreshold1,enthreshold2,10000,10000,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox7_Multichannel,'Value')==1&&get(handles.checkbox8_Multichannel,'Value')==1
                                kuthreshold1=str2num(get(handles.edit220_Multichannel,'string'));
                                kuthreshold2=str2num(get(handles.edit86_Multichannel,'string'));
                                vathreshold1=str2num(get(handles.edit78_Multichannel,'string'));
                                vathreshold2=str2num(get(handles.edit87_Multichannel,'string'));
                                [Y_infomax,W] = ICA_threshold_infomax(Y_bss,WC,Wica,P_ica,0,0,10000,10000,kuthreshold1,kuthreshold2,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox9_Multichannel,'Value')==1&&get(handles.checkbox6_Multichannel,'Value')==1&&get(handles.checkbox7_Multichannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit72_Multichannel,'string'));
                                acthreshold2=str2num(get(handles.edit84_Multichannel,'string'));
                                enthreshold1=str2num(get(handles.edit74_Multichannel,'string'));
                                enthreshold2=str2num(get(handles.edit85_Multichannel,'string'));
                                kuthreshold1=str2num(get(handles.edit220_Multichannel,'string'));
                                kuthreshold2=str2num(get(handles.edit86_Multichannel,'string'));
                                [Y_infomax,W] = ICA_threshold_infomax(Y_bss,WC,Wica,P_ica,acthreshold1,acthreshold2,enthreshold1,enthreshold2,kuthreshold1,kuthreshold2,10000,10000);
                            end
                            if  get(handles.checkbox9_Multichannel,'Value')==1&&get(handles.checkbox6_Multichannel,'Value')==1&&get(handles.checkbox8_Multichannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit72_Multichannel,'string'));
                                acthreshold2=str2num(get(handles.edit84_Multichannel,'string'));
                                enthreshold1=str2num(get(handles.edit74_Multichannel,'string'));
                                enthreshold2=str2num(get(handles.edit85_Multichannel,'string'));
                                vathreshold1=str2num(get(handles.edit78_Multichannel,'string'));
                                vathreshold2=str2num(get(handles.edit87_Multichannel,'string'));
                                [Y_infomax,W] = ICA_threshold_infomax(Y_bss,WC,Wica,P_ica,acthreshold1,acthreshold2,enthreshold1,enthreshold2,10000,10000,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox9_Multichannel,'Value')==1&&get(handles.checkbox7_Multichannel,'Value')==1&&get(handles.checkbox8_Multichannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit72_Multichannel,'string'));
                                acthreshold2=str2num(get(handles.edit84_Multichannel,'string'));
                                kuthreshold1=str2num(get(handles.edit220_Multichannel,'string'));
                                kuthreshold2=str2num(get(handles.edit86_Multichannel,'string'));
                                vathreshold1=str2num(get(handles.edit78_Multichannel,'string'));
                                vathreshold2=str2num(get(handles.edit87_Multichannel,'string'));
                                [Y_infomax,W] = ICA_threshold_infomax(Y_bss,WC,Wica,P_ica,acthreshold1,acthreshold2,10000,10000, kuthreshold1, kuthreshold2,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox6_Multichannel,'Value')==1&&get(handles.checkbox7_Multichannel,'Value')==1&&get(handles.checkbox8_Multichannel,'Value')==1
                                enthreshold1=str2num(get(handles.edit74_Multichannel,'string'));
                                enthreshold2=str2num(get(handles.edit85_Multichannel,'string'));
                                kuthreshold1=str2num(get(handles.edit220_Multichannel,'string'));
                                kuthreshold2=str2num(get(handles.edit86_Multichannel,'string'));
                                vathreshold1=str2num(get(handles.edit78_Multichannel,'string'));
                                vathreshold2=str2num(get(handles.edit87_Multichannel,'string'));
                                [Y_infomax,W] = ICA_threshold_infomax(Y_bss,WC,Wica,P_ica,0,0,enthreshold1,enthreshold2, kuthreshold1, kuthreshold2,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox9_Multichannel,'Value')==1&&get(handles.checkbox6_Multichannel,'Value')==1&&get(handles.checkbox7_Multichannel,'Value')==1&&get(handles.checkbox8_Multichannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit72_Multichannel,'string'));
                                acthreshold2=str2num(get(handles.edit84_Multichannel,'string'));
                                enthreshold1=str2num(get(handles.edit74_Multichannel,'string'));
                                enthreshold2=str2num(get(handles.edit85_Multichannel,'string'));
                                kuthreshold1=str2num(get(handles.edit220_Multichannel,'string'));
                                kuthreshold2=str2num(get(handles.edit86_Multichannel,'string'));
                                vathreshold1=str2num(get(handles.edit78_Multichannel,'string'));
                                vathreshold2=str2num(get(handles.edit87_Multichannel,'string'));
                                [Y_infomax,W] = ICA_threshold_infomax(Y_bss,WC,Wica,P_ica,acthreshold1,acthreshold2,enthreshold1,enthreshold2, kuthreshold1, kuthreshold2,vathreshold1,vathreshold2);
                            end
                            Youtput=Y_infomax;
                    end
                case 2      %CCA
                    [Y_bss,B,WC]= myCCA( existingdata,fs,tlag);
                    if get(handles.checkbox9_Multichannel,'Value')==1
                        acthreshold1=str2num(get(handles.edit72_Multichannel,'string'));
                        acthreshold2=str2num(get(handles.edit84_Multichannel,'string'));
                        [Y_cca,W] = CCA_threshold(Y_bss,B,WC,acthreshold1,acthreshold2,10000,10000,10000,10000,10000,10000);
                    end
                            if get(handles.checkbox6_Multichannel,'Value')==1 
                                enthreshold1=str2num(get(handles.edit74_Multichannel,'string'));
                                enthreshold2=str2num(get(handles.edit85_Multichannel,'string'));
                                [Y_cca,W] = CCA_threshold(Y_bss,B,WC,0,0,enthreshold1,enthreshold2,10000,10000,10000,10000);
                            end
                            if get(handles.checkbox7_Multichannel,'Value')==1
                                kuthreshold1=str2num(get(handles.edit220_Multichannel,'string'));
                                kuthreshold2=str2num(get(handles.edit86_Multichannel,'string'));
                                [Y_cca,W] = CCA_threshold(Y_bss,B,WC,0,0,10000,10000,kuthreshold1,kuthreshold2,10000,10000);
                            end
                            if get(handles.checkbox8_Multichannel,'Value')==1
                                vathreshold1=str2num(get(handles.edit78_Multichannel,'string'));
                                vathreshold2=str2num(get(handles.edit87_Multichannel,'string'));
                                [Y_cca,W] = CCA_threshold(Y_bss,B,WC,0,0,10000,10000,10000,10000,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox9_Multichannel,'Value')==1&&get(handles.checkbox6_Multichannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit72_Multichannel,'string'));
                                acthreshold2=str2num(get(handles.edit84_Multichannel,'string'));
                                enthreshold1=str2num(get(handles.edit74_Multichannel,'string'));
                                enthreshold2=str2num(get(handles.edit85_Multichannel,'string'));
                                [Y_cca,W] = CCA_threshold(Y_bss,B,WC,acthreshold1,acthreshold2,enthreshold1,enthreshold2,10000,10000,10000,10000);
                            end
                            if  get(handles.checkbox9_Multichannel,'Value')==1&&get(handles.checkbox8_Multichannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit72_Multichannel,'string'));
                                acthreshold2=str2num(get(handles.edit84_Multichannel,'string'));
                                vathreshold1=str2num(get(handles.edit78_Multichannel,'string'));
                                vathreshold2=str2num(get(handles.edit87_Multichannel,'string'));
                                [Y_cca,W] = CCA_threshold(Y_bss,B,WC,acthreshold1,acthreshold2,10000,10000,10000,10000,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox9_Multichannel,'Value')==1&&get(handles.checkbox7_Multichannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit72_Multichannel,'string'));
                                acthreshold2=str2num(get(handles.edit84_Multichannel,'string'));
                                kuthreshold1=str2num(get(handles.edit220_Multichannel,'string'));
                                kuthreshold2=str2num(get(handles.edit86_Multichannel,'string'));
                                [Y_cca,W] = CCA_threshold(Y_bss,B,WC,acthreshold1,acthreshold2,10000,10000,kuthreshold1,kuthreshold2,10000,10000);
                            end
                            if  get(handles.checkbox6_Multichannel,'Value')==1&&get(handles.checkbox7_Multichannel,'Value')==1
                                enthreshold1=str2num(get(handles.edit74_Multichannel,'string'));
                                enthreshold2=str2num(get(handles.edit85_Multichannel,'string'));
                                kuthreshold1=str2num(get(handles.edit220_Multichannel,'string'));
                                kuthreshold2=str2num(get(handles.edit86_Multichannel,'string'));
                                [Y_cca,W] = CCA_threshold(Y_bss,B,WC,0,0,enthreshold1,enthreshold2,kuthreshold1,kuthreshold2,10000,10000);
                            end
                            if  get(handles.checkbox6_Multichannel,'Value')==1&&get(handles.checkbox8_Multichannel,'Value')==1
                                enthreshold1=str2num(get(handles.edit74_Multichannel,'string'));
                                enthreshold2=str2num(get(handles.edit85_Multichannel,'string'));
                                vathreshold1=str2num(get(handles.edit78_Multichannel,'string'));
                                vathreshold2=str2num(get(handles.edit87_Multichannel,'string'));
                                [Y_cca,W] = CCA_threshold(Y_bss,B,WC,0,0,enthreshold1,enthreshold2,10000,10000,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox7_Multichannel,'Value')==1&&get(handles.checkbox8_Multichannel,'Value')==1
                                kuthreshold1=str2num(get(handles.edit220_Multichannel,'string'));
                                kuthreshold2=str2num(get(handles.edit86_Multichannel,'string'));
                                vathreshold1=str2num(get(handles.edit78_Multichannel,'string'));
                                vathreshold2=str2num(get(handles.edit87_Multichannel,'string'));
                                [Y_cca,W] = CCA_threshold(Y_bss,B,WC,0,0,10000,10000,kuthreshold1,kuthreshold2,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox9_Multichannel,'Value')==1&&get(handles.checkbox6_Multichannel,'Value')==1&&get(handles.checkbox7_Multichannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit72_Multichannel,'string'));
                                acthreshold2=str2num(get(handles.edit84_Multichannel,'string'));
                                enthreshold1=str2num(get(handles.edit74_Multichannel,'string'));
                                enthreshold2=str2num(get(handles.edit85_Multichannel,'string'));
                                kuthreshold1=str2num(get(handles.edit220_Multichannel,'string'));
                                kuthreshold2=str2num(get(handles.edit86_Multichannel,'string'));
                                [Y_cca,W] = CCA_threshold(Y_bss,B,WC,acthreshold1,acthreshold2,enthreshold1,enthreshold2,kuthreshold1,kuthreshold2,10000,10000);
                            end
                            if  get(handles.checkbox9_Multichannel,'Value')==1&&get(handles.checkbox6_Multichannel,'Value')==1&&get(handles.checkbox8_Multichannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit72_Multichannel,'string'));
                                acthreshold2=str2num(get(handles.edit84_Multichannel,'string'));
                                enthreshold1=str2num(get(handles.edit74_Multichannel,'string'));
                                enthreshold2=str2num(get(handles.edit85_Multichannel,'string'));
                                vathreshold1=str2num(get(handles.edit78_Multichannel,'string'));
                                vathreshold2=str2num(get(handles.edit87_Multichannel,'string'));
                                [Y_cca,W] = CCA_threshold(Y_bss,B,WC,acthreshold1,acthreshold2,enthreshold1,enthreshold2,10000,10000,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox9_Multichannel,'Value')==1&&get(handles.checkbox7_Multichannel,'Value')==1&&get(handles.checkbox8_Multichannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit72_Multichannel,'string'));
                                acthreshold2=str2num(get(handles.edit84_Multichannel,'string'));
                                kuthreshold1=str2num(get(handles.edit220_Multichannel,'string'));
                                kuthreshold2=str2num(get(handles.edit86_Multichannel,'string'));
                                vathreshold1=str2num(get(handles.edit78_Multichannel,'string'));
                                vathreshold2=str2num(get(handles.edit87_Multichannel,'string'));
                                [Y_cca,W] = CCA_threshold(Y_bss,B,WC,acthreshold1,acthreshold2,10000,10000, kuthreshold1, kuthreshold2,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox6_Multichannel,'Value')==1&&get(handles.checkbox7_Multichannel,'Value')==1&&get(handles.checkbox8_Multichannel,'Value')==1
                                enthreshold1=str2num(get(handles.edit74_Multichannel,'string'));
                                enthreshold2=str2num(get(handles.edit85_Multichannel,'string'));
                                kuthreshold1=str2num(get(handles.edit220_Multichannel,'string'));
                                kuthreshold2=str2num(get(handles.edit86_Multichannel,'string'));
                                vathreshold1=str2num(get(handles.edit78_Multichannel,'string'));
                                vathreshold2=str2num(get(handles.edit87_Multichannel,'string'));
                                [Y_cca,W] = CCA_threshold(Y_bss,B,WC,0,0,enthreshold1,enthreshold2, kuthreshold1, kuthreshold2,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox9_Multichannel,'Value')==1&&get(handles.checkbox6_Multichannel,'Value')==1&&get(handles.checkbox7_Multichannel,'Value')==1&&get(handles.checkbox8_Multichannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit72_Multichannel,'string'));
                                acthreshold2=str2num(get(handles.edit84_Multichannel,'string'));
                                enthreshold1=str2num(get(handles.edit74_Multichannel,'string'));
                                enthreshold2=str2num(get(handles.edit85_Multichannel,'string'));
                                kuthreshold1=str2num(get(handles.edit220_Multichannel,'string'));
                                kuthreshold2=str2num(get(handles.edit86_Multichannel,'string'));
                                vathreshold1=str2num(get(handles.edit78_Multichannel,'string'));
                                vathreshold2=str2num(get(handles.edit87_Multichannel,'string'));
                                [Y_cca,W] = CCA_threshold(Y_bss,B,WC,acthreshold1,acthreshold2,enthreshold1,enthreshold2, kuthreshold1, kuthreshold2,vathreshold1,vathreshold2);
                            end
                    Youtput=Y_cca;
                case 3      %IVA
                    [Y_bss,F,WC,P_iva]= myIVA( existingdata,fs,tlag);
                    if get(handles.checkbox9_Multichannel,'Value')==1
                        acthreshold1=str2num(get(handles.edit72_Multichannel,'string'));
                        acthreshold2=str2num(get(handles.edit84_Multichannel,'string'));
                        [Y_iva,W] = IVA_threshold(Y_bss,F,WC,P_iva,acthreshold1,acthreshold2,10000,10000,10000,10000,10000,10000);
                    end
                            if get(handles.checkbox6_Multichannel,'Value')==1 ;
                                enthreshold1=str2num(get(handles.edit74_Multichannel,'string'));
                                enthreshold2=str2num(get(handles.edit85_Multichannel,'string'));
                                [Y_iva,W] = IVA_threshold(Y_bss,F,WC,P_iva,0,0,enthreshold1,enthreshold2,10000,10000,10000,10000);
                            end
                            if get(handles.checkbox7_Multichannel,'Value')==1
                                kuthreshold1=str2num(get(handles.edit220_Multichannel,'string'));
                                kuthreshold2=str2num(get(handles.edit86_Multichannel,'string'));
                                [Y_iva,W] = IVA_threshold(Y_bss,F,WC,P_iva,0,0,10000,10000,kuthreshold1,kuthreshold2,10000,10000);
                            end
                            if get(handles.checkbox8_Multichannel,'Value')==1
                                vathreshold1=str2num(get(handles.edit78_Multichannel,'string'));
                                vathreshold2=str2num(get(handles.edit87_Multichannel,'string'));
                                [Y_iva,W] = IVA_threshold(Y_bss,F,WC,P_iva,0,0,10000,10000,10000,10000,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox9_Multichannel,'Value')==1&&get(handles.checkbox6_Multichannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit72_Multichannel,'string'));
                                acthreshold2=str2num(get(handles.edit84_Multichannel,'string'));
                                enthreshold1=str2num(get(handles.edit74_Multichannel,'string'));
                                enthreshold2=str2num(get(handles.edit85_Multichannel,'string'));
                                [Y_iva,W] = IVA_threshold(Y_bss,F,WC,P_iva,acthreshold1,acthreshold2,enthreshold1,enthreshold2,10000,10000,10000,10000);
                            end
                            if  get(handles.checkbox9_Multichannel,'Value')==1&&get(handles.checkbox8_Multichannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit72_Multichannel,'string'));
                                acthreshold2=str2num(get(handles.edit84_Multichannel,'string'));
                                vathreshold1=str2num(get(handles.edit78_Multichannel,'string'));
                                vathreshold2=str2num(get(handles.edit87_Multichannel,'string'));
                                [Y_iva,W] = IVA_threshold(Y_bss,F,WC,P_iva,acthreshold1,acthreshold2,10000,10000,10000,10000,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox9_Multichannel,'Value')==1&&get(handles.checkbox7_Multichannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit72_Multichannel,'string'));
                                acthreshold2=str2num(get(handles.edit84_Multichannel,'string'));
                                kuthreshold1=str2num(get(handles.edit220_Multichannel,'string'));
                                kuthreshold2=str2num(get(handles.edit86_Multichannel,'string'));
                                [Y_iva,W] = IVA_threshold(Y_bss,F,WC,P_iva,acthreshold1,acthreshold2,10000,10000,kuthreshold1,kuthreshold2,10000,10000);
                            end
                            if  get(handles.checkbox6_Multichannel,'Value')==1&&get(handles.checkbox7_Multichannel,'Value')==1
                                enthreshold1=str2num(get(handles.edit74_Multichannel,'string'));
                                enthreshold2=str2num(get(handles.edit85_Multichannel,'string'));
                                kuthreshold1=str2num(get(handles.edit220_Multichannel,'string'));
                                kuthreshold2=str2num(get(handles.edit86_Multichannel,'string'));
                                [Y_iva,W] = IVA_threshold(Y_bss,F,WC,P_iva,0,0,enthreshold1,enthreshold2,kuthreshold1,kuthreshold2,10000,10000);
                            end
                            if  get(handles.checkbox6_Multichannel,'Value')==1&&get(handles.checkbox8_Multichannel,'Value')==1
                                enthreshold1=str2num(get(handles.edit74_Multichannel,'string'));
                                enthreshold2=str2num(get(handles.edit85_Multichannel,'string'));
                                vathreshold1=str2num(get(handles.edit78_Multichannel,'string'));
                                vathreshold2=str2num(get(handles.edit87_Multichannel,'string'));
                                [Y_iva,W] = IVA_threshold(Y_bss,F,WC,P_iva,0,0,enthreshold1,enthreshold2,10000,10000,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox7_Multichannel,'Value')==1&&get(handles.checkbox8_Multichannel,'Value')==1
                                kuthreshold1=str2num(get(handles.edit220_Multichannel,'string'));
                                kuthreshold2=str2num(get(handles.edit86_Multichannel,'string'));
                                vathreshold1=str2num(get(handles.edit78_Multichannel,'string'));
                                vathreshold2=str2num(get(handles.edit87_Multichannel,'string'));
                                [Y_iva,W] = IVA_threshold(Y_bss,F,WC,P_iva,0,0,10000,10000,kuthreshold1,kuthreshold2,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox9_Multichannel,'Value')==1&&get(handles.checkbox6_Multichannel,'Value')==1&&get(handles.checkbox7_Multichannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit72_Multichannel,'string'));
                                acthreshold2=str2num(get(handles.edit84_Multichannel,'string'));
                                enthreshold1=str2num(get(handles.edit74_Multichannel,'string'));
                                enthreshold2=str2num(get(handles.edit85_Multichannel,'string'));
                                kuthreshold1=str2num(get(handles.edit220_Multichannel,'string'));
                                kuthreshold2=str2num(get(handles.edit86_Multichannel,'string'));
                                [Y_iva,W] = IVA_threshold(Y_bss,F,WC,P_iva,acthreshold1,acthreshold2,enthreshold1,enthreshold2,kuthreshold1,kuthreshold2,10000,10000);
                            end
                            if  get(handles.checkbox9_Multichannel,'Value')==1&&get(handles.checkbox6_Multichannel,'Value')==1&&get(handles.checkbox8_Multichannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit72_Multichannel,'string'));
                                acthreshold2=str2num(get(handles.edit84_Multichannel,'string'));
                                enthreshold1=str2num(get(handles.edit74_Multichannel,'string'));
                                enthreshold2=str2num(get(handles.edit85_Multichannel,'string'));
                                vathreshold1=str2num(get(handles.edit78_Multichannel,'string'));
                                vathreshold2=str2num(get(handles.edit87_Multichannel,'string'));
                                [Y_iva,W] = IVA_threshold(Y_bss,F,WC,P_iva,acthreshold1,acthreshold2,enthreshold1,enthreshold2,10000,10000,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox9_Multichannel,'Value')==1&&get(handles.checkbox7_Multichannel,'Value')==1&&get(handles.checkbox8_Multichannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit72_Multichannel,'string'));
                                acthreshold2=str2num(get(handles.edit84_Multichannel,'string'));
                                kuthreshold1=str2num(get(handles.edit220_Multichannel,'string'));
                                kuthreshold2=str2num(get(handles.edit86_Multichannel,'string'));
                                vathreshold1=str2num(get(handles.edit78_Multichannel,'string'));
                                vathreshold2=str2num(get(handles.edit87_Multichannel,'string'));
                                [Y_iva,W] = IVA_threshold(Y_bss,F,WC,P_iva,acthreshold1,acthreshold2,10000,10000, kuthreshold1, kuthreshold2,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox6_Multichannel,'Value')==1&&get(handles.checkbox7_Multichannel,'Value')==1&&get(handles.checkbox8_Multichannel,'Value')==1
                                enthreshold1=str2num(get(handles.edit74_Multichannel,'string'));
                                enthreshold2=str2num(get(handles.edit85_Multichannel,'string'));
                                kuthreshold1=str2num(get(handles.edit220_Multichannel,'string'));
                                kuthreshold2=str2num(get(handles.edit86_Multichannel,'string'));
                                vathreshold1=str2num(get(handles.edit78_Multichannel,'string'));
                                vathreshold2=str2num(get(handles.edit87_Multichannel,'string'));
                                [Y_iva,W] = IVA_threshold(Y_bss,F,WC,P_iva,0,0,enthreshold1,enthreshold2, kuthreshold1, kuthreshold2,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox9_Multichannel,'Value')==1&&get(handles.checkbox6_Multichannel,'Value')==1&&get(handles.checkbox7_Multichannel,'Value')==1&&get(handles.checkbox8_Multichannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit72_Multichannel,'string'));
                                acthreshold2=str2num(get(handles.edit84_Multichannel,'string'));
                                enthreshold1=str2num(get(handles.edit74_Multichannel,'string'));
                                enthreshold2=str2num(get(handles.edit85_Multichannel,'string'));
                                kuthreshold1=str2num(get(handles.edit220_Multichannel,'string'));
                                kuthreshold2=str2num(get(handles.edit86_Multichannel,'string'));
                                vathreshold1=str2num(get(handles.edit78_Multichannel,'string'));
                                vathreshold2=str2num(get(handles.edit87_Multichannel,'string'));
                                [Y_iva,W] = IVA_threshold(Y_bss,F,WC,P_iva,acthreshold1,acthreshold2,enthreshold1,enthreshold2, kuthreshold1, kuthreshold2,vathreshold1,vathreshold2);
                            end
                    Youtput= Y_iva;
            end
    end        %%%得到BSS后的信号
    switch (vah)
        case {1,2,3}
            switch (vah1)
                case 1    %ICA
                    switch(vah2)
                        case 1  %fastica
                            if get(handles.checkbox9_Multichannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit72_Multichannel,'string'));
                                acthreshold2=str2num(get(handles.edit84_Multichannel,'string'));
                                [YfastICA,W] = ICA_threshold_fastica(Ybss,WC,Wica,P_ica,acthreshold1,acthreshold2,10000,10000,10000,10000,10000,10000);
                            end
                            if get(handles.checkbox6_Multichannel,'Value')==1 ;
                                enthreshold1=str2num(get(handles.edit74_Multichannel,'string'));
                                enthreshold2=str2num(get(handles.edit85_Multichannel,'string'));
                                [YfastICA,W] = ICA_threshold_fastica(Ybss,WC,Wica,P_ica,0,0,enthreshold1,enthreshold2,10000,10000,10000,10000);
                            end
                            if get(handles.checkbox7_Multichannel,'Value')==1
                                kuthreshold1=str2num(get(handles.edit220_Multichannel,'string'));
                                kuthreshold2=str2num(get(handles.edit86_Multichannel,'string'));
                                [YfastICA,W] = ICA_threshold_fastica(Ybss,WC,Wica,P_ica,0,0,10000,10000,kuthreshold1,kuthreshold2,10000,10000);
                            end
                            if get(handles.checkbox8_Multichannel,'Value')==1
                                vathreshold1=str2num(get(handles.edit78_Multichannel,'string'));
                                vathreshold2=str2num(get(handles.edit87_Multichannel,'string'));
                                [YfastICA,W] = ICA_threshold_fastica(Ybss,WC,Wica,P_ica,0,0,10000,10000,10000,10000,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox9_Multichannel,'Value')==1&&get(handles.checkbox6_Multichannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit72_Multichannel,'string'));
                                acthreshold2=str2num(get(handles.edit84_Multichannel,'string'));
                                enthreshold1=str2num(get(handles.edit74_Multichannel,'string'));
                                enthreshold2=str2num(get(handles.edit85_Multichannel,'string'));
                                [YfastICA,W] = ICA_threshold_fastica(Ybss,WC,Wica,P_ica,acthreshold1,acthreshold2,enthreshold1,enthreshold2,10000,10000,10000,10000);
                            end
                            if  get(handles.checkbox9_Multichannel,'Value')==1&&get(handles.checkbox8_Multichannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit72_Multichannel,'string'));
                                acthreshold2=str2num(get(handles.edit84_Multichannel,'string'));
                                vathreshold1=str2num(get(handles.edit78_Multichannel,'string'));
                                vathreshold2=str2num(get(handles.edit87_Multichannel,'string'));
                                [YfastICA,W] = ICA_threshold_fastica(Ybss,WC,Wica,P_ica,acthreshold1,acthreshold2,10000,10000,10000,10000,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox9_Multichannel,'Value')==1&&get(handles.checkbox7_Multichannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit72_Multichannel,'string'));
                                acthreshold2=str2num(get(handles.edit84_Multichannel,'string'));
                                kuthreshold1=str2num(get(handles.edit220_Multichannel,'string'));
                                kuthreshold2=str2num(get(handles.edit86_Multichannel,'string'));
                                [YfastICA,W] = ICA_threshold_fastica(Ybss,WC,Wica,P_ica,acthreshold1,acthreshold2,10000,10000,kuthreshold1,kuthreshold2,10000,10000);
                            end
                            if  get(handles.checkbox6_Multichannel,'Value')==1&&get(handles.checkbox7_Multichannel,'Value')==1
                                enthreshold1=str2num(get(handles.edit74_Multichannel,'string'));
                                enthreshold2=str2num(get(handles.edit85_Multichannel,'string'));
                                kuthreshold1=str2num(get(handles.edit220_Multichannel,'string'));
                                kuthreshold2=str2num(get(handles.edit86_Multichannel,'string'));
                                [YfastICA,W] = ICA_threshold_fastica(Ybss,WC,Wica,P_ica,0,0,enthreshold1,enthreshold2,kuthreshold1,kuthreshold2,10000,10000);
                            end
                            if  get(handles.checkbox6_Multichannel,'Value')==1&&get(handles.checkbox8_Multichannel,'Value')==1
                                enthreshold1=str2num(get(handles.edit74_Multichannel,'string'));
                                enthreshold2=str2num(get(handles.edit85_Multichannel,'string'));
                                vathreshold1=str2num(get(handles.edit78_Multichannel,'string'));
                                vathreshold2=str2num(get(handles.edit87_Multichannel,'string'));
                                [YfastICA,W] = ICA_threshold_fastica(Ybss,WC,Wica,P_ica,0,0,enthreshold1,enthreshold2,10000,10000,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox7_Multichannel,'Value')==1&&get(handles.checkbox8_Multichannel,'Value')==1
                                kuthreshold1=str2num(get(handles.edit220_Multichannel,'string'));
                                kuthreshold2=str2num(get(handles.edit86_Multichannel,'string'));
                                vathreshold1=str2num(get(handles.edit78_Multichannel,'string'));
                                vathreshold2=str2num(get(handles.edit87_Multichannel,'string'));
                                [YfastICA,W] = ICA_threshold_fastica(Ybss,WC,Wica,P_ica,0,0,10000,10000,kuthreshold1,kuthreshold2,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox9_Multichannel,'Value')==1&&get(handles.checkbox6_Multichannel,'Value')==1&&get(handles.checkbox7_Multichannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit72_Multichannel,'string'));
                                acthreshold2=str2num(get(handles.edit84_Multichannel,'string'));
                                enthreshold1=str2num(get(handles.edit74_Multichannel,'string'));
                                enthreshold2=str2num(get(handles.edit85_Multichannel,'string'));
                                kuthreshold1=str2num(get(handles.edit220_Multichannel,'string'));
                                kuthreshold2=str2num(get(handles.edit86_Multichannel,'string'));
                                [YfastICA,W] = ICA_threshold_fastica(Ybss,WC,Wica,P_ica,acthreshold1,acthreshold2,enthreshold1,enthreshold2,kuthreshold1,kuthreshold2,10000,10000);
                            end
                            if  get(handles.checkbox9_Multichannel,'Value')==1&&get(handles.checkbox6_Multichannel,'Value')==1&&get(handles.checkbox8_Multichannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit72_Multichannel,'string'));
                                acthreshold2=str2num(get(handles.edit84_Multichannel,'string'));
                                enthreshold1=str2num(get(handles.edit74_Multichannel,'string'));
                                enthreshold2=str2num(get(handles.edit85_Multichannel,'string'));
                                vathreshold1=str2num(get(handles.edit78_Multichannel,'string'));
                                vathreshold2=str2num(get(handles.edit87_Multichannel,'string'));
                                [YfastICA,W] = ICA_threshold_fastica(Ybss,WC,Wica,P_ica,acthreshold1,acthreshold2,enthreshold1,enthreshold2,10000,10000,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox9_Multichannel,'Value')==1&&get(handles.checkbox7_Multichannel,'Value')==1&&get(handles.checkbox8_Multichannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit72_Multichannel,'string'));
                                acthreshold2=str2num(get(handles.edit84_Multichannel,'string'));
                                kuthreshold1=str2num(get(handles.edit220_Multichannel,'string'));
                                kuthreshold2=str2num(get(handles.edit86_Multichannel,'string'));
                                vathreshold1=str2num(get(handles.edit78_Multichannel,'string'));
                                vathreshold2=str2num(get(handles.edit87_Multichannel,'string'));
                                [YfastICA,W] = ICA_threshold_fastica(Ybss,WC,Wica,P_ica,acthreshold1,acthreshold2,10000,10000, kuthreshold1, kuthreshold2,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox6_Multichannel,'Value')==1&&get(handles.checkbox7_Multichannel,'Value')==1&&get(handles.checkbox8_Multichannel,'Value')==1
                                enthreshold1=str2num(get(handles.edit74_Multichannel,'string'));
                                enthreshold2=str2num(get(handles.edit85_Multichannel,'string'));
                                kuthreshold1=str2num(get(handles.edit220_Multichannel,'string'));
                                kuthreshold2=str2num(get(handles.edit86_Multichannel,'string'));
                                vathreshold1=str2num(get(handles.edit78_Multichannel,'string'));
                                vathreshold2=str2num(get(handles.edit87_Multichannel,'string'));
                                [YfastICA,W] = ICA_threshold_fastica(Ybss,WC,Wica,P_ica,0,0,enthreshold1,enthreshold2, kuthreshold1, kuthreshold2,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox9_Multichannel,'Value')==1&&get(handles.checkbox6_Multichannel,'Value')==1&&get(handles.checkbox7_Multichannel,'Value')==1&&get(handles.checkbox8_Multichannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit72_Multichannel,'string'));
                                acthreshold2=str2num(get(handles.edit84_Multichannel,'string'));
                                enthreshold1=str2num(get(handles.edit74_Multichannel,'string'));
                                enthreshold2=str2num(get(handles.edit85_Multichannel,'string'));
                                kuthreshold1=str2num(get(handles.edit220_Multichannel,'string'));
                                kuthreshold2=str2num(get(handles.edit86_Multichannel,'string'));
                                vathreshold1=str2num(get(handles.edit78_Multichannel,'string'));
                                vathreshold2=str2num(get(handles.edit87_Multichannel,'string'));
                                [YfastICA,W] = ICA_threshold_fastica(Ybss,WC,Wica,P_ica,acthreshold1,acthreshold2,enthreshold1,enthreshold2, kuthreshold1, kuthreshold2,vathreshold1,vathreshold2);
                            end
                            switch (vah)
                                case{1,2,3}
                                    [Youtput] = multiEEG_recon(YfastICA,Y_m,existingdata,componumber,fs);
                                    
                            end
                        case 2  %SOBI
                             if get(handles.checkbox9_Multichannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit72_Multichannel,'string'));
                                acthreshold2=str2num(get(handles.edit84_Multichannel,'string'));
                                [Ysobi,W] = ICA_threshold_sobi(Ybss,WC,Wica,P_ica,acthreshold1,acthreshold2,10000,10000,10000,10000,10000,10000);
                            end
                             if get(handles.checkbox6_Multichannel,'Value')==1 ;
                                enthreshold1=str2num(get(handles.edit74_Multichannel,'string'));
                                enthreshold2=str2num(get(handles.edit85_Multichannel,'string'));
                                [Ysobi,W] = ICA_threshold_sobi(Ybss,WC,Wica,P_ica,0,0,enthreshold1,enthreshold2,10000,10000,10000,10000);
                            end
                            if get(handles.checkbox7_Multichannel,'Value')==1
                                kuthreshold1=str2num(get(handles.edit220_Multichannel,'string'));
                                kuthreshold2=str2num(get(handles.edit86_Multichannel,'string'));
                                [Ysobi,W] = ICA_threshold_sobi(Ybss,WC,Wica,P_ica,0,0,10000,10000,kuthreshold1,kuthreshold2,10000,10000);
                            end
                            if get(handles.checkbox8_Multichannel,'Value')==1
                                vathreshold1=str2num(get(handles.edit78_Multichannel,'string'));
                                vathreshold2=str2num(get(handles.edit87_Multichannel,'string'));
                                [Ysobi,W] = ICA_threshold_sobi(Ybss,WC,Wica,P_ica,0,0,10000,10000,10000,10000,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox9_Multichannel,'Value')==1&&get(handles.checkbox6_Multichannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit72_Multichannel,'string'));
                                acthreshold2=str2num(get(handles.edit84_Multichannel,'string'));
                                enthreshold1=str2num(get(handles.edit74_Multichannel,'string'));
                                enthreshold2=str2num(get(handles.edit85_Multichannel,'string'));
                                [Ysobi,W] = ICA_threshold_sobi(Ybss,WC,Wica,P_ica,acthreshold1,acthreshold2,enthreshold1,enthreshold2,10000,10000,10000,10000);
                            end
                            if  get(handles.checkbox9_Multichannel,'Value')==1&&get(handles.checkbox8_Multichannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit72_Multichannel,'string'));
                                acthreshold2=str2num(get(handles.edit84_Multichannel,'string'));
                                vathreshold1=str2num(get(handles.edit78_Multichannel,'string'));
                                vathreshold2=str2num(get(handles.edit87_Multichannel,'string'));
                                [Ysobi,W] = ICA_threshold_sobi(Ybss,Wica,P_ica,acthreshold1,acthreshold2,10000,10000,10000,10000,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox9_Multichannel,'Value')==1&&get(handles.checkbox7_Multichannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit72_Multichannel,'string'));
                                acthreshold2=str2num(get(handles.edit84_Multichannel,'string'));
                                kuthreshold1=str2num(get(handles.edit220_Multichannel,'string'));
                                kuthreshold2=str2num(get(handles.edit86_Multichannel,'string'));
                                [Ysobi,W] = ICA_threshold_sobi(Ybss,Wica,P_ica,acthreshold1,acthreshold2,10000,10000,kuthreshold1,kuthreshold2,10000,10000);
                            end
                            if  get(handles.checkbox6_Multichannel,'Value')==1&&get(handles.checkbox7_Multichannel,'Value')==1
                                enthreshold1=str2num(get(handles.edit74_Multichannel,'string'));
                                enthreshold2=str2num(get(handles.edit85_Multichannel,'string'));
                                kuthreshold1=str2num(get(handles.edit220_Multichannel,'string'));
                                kuthreshold2=str2num(get(handles.edit86_Multichannel,'string'));
                                [Ysobi,W] = ICA_threshold_sobi(Ybss,WC,Wica,P_ica,0,0,enthreshold1,enthreshold2,kuthreshold1,kuthreshold2,10000,10000);
                            end
                            if  get(handles.checkbox6_Multichannel,'Value')==1&&get(handles.checkbox8_Multichannel,'Value')==1
                                enthreshold1=str2num(get(handles.edit74_Multichannel,'string'));
                                enthreshold2=str2num(get(handles.edit85_Multichannel,'string'));
                                vathreshold1=str2num(get(handles.edit78_Multichannel,'string'));
                                vathreshold2=str2num(get(handles.edit87_Multichannel,'string'));
                                [Ysobi,W] = ICA_threshold_sobi(Ybss,WC,Wica,P_ica,0,0,enthreshold1,enthreshold2,10000,10000,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox7_Multichannel,'Value')==1&&get(handles.checkbox8_Multichannel,'Value')==1
                                kuthreshold1=str2num(get(handles.edit220_Multichannel,'string'));
                                kuthreshold2=str2num(get(handles.edit86_Multichannel,'string'));
                                vathreshold1=str2num(get(handles.edit78_Multichannel,'string'));
                                vathreshold2=str2num(get(handles.edit87_Multichannel,'string'));
                                [Y_sobi,W] = ICA_threshold_sobi(Ybss,WC,Wica,P_ica,0,0,10000,10000,kuthreshold1,kuthreshold2,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox9_Multichannel,'Value')==1&&get(handles.checkbox6_Multichannel,'Value')==1&&get(handles.checkbox7_Multichannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit72_Multichannel,'string'));
                                acthreshold2=str2num(get(handles.edit84_Multichannel,'string'));
                                enthreshold1=str2num(get(handles.edit74_Multichannel,'string'));
                                enthreshold2=str2num(get(handles.edit85_Multichannel,'string'));
                                kuthreshold1=str2num(get(handles.edit220_Multichannel,'string'));
                                kuthreshold2=str2num(get(handles.edit86_Multichannel,'string'));
                                [Ysobi,W] = ICA_threshold_sobi(Ybss,WC,Wica,P_ica,acthreshold1,acthreshold2,enthreshold1,enthreshold2,kuthreshold1,kuthreshold2,10000,10000);
                            end
                            if  get(handles.checkbox9_Multichannel,'Value')==1&&get(handles.checkbox6_Multichannel,'Value')==1&&get(handles.checkbox8_Multichannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit72_Multichannel,'string'));
                                acthreshold2=str2num(get(handles.edit84_Multichannel,'string'));
                                enthreshold1=str2num(get(handles.edit74_Multichannel,'string'));
                                enthreshold2=str2num(get(handles.edit85_Multichannel,'string'));
                                vathreshold1=str2num(get(handles.edit78_Multichannel,'string'));
                                vathreshold2=str2num(get(handles.edit87_Multichannel,'string'));
                                [Ysobi,W] = ICA_threshold_sobi(Ybss,WC,Wica,P_ica,acthreshold1,acthreshold2,enthreshold1,enthreshold2,10000,10000,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox9_Multichannel,'Value')==1&&get(handles.checkbox7_Multichannel,'Value')==1&&get(handles.checkbox8_Multichannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit72_Multichannel,'string'));
                                acthreshold2=str2num(get(handles.edit84_Multichannel,'string'));
                                kuthreshold1=str2num(get(handles.edit220_Multichannel,'string'));
                                kuthreshold2=str2num(get(handles.edit86_Multichannel,'string'));
                                vathreshold1=str2num(get(handles.edit78_Multichannel,'string'));
                                vathreshold2=str2num(get(handles.edit87_Multichannel,'string'));
                                [Ysobi,W] = ICA_threshold_sobi(Ybss,WC,Wica,P_ica,acthreshold1,acthreshold2,10000,10000, kuthreshold1, kuthreshold2,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox6_Multichannel,'Value')==1&&get(handles.checkbox7_Multichannel,'Value')==1&&get(handles.checkbox8_Multichannel,'Value')==1
                                enthreshold1=str2num(get(handles.edit74_Multichannel,'string'));
                                enthreshold2=str2num(get(handles.edit85_Multichannel,'string'));
                                kuthreshold1=str2num(get(handles.edit220_Multichannel,'string'));
                                kuthreshold2=str2num(get(handles.edit86_Multichannel,'string'));
                                vathreshold1=str2num(get(handles.edit78_Multichannel,'string'));
                                vathreshold2=str2num(get(handles.edit87_Multichannel,'string'));
                                [Ysobi,W] = ICA_threshold_sobi(Ybss,WC,Wica,P_ica,0,0,enthreshold1,enthreshold2, kuthreshold1, kuthreshold2,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox9_Multichannel,'Value')==1&&get(handles.checkbox6_Multichannel,'Value')==1&&get(handles.checkbox7_Multichannel,'Value')==1&&get(handles.checkbox8_Multichannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit72_Multichannel,'string'));
                                acthreshold2=str2num(get(handles.edit84_Multichannel,'string'));
                                enthreshold1=str2num(get(handles.edit74_Multichannel,'string'));
                                enthreshold2=str2num(get(handles.edit85_Multichannel,'string'));
                                kuthreshold1=str2num(get(handles.edit220_Multichannel,'string'));
                                kuthreshold2=str2num(get(handles.edit86_Multichannel,'string'));
                                vathreshold1=str2num(get(handles.edit78_Multichannel,'string'));
                                vathreshold2=str2num(get(handles.edit87_Multichannel,'string'));
                                [Ysobi,W] = ICA_threshold_sobi(Ybss,WC,Wica,P_ica,acthreshold1,acthreshold2,enthreshold1,enthreshold2, kuthreshold1, kuthreshold2,vathreshold1,vathreshold2);
                            end
                            switch(vah)
                                case{1,2,3}
                                    [Youtput] = multiEEG_recon(Ysobi,Y_m,existingdata,componumber,fs);
                                    
                            end
                        case 3  %jade
                            if get(handles.checkbox9_Multichannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit72_Multichannel,'string'));
                                acthreshold2=str2num(get(handles.edit84_Multichannel,'string'));
                                [Yjade,W] = ICA_threshold_jade(Ybss,WC,B,P_ica,acthreshold1,acthreshold2,10000,10000,10000,10000,10000,10000) ;
                            end
                            if get(handles.checkbox6_Multichannel,'Value')==1 ;
                                enthreshold1=str2num(get(handles.edit74_Multichannel,'string'));
                                enthreshold2=str2num(get(handles.edit85_Multichannel,'string'));
                                [Yjade,W] = ICA_threshold_jade(Ybss,WC,B,P_ica,0,0,enthreshold1,enthreshold2,10000,10000,10000,10000);
                            end
                            if get(handles.checkbox7_Multichannel,'Value')==1
                                kuthreshold1=str2num(get(handles.edit220_Multichannel,'string'));
                                kuthreshold2=str2num(get(handles.edit86_Multichannel,'string'));
                                [Yjade,W] = ICA_threshold_jade(Ybss,WC,B,P_ica,0,0,10000,10000,kuthreshold1,kuthreshold2,10000,10000);
                            end
                            if get(handles.checkbox8_Multichannel,'Value')==1
                                vathreshold1=str2num(get(handles.edit78_Multichannel,'string'));
                                vathreshold2=str2num(get(handles.edit87_Multichannel,'string'));
                                [Yjade,W] = ICA_threshold_jade(Ybss,WC,B,P_ica,0,0,10000,10000,10000,10000,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox9_Multichannel,'Value')==1&&get(handles.checkbox6_Multichannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit72_Multichannel,'string'));
                                acthreshold2=str2num(get(handles.edit84_Multichannel,'string'));
                                enthreshold1=str2num(get(handles.edit74_Multichannel,'string'));
                                enthreshold2=str2num(get(handles.edit85_Multichannel,'string'));
                                [Yjade,W] = ICA_threshold_jade(Ybss,WC,B,P_ica,acthreshold1,acthreshold2,enthreshold1,enthreshold2,10000,10000,10000,10000);
                            end
                            if  get(handles.checkbox9_Multichannel,'Value')==1&&get(handles.checkbox8_Multichannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit72_Multichannel,'string'));
                                acthreshold2=str2num(get(handles.edit84_Multichannel,'string'));
                                vathreshold1=str2num(get(handles.edit78_Multichannel,'string'));
                                vathreshold2=str2num(get(handles.edit87_Multichannel,'string'));
                                [Yjade,W] = ICA_threshold_jade(Ybss,WC,B,P_ica,acthreshold1,acthreshold2,10000,10000,10000,10000,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox9_Multichannel,'Value')==1&&get(handles.checkbox7_Multichannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit72_Multichannel,'string'));
                                acthreshold2=str2num(get(handles.edit84_Multichannel,'string'));
                                kuthreshold1=str2num(get(handles.edit220_Multichannel,'string'));
                                kuthreshold2=str2num(get(handles.edit86_Multichannel,'string'));
                                [Yjade,W] = ICA_threshold_jade(Ybss,WC,B,P_ica,acthreshold1,acthreshold2,10000,10000,kuthreshold1,kuthreshold2,10000,10000);
                            end
                            if  get(handles.checkbox6_Multichannel,'Value')==1&&get(handles.checkbox7_Multichannel,'Value')==1
                                enthreshold1=str2num(get(handles.edit74_Multichannel,'string'));
                                enthreshold2=str2num(get(handles.edit85_Multichannel,'string'));
                                kuthreshold1=str2num(get(handles.edit220_Multichannel,'string'));
                                kuthreshold2=str2num(get(handles.edit86_Multichannel,'string'));
                                [Yjade,W] = ICA_threshold_jade(Ybss,WC,B,P_ica,0,0,enthreshold1,enthreshold2,kuthreshold1,kuthreshold2,10000,10000);
                            end
                            if  get(handles.checkbox6_Multichannel,'Value')==1&&get(handles.checkbox8_Multichannel,'Value')==1
                                enthreshold1=str2num(get(handles.edit74_Multichannel,'string'));
                                enthreshold2=str2num(get(handles.edit85_Multichannel,'string'));
                                vathreshold1=str2num(get(handles.edit78_Multichannel,'string'));
                                vathreshold2=str2num(get(handles.edit87_Multichannel,'string'));
                                [Yjade,W] = ICA_threshold_jade(Ybss,WC,B,P_ica,0,0,enthreshold1,enthreshold2,10000,10000,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox7_Multichannel,'Value')==1&&get(handles.checkbox8_Multichannel,'Value')==1
                                kuthreshold1=str2num(get(handles.edit220_Multichannel,'string'));
                                kuthreshold2=str2num(get(handles.edit86_Multichannel,'string'));
                                vathreshold1=str2num(get(handles.edit78_Multichannel,'string'));
                                vathreshold2=str2num(get(handles.edit87_Multichannel,'string'));
                                [Yjade,W] = ICA_threshold_jade(Ybss,WC,B,P_ica,0,0,10000,10000,kuthreshold1,kuthreshold2,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox9_Multichannel,'Value')==1&&get(handles.checkbox6_Multichannel,'Value')==1&&get(handles.checkbox7_Multichannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit72_Multichannel,'string'));
                                acthreshold2=str2num(get(handles.edit84_Multichannel,'string'));
                                enthreshold1=str2num(get(handles.edit74_Multichannel,'string'));
                                enthreshold2=str2num(get(handles.edit85_Multichannel,'string'));
                                kuthreshold1=str2num(get(handles.edit220_Multichannel,'string'));
                                kuthreshold2=str2num(get(handles.edit86_Multichannel,'string'));
                                [Yjade,W] = ICA_threshold_jade(Ybss,WC,B,P_ica,acthreshold1,acthreshold2,enthreshold1,enthreshold2,kuthreshold1,kuthreshold2,10000,10000);
                            end
                            if  get(handles.checkbox9_Multichannel,'Value')==1&&get(handles.checkbox6_Multichannel,'Value')==1&&get(handles.checkbox8_Multichannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit72_Multichannel,'string'));
                                acthreshold2=str2num(get(handles.edit84_Multichannel,'string'));
                                enthreshold1=str2num(get(handles.edit74_Multichannel,'string'));
                                enthreshold2=str2num(get(handles.edit85_Multichannel,'string'));
                                vathreshold1=str2num(get(handles.edit78_Multichannel,'string'));
                                vathreshold2=str2num(get(handles.edit87_Multichannel,'string'));
                                [Yjade,W] = ICA_threshold_jade(Ybss,WC,B,P_ica,acthreshold1,acthreshold2,enthreshold1,enthreshold2,10000,10000,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox9_Multichannel,'Value')==1&&get(handles.checkbox7_Multichannel,'Value')==1&&get(handles.checkbox8_Multichannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit72_Multichannel,'string'));
                                acthreshold2=str2num(get(handles.edit84_Multichannel,'string'));
                                kuthreshold1=str2num(get(handles.edit220_Multichannel,'string'));
                                kuthreshold2=str2num(get(handles.edit86_Multichannel,'string'));
                                vathreshold1=str2num(get(handles.edit78_Multichannel,'string'));
                                vathreshold2=str2num(get(handles.edit87_Multichannel,'string'));
                                [Yjade,W] = ICA_threshold_jade(Ybss,WC,B,P_ica,acthreshold1,acthreshold2,10000,10000, kuthreshold1, kuthreshold2,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox6_Multichannel,'Value')==1&&get(handles.checkbox7_Multichannel,'Value')==1&&get(handles.checkbox8_Multichannel,'Value')==1
                                enthreshold1=str2num(get(handles.edit74_Multichannel,'string'));
                                enthreshold2=str2num(get(handles.edit85_Multichannel,'string'));
                                kuthreshold1=str2num(get(handles.edit220_Multichannel,'string'));
                                kuthreshold2=str2num(get(handles.edit86_Multichannel,'string'));
                                vathreshold1=str2num(get(handles.edit78_Multichannel,'string'));
                                vathreshold2=str2num(get(handles.edit87_Multichannel,'string'));
                                [Yjade,W] = ICA_threshold_jade(Ybss,WC,B,P_ica,0,0,enthreshold1,enthreshold2, kuthreshold1, kuthreshold2,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox9_Multichannel,'Value')==1&&get(handles.checkbox6_Multichannel,'Value')==1&&get(handles.checkbox7_Multichannel,'Value')==1&&get(handles.checkbox8_Multichannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit72_Multichannel,'string'));
                                acthreshold2=str2num(get(handles.edit84_Multichannel,'string'));
                                enthreshold1=str2num(get(handles.edit74_Multichannel,'string'));
                                enthreshold2=str2num(get(handles.edit85_Multichannel,'string'));
                                kuthreshold1=str2num(get(handles.edit220_Multichannel,'string'));
                                kuthreshold2=str2num(get(handles.edit86_Multichannel,'string'));
                                vathreshold1=str2num(get(handles.edit78_Multichannel,'string'));
                                vathreshold2=str2num(get(handles.edit87_Multichannel,'string'));
                                [Yjade,W] = ICA_threshold_jade(Ybss,WC,B,P_ica,acthreshold1,acthreshold2,enthreshold1,enthreshold2, kuthreshold1, kuthreshold2,vathreshold1,vathreshold2);
                            end
                            switch(vah)
                                case{1,2,3}
                                    [Youtput] = multiEEG_recon(Yjade,Y_m,existingdata,componumber,fs);
                                    
                            end
                            case 4  %infomax
                            if get(handles.checkbox9_Multichannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit72_Multichannel,'string'));
                                acthreshold2=str2num(get(handles.edit84_Multichannel,'string'));
                                [Yinfomax,W] = ICA_threshold_infomax(Ybss,WC,Wica,P_ica,acthreshold1,acthreshold2,10000,10000,10000,10000,10000,10000);
                            end
                            if get(handles.checkbox6_Multichannel,'Value')==1 ;
                                enthreshold1=str2num(get(handles.edit74_Multichannel,'string'));
                                enthreshold2=str2num(get(handles.edit85_Multichannel,'string'));
                                [Yinfomax,W] = ICA_threshold_infomax(Ybss,WC,Wica,P_ica,0,0,enthreshold1,enthreshold2,10000,10000,10000,10000);
                            end
                            if get(handles.checkbox7_Multichannel,'Value')==1
                                kuthreshold1=str2num(get(handles.edit220_Multichannel,'string'));
                                kuthreshold2=str2num(get(handles.edit86_Multichannel,'string'));
                                [Yinfomax,W] = ICA_threshold_infomax(Ybss,WC,Wica,P_ica,0,0,10000,10000,kuthreshold1,kuthreshold2,10000,10000);
                            end
                            if get(handles.checkbox8_Multichannel,'Value')==1
                                vathreshold1=str2num(get(handles.edit78_Multichannel,'string'));
                                vathreshold2=str2num(get(handles.edit87_Multichannel,'string'));
                                [Yinfomax,W] = ICA_threshold_infomax(Ybss,WC,Wica,P_ica,0,0,10000,10000,10000,10000,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox9_Multichannel,'Value')==1&&get(handles.checkbox6_Multichannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit72_Multichannel,'string'));
                                acthreshold2=str2num(get(handles.edit84_Multichannel,'string'));
                                enthreshold1=str2num(get(handles.edit74_Multichannel,'string'));
                                enthreshold2=str2num(get(handles.edit85_Multichannel,'string'));
                                [Yinfomax,W] = ICA_threshold_infomax(Ybss,WC,Wica,P_ica,acthreshold1,acthreshold2,enthreshold1,enthreshold2,10000,10000,10000,10000);
                            end
                            if  get(handles.checkbox9_Multichannel,'Value')==1&&get(handles.checkbox8_Multichannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit72_Multichannel,'string'));
                                acthreshold2=str2num(get(handles.edit84_Multichannel,'string'));
                                vathreshold1=str2num(get(handles.edit78_Multichannel,'string'));
                                vathreshold2=str2num(get(handles.edit87_Multichannel,'string'));
                                [Yinfomax,W] = ICA_threshold_infomax(Ybss,WC,Wica,P_ica,acthreshold1,acthreshold2,10000,10000,10000,10000,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox9_Multichannel,'Value')==1&&get(handles.checkbox7_Multichannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit72_Multichannel,'string'));
                                acthreshold2=str2num(get(handles.edit84_Multichannel,'string'));
                                kuthreshold1=str2num(get(handles.edit220_Multichannel,'string'));
                                kuthreshold2=str2num(get(handles.edit86_Multichannel,'string'));
                                [Yinfomax,W] = ICA_threshold_infomax(Ybss,WC,Wica,P_ica,acthreshold1,acthreshold2,10000,10000,kuthreshold1,kuthreshold2,10000,10000);
                            end
                            if  get(handles.checkbox6_Multichannel,'Value')==1&&get(handles.checkbox7_Multichannel,'Value')==1
                                enthreshold1=str2num(get(handles.edit74_Multichannel,'string'));
                                enthreshold2=str2num(get(handles.edit85_Multichannel,'string'));
                                kuthreshold1=str2num(get(handles.edit220_Multichannel,'string'));
                                kuthreshold2=str2num(get(handles.edit86_Multichannel,'string'));
                                [Yinfomax,W] = ICA_threshold_infomax(Ybss,WC,Wica,P_ica,0,0,enthreshold1,enthreshold2,kuthreshold1,kuthreshold2,10000,10000);
                            end
                            if  get(handles.checkbox6_Multichannel,'Value')==1&&get(handles.checkbox8_Multichannel,'Value')==1
                                enthreshold1=str2num(get(handles.edit74_Multichannel,'string'));
                                enthreshold2=str2num(get(handles.edit85_Multichannel,'string'));
                                vathreshold1=str2num(get(handles.edit78_Multichannel,'string'));
                                vathreshold2=str2num(get(handles.edit87_Multichannel,'string'));
                                [Yinfomax,W] = ICA_threshold_infomax(Ybss,WC,Wica,P_ica,0,0,enthreshold1,enthreshold2,10000,10000,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox7_Multichannel,'Value')==1&&get(handles.checkbox8_Multichannel,'Value')==1
                                kuthreshold1=str2num(get(handles.edit220_Multichannel,'string'));
                                kuthreshold2=str2num(get(handles.edit86_Multichannel,'string'));
                                vathreshold1=str2num(get(handles.edit78_Multichannel,'string'));
                                vathreshold2=str2num(get(handles.edit87_Multichannel,'string'));
                                [Yinfomax,W] = ICA_threshold_infomax(Ybss,WC,Wica,P_ica,0,0,10000,10000,kuthreshold1,kuthreshold2,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox9_Multichannel,'Value')==1&&get(handles.checkbox6_Multichannel,'Value')==1&&get(handles.checkbox7_Multichannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit72_Multichannel,'string'));
                                acthreshold2=str2num(get(handles.edit84_Multichannel,'string'));
                                enthreshold1=str2num(get(handles.edit74_Multichannel,'string'));
                                enthreshold2=str2num(get(handles.edit85_Multichannel,'string'));
                                kuthreshold1=str2num(get(handles.edit220_Multichannel,'string'));
                                kuthreshold2=str2num(get(handles.edit86_Multichannel,'string'));
                                [Yinfomax,W] = ICA_threshold_infomax(Ybss,WC,Wica,P_ica,acthreshold1,acthreshold2,enthreshold1,enthreshold2,kuthreshold1,kuthreshold2,10000,10000);
                            end
                            if  get(handles.checkbox9_Multichannel,'Value')==1&&get(handles.checkbox6_Multichannel,'Value')==1&&get(handles.checkbox8_Multichannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit72_Multichannel,'string'));
                                acthreshold2=str2num(get(handles.edit84_Multichannel,'string'));
                                enthreshold1=str2num(get(handles.edit74_Multichannel,'string'));
                                enthreshold2=str2num(get(handles.edit85_Multichannel,'string'));
                                vathreshold1=str2num(get(handles.edit78_Multichannel,'string'));
                                vathreshold2=str2num(get(handles.edit87_Multichannel,'string'));
                                [Yinfomax,W] = ICA_threshold_infomax(Ybss,WC,Wica,P_ica,acthreshold1,acthreshold2,enthreshold1,enthreshold2,10000,10000,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox9_Multichannel,'Value')==1&&get(handles.checkbox7_Multichannel,'Value')==1&&get(handles.checkbox8_Multichannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit72_Multichannel,'string'));
                                acthreshold2=str2num(get(handles.edit84_Multichannel,'string'));
                                kuthreshold1=str2num(get(handles.edit220_Multichannel,'string'));
                                kuthreshold2=str2num(get(handles.edit86_Multichannel,'string'));
                                vathreshold1=str2num(get(handles.edit78_Multichannel,'string'));
                                vathreshold2=str2num(get(handles.edit87_Multichannel,'string'));
                                [Yinfomax,W] = ICA_threshold_infomax(Ybss,WC,Wica,P_ica,acthreshold1,acthreshold2,10000,10000, kuthreshold1, kuthreshold2,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox6_Multichannel,'Value')==1&&get(handles.checkbox7_Multichannel,'Value')==1&&get(handles.checkbox8_Multichannel,'Value')==1
                                enthreshold1=str2num(get(handles.edit74_Multichannel,'string'));
                                enthreshold2=str2num(get(handles.edit85_Multichannel,'string'));
                                kuthreshold1=str2num(get(handles.edit220_Multichannel,'string'));
                                kuthreshold2=str2num(get(handles.edit86_Multichannel,'string'));
                                vathreshold1=str2num(get(handles.edit78_Multichannel,'string'));
                                vathreshold2=str2num(get(handles.edit87_Multichannel,'string'));
                                [Yinfomax,W] = ICA_threshold_infomax(Ybss,WC,Wica,P_ica,0,0,enthreshold1,enthreshold2, kuthreshold1, kuthreshold2,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox9_Multichannel,'Value')==1&&get(handles.checkbox6_Multichannel,'Value')==1&&get(handles.checkbox7_Multichannel,'Value')==1&&get(handles.checkbox8_Multichannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit72_Multichannel,'string'));
                                acthreshold2=str2num(get(handles.edit84_Multichannel,'string'));
                                enthreshold1=str2num(get(handles.edit74_Multichannel,'string'));
                                enthreshold2=str2num(get(handles.edit85_Multichannel,'string'));
                                kuthreshold1=str2num(get(handles.edit220_Multichannel,'string'));
                                kuthreshold2=str2num(get(handles.edit86_Multichannel,'string'));
                                vathreshold1=str2num(get(handles.edit78_Multichannel,'string'));
                                vathreshold2=str2num(get(handles.edit87_Multichannel,'string'));
                                [Yinfomax,W] = ICA_threshold_infomax(Ybss,WC,Wica,P_ica,acthreshold1,acthreshold2,enthreshold1,enthreshold2, kuthreshold1, kuthreshold2,vathreshold1,vathreshold2);
                            end
                            switch(vah)
                                case{1,2,3}
                                    [Youtput] = multiEEG_recon(Yinfomax,Y_m,existingdata,componumber,fs);
                                    
                            end
                    end
                case 2                          %CCA
                            if get(handles.checkbox9_Multichannel,'Value')==1 ;
                                acthreshold1=str2num(get(handles.edit72_Multichannel,'string'));
                                acthreshold2=str2num(get(handles.edit84_Multichannel,'string'));
                                [Ycca,W] = CCA_threshold(Ybss,B,WC,acthreshold1,acthreshold2,10000,10000,10000,10000,10000,10000);
                            end
                           if get(handles.checkbox6_Multichannel,'Value')==1 ;
                                enthreshold1=str2num(get(handles.edit74_Multichannel,'string'));
                                enthreshold2=str2num(get(handles.edit85_Multichannel,'string'));
                                [Ycca,W] = CCA_threshold(Ybss,B,WC,0,0,enthreshold1,enthreshold2,10000,10000,10000,10000);
                            end
                            if get(handles.checkbox7_Multichannel,'Value')==1
                                kuthreshold1=str2num(get(handles.edit220_Multichannel,'string'));
                                kuthreshold2=str2num(get(handles.edit86_Multichannel,'string'));
                                [Ycca,W] = CCA_threshold(Ybss,B,WC,0,0,10000,10000,kuthreshold1,kuthreshold2,10000,10000);
                            end
                            if get(handles.checkbox8_Multichannel,'Value')==1
                                vathreshold1=str2num(get(handles.edit78_Multichannel,'string'));
                                vathreshold2=str2num(get(handles.edit87_Multichannel,'string'));
                                [Ycca,W] = CCA_threshold(Ybss,B,WC,0,0,10000,10000,10000,10000,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox9_Multichannel,'Value')==1&&get(handles.checkbox6_Multichannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit72_Multichannel,'string'));
                                acthreshold2=str2num(get(handles.edit84_Multichannel,'string'));
                                enthreshold1=str2num(get(handles.edit74_Multichannel,'string'));
                                enthreshold2=str2num(get(handles.edit85_Multichannel,'string'));
                                [Ycca,W] = CCA_threshold(Ybss,B,WC,acthreshold1,acthreshold2,enthreshold1,enthreshold2,10000,10000,10000,10000);
                            end
                            if  get(handles.checkbox9_Multichannel,'Value')==1&&get(handles.checkbox8_Multichannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit72_Multichannel,'string'));
                                acthreshold2=str2num(get(handles.edit84_Multichannel,'string'));
                                vathreshold1=str2num(get(handles.edit78_Multichannel,'string'));
                                vathreshold2=str2num(get(handles.edit87_Multichannel,'string'));
                                [Ycca,W] = CCA_threshold(Ybss,B,WC,acthreshold1,acthreshold2,10000,10000,10000,10000,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox9_Multichannel,'Value')==1&&get(handles.checkbox7_Multichannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit72_Multichannel,'string'));
                                acthreshold2=str2num(get(handles.edit84_Multichannel,'string'));
                                kuthreshold1=str2num(get(handles.edit220_Multichannel,'string'));
                                kuthreshold2=str2num(get(handles.edit86_Multichannel,'string'));
                                [Ycca,W] = CCA_threshold(Ybss,B,WC,acthreshold1,acthreshold2,10000,10000,kuthreshold1,kuthreshold2,10000,10000);
                            end
                            if  get(handles.checkbox6_Multichannel,'Value')==1&&get(handles.checkbox7_Multichannel,'Value')==1
                                enthreshold1=str2num(get(handles.edit74_Multichannel,'string'));
                                enthreshold2=str2num(get(handles.edit85_Multichannel,'string'));
                                kuthreshold1=str2num(get(handles.edit220_Multichannel,'string'));
                                kuthreshold2=str2num(get(handles.edit86_Multichannel,'string'));
                                [Ycca,W] = CCA_threshold(Ybss,B,WC,0,0,enthreshold1,enthreshold2,kuthreshold1,kuthreshold2,10000,10000);
                            end
                            if  get(handles.checkbox6_Multichannel,'Value')==1&&get(handles.checkbox8_Multichannel,'Value')==1
                                enthreshold1=str2num(get(handles.edit74_Multichannel,'string'));
                                enthreshold2=str2num(get(handles.edit85_Multichannel,'string'));
                                vathreshold1=str2num(get(handles.edit78_Multichannel,'string'));
                                vathreshold2=str2num(get(handles.edit87_Multichannel,'string'));
                                [Ycca,W] = CCA_threshold(Ybss,B,WC,0,0,enthreshold1,enthreshold2,10000,10000,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox7_Multichannel,'Value')==1&&get(handles.checkbox8_Multichannel,'Value')==1
                                kuthreshold1=str2num(get(handles.edit220_Multichannel,'string'));
                                kuthreshold2=str2num(get(handles.edit86_Multichannel,'string'));
                                vathreshold1=str2num(get(handles.edit78_Multichannel,'string'));
                                vathreshold2=str2num(get(handles.edit87_Multichannel,'string'));
                                [Ycca,W] = CCA_threshold(Ybss,B,WC,0,0,10000,10000,kuthreshold1,kuthreshold2,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox9_Multichannel,'Value')==1&&get(handles.checkbox6_Multichannel,'Value')==1&&get(handles.checkbox7_Multichannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit72_Multichannel,'string'));
                                acthreshold2=str2num(get(handles.edit84_Multichannel,'string'));
                                enthreshold1=str2num(get(handles.edit74_Multichannel,'string'));
                                enthreshold2=str2num(get(handles.edit85_Multichannel,'string'));
                                kuthreshold1=str2num(get(handles.edit220_Multichannel,'string'));
                                kuthreshold2=str2num(get(handles.edit86_Multichannel,'string'));
                                [Ycca,W] = CCA_threshold(Ybss,B,WC,acthreshold1,acthreshold2,enthreshold1,enthreshold2,kuthreshold1,kuthreshold2,10000,10000);
                            end
                            if  get(handles.checkbox9_Multichannel,'Value')==1&&get(handles.checkbox6_Multichannel,'Value')==1&&get(handles.checkbox8_Multichannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit72_Multichannel,'string'));
                                acthreshold2=str2num(get(handles.edit84_Multichannel,'string'));
                                enthreshold1=str2num(get(handles.edit74_Multichannel,'string'));
                                enthreshold2=str2num(get(handles.edit85_Multichannel,'string'));
                                vathreshold1=str2num(get(handles.edit78_Multichannel,'string'));
                                vathreshold2=str2num(get(handles.edit87_Multichannel,'string'));
                                [Ycca,W] = CCA_threshold(Ybss,B,WC,acthreshold1,acthreshold2,enthreshold1,enthreshold2,10000,10000,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox9_Multichannel,'Value')==1&&get(handles.checkbox7_Multichannel,'Value')==1&&get(handles.checkbox8_Multichannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit72_Multichannel,'string'));
                                acthreshold2=str2num(get(handles.edit84_Multichannel,'string'));
                                kuthreshold1=str2num(get(handles.edit220_Multichannel,'string'));
                                kuthreshold2=str2num(get(handles.edit86_Multichannel,'string'));
                                vathreshold1=str2num(get(handles.edit78_Multichannel,'string'));
                                vathreshold2=str2num(get(handles.edit87_Multichannel,'string'));
                                [Ycca,W] = CCA_threshold(Ybss,B,WC,acthreshold1,acthreshold2,10000,10000, kuthreshold1, kuthreshold2,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox6_Multichannel,'Value')==1&&get(handles.checkbox7_Multichannel,'Value')==1&&get(handles.checkbox8_Multichannel,'Value')==1
                                enthreshold1=str2num(get(handles.edit74_Multichannel,'string'));
                                enthreshold2=str2num(get(handles.edit85_Multichannel,'string'));
                                kuthreshold1=str2num(get(handles.edit220_Multichannel,'string'));
                                kuthreshold2=str2num(get(handles.edit86_Multichannel,'string'));
                                vathreshold1=str2num(get(handles.edit78_Multichannel,'string'));
                                vathreshold2=str2num(get(handles.edit87_Multichannel,'string'));
                                [Ycca,W] = CCA_threshold(Ybss,B,WC,0,0,enthreshold1,enthreshold2, kuthreshold1, kuthreshold2,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox9_Multichannel,'Value')==1&&get(handles.checkbox6_Multichannel,'Value')==1&&get(handles.checkbox7_Multichannel,'Value')==1&&get(handles.checkbox8_Multichannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit72_Multichannel,'string'));
                                acthreshold2=str2num(get(handles.edit84_Multichannel,'string'));
                                enthreshold1=str2num(get(handles.edit74_Multichannel,'string'));
                                enthreshold2=str2num(get(handles.edit85_Multichannel,'string'));
                                kuthreshold1=str2num(get(handles.edit220_Multichannel,'string'));
                                kuthreshold2=str2num(get(handles.edit86_Multichannel,'string'));
                                vathreshold1=str2num(get(handles.edit78_Multichannel,'string'));
                                vathreshold2=str2num(get(handles.edit87_Multichannel,'string'));
                                [Ycca,W] = CCA_threshold(Ybss,B,WC,acthreshold1,acthreshold2,enthreshold1,enthreshold2, kuthreshold1, kuthreshold2,vathreshold1,vathreshold2);
                            end
                    switch(vah)
                        case{1,2,3}
                            [Youtput] = multiEEG_recon(Ycca,Y_m,existingdata,componumber,fs);
                            
                    end
                case 3                        %%%%IVA
                    if get(handles.checkbox9_Multichannel,'Value')==1 ;
                                acthreshold1=str2num(get(handles.edit72_Multichannel,'string'));
                                acthreshold2=str2num(get(handles.edit84_Multichannel,'string'));
                                 [Yiva,W] = IVA_threshold(Ybss,F,WC,P_iva,acthreshold1,acthreshold2,10000,10000,10000,10000,10000,10000);
                            end
                    if get(handles.checkbox6_Multichannel,'Value')==1 ;
                                enthreshold1=str2num(get(handles.edit74_Multichannel,'string'));
                                enthreshold2=str2num(get(handles.edit85_Multichannel,'string'));
                                [Yiva,W] = IVA_threshold(Ybss,F,WC,P_iva,0,0,enthreshold1,enthreshold2,10000,10000,10000,10000);
                            end
                            if get(handles.checkbox7_Multichannel,'Value')==1
                                kuthreshold1=str2num(get(handles.edit220_Multichannel,'string'));
                                kuthreshold2=str2num(get(handles.edit86_Multichannel,'string'));
                                [Yiva,W] = IVA_threshold(Ybss,F,WC,P_iva,0,0,10000,10000,kuthreshold1,kuthreshold2,10000,10000);
                            end
                            if get(handles.checkbox8_Multichannel,'Value')==1
                                vathreshold1=str2num(get(handles.edit78_Multichannel,'string'));
                                vathreshold2=str2num(get(handles.edit87_Multichannel,'string'));
                                [Yiva,W] = IVA_threshold(Ybss,F,WC,P_iva,0,0,10000,10000,10000,10000,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox9_Multichannel,'Value')==1&&get(handles.checkbox6_Multichannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit72_Multichannel,'string'));
                                acthreshold2=str2num(get(handles.edit84_Multichannel,'string'));
                                enthreshold1=str2num(get(handles.edit74_Multichannel,'string'));
                                enthreshold2=str2num(get(handles.edit85_Multichannel,'string'));
                                [Yiva,W] = IVA_threshold(Ybss,F,WC,P_iva,acthreshold1,acthreshold2,enthreshold1,enthreshold2,10000,10000,10000,10000);
                            end
                            if  get(handles.checkbox9_Multichannel,'Value')==1&&get(handles.checkbox8_Multichannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit72_Multichannel,'string'));
                                acthreshold2=str2num(get(handles.edit84_Multichannel,'string'));
                                vathreshold1=str2num(get(handles.edit78_Multichannel,'string'));
                                vathreshold2=str2num(get(handles.edit87_Multichannel,'string'));
                                [Yiva,W] = IVA_threshold(Ybss,F,WC,P_iva,acthreshold1,acthreshold2,10000,10000,10000,10000,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox9_Multichannel,'Value')==1&&get(handles.checkbox7_Multichannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit72_Multichannel,'string'));
                                acthreshold2=str2num(get(handles.edit84_Multichannel,'string'));
                                kuthreshold1=str2num(get(handles.edit220_Multichannel,'string'));
                                kuthreshold2=str2num(get(handles.edit86_Multichannel,'string'));
                                [Yiva,W] = IVA_threshold(Ybss,F,WC,P_iva,acthreshold1,acthreshold2,10000,10000,kuthreshold1,kuthreshold2,10000,10000);
                            end
                            if  get(handles.checkbox6_Multichannel,'Value')==1&&get(handles.checkbox7_Multichannel,'Value')==1
                                enthreshold1=str2num(get(handles.edit74_Multichannel,'string'));
                                enthreshold2=str2num(get(handles.edit85_Multichannel,'string'));
                                kuthreshold1=str2num(get(handles.edit220_Multichannel,'string'));
                                kuthreshold2=str2num(get(handles.edit86_Multichannel,'string'));
                                [Yiva,W] = IVA_threshold(Ybss,F,WC,P_iva,0,0,enthreshold1,enthreshold2,kuthreshold1,kuthreshold2,10000,10000);
                            end
                            if  get(handles.checkbox6_Multichannel,'Value')==1&&get(handles.checkbox8_Multichannel,'Value')==1
                                enthreshold1=str2num(get(handles.edit74_Multichannel,'string'));
                                enthreshold2=str2num(get(handles.edit85_Multichannel,'string'));
                                vathreshold1=str2num(get(handles.edit78_Multichannel,'string'));
                                vathreshold2=str2num(get(handles.edit87_Multichannel,'string'));
                                [Yiva,W] = IVA_threshold(Ybss,F,WC,P_iva,0,0,enthreshold1,enthreshold2,10000,10000,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox7_Multichannel,'Value')==1&&get(handles.checkbox8_Multichannel,'Value')==1
                                kuthreshold1=str2num(get(handles.edit220_Multichannel,'string'));
                                kuthreshold2=str2num(get(handles.edit86_Multichannel,'string'));
                                vathreshold1=str2num(get(handles.edit78_Multichannel,'string'));
                                vathreshold2=str2num(get(handles.edit87_Multichannel,'string'));
                                [Yiva,W] = IVA_threshold(Ybss,F,WC,P_iva,0,0,10000,10000,kuthreshold1,kuthreshold2,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox9_Multichannel,'Value')==1&&get(handles.checkbox6_Multichannel,'Value')==1&&get(handles.checkbox7_Multichannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit72_Multichannel,'string'));
                                acthreshold2=str2num(get(handles.edit84_Multichannel,'string'));
                                enthreshold1=str2num(get(handles.edit74_Multichannel,'string'));
                                enthreshold2=str2num(get(handles.edit85_Multichannel,'string'));
                                kuthreshold1=str2num(get(handles.edit220_Multichannel,'string'));
                                kuthreshold2=str2num(get(handles.edit86_Multichannel,'string'));
                                [Yiva,W] = IVA_threshold(Ybss,F,WC,P_iva,acthreshold1,acthreshold2,enthreshold1,enthreshold2,kuthreshold1,kuthreshold2,10000,10000);
                            end
                            if  get(handles.checkbox9_Multichannel,'Value')==1&&get(handles.checkbox6_Multichannel,'Value')==1&&get(handles.checkbox8_Multichannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit72_Multichannel,'string'));
                                acthreshold2=str2num(get(handles.edit84_Multichannel,'string'));
                                enthreshold1=str2num(get(handles.edit74_Multichannel,'string'));
                                enthreshold2=str2num(get(handles.edit85_Multichannel,'string'));
                                vathreshold1=str2num(get(handles.edit78_Multichannel,'string'));
                                vathreshold2=str2num(get(handles.edit87_Multichannel,'string'));
                                [Yiva,W] = IVA_threshold(Ybss,F,WC,P_iva,acthreshold1,acthreshold2,enthreshold1,enthreshold2,10000,10000,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox9_Multichannel,'Value')==1&&get(handles.checkbox7_Multichannel,'Value')==1&&get(handles.checkbox8_Multichannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit72_Multichannel,'string'));
                                acthreshold2=str2num(get(handles.edit84_Multichannel,'string'));
                                kuthreshold1=str2num(get(handles.edit220_Multichannel,'string'));
                                kuthreshold2=str2num(get(handles.edit86_Multichannel,'string'));
                                vathreshold1=str2num(get(handles.edit78_Multichannel,'string'));
                                vathreshold2=str2num(get(handles.edit87_Multichannel,'string'));
                                [Yiva,W] = IVA_threshold(Ybss,F,WC,P_iva,acthreshold1,acthreshold2,10000,10000, kuthreshold1, kuthreshold2,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox6_Multichannel,'Value')==1&&get(handles.checkbox7_Multichannel,'Value')==1&&get(handles.checkbox8_Multichannel,'Value')==1
                                enthreshold1=str2num(get(handles.edit74_Multichannel,'string'));
                                enthreshold2=str2num(get(handles.edit85_Multichannel,'string'));
                                kuthreshold1=str2num(get(handles.edit220_Multichannel,'string'));
                                kuthreshold2=str2num(get(handles.edit86_Multichannel,'string'));
                                vathreshold1=str2num(get(handles.edit78_Multichannel,'string'));
                                vathreshold2=str2num(get(handles.edit87_Multichannel,'string'));
                                [Yiva,W] = IVA_threshold(Ybss,F,WC,P_iva,0,0,enthreshold1,enthreshold2, kuthreshold1, kuthreshold2,vathreshold1,vathreshold2);
                            end
                            if  get(handles.checkbox9_Multichannel,'Value')==1&&get(handles.checkbox6_Multichannel,'Value')==1&&get(handles.checkbox7_Multichannel,'Value')==1&&get(handles.checkbox8_Multichannel,'Value')==1
                                acthreshold1=str2num(get(handles.edit72_Multichannel,'string'));
                                acthreshold2=str2num(get(handles.edit84_Multichannel,'string'));
                                enthreshold1=str2num(get(handles.edit74_Multichannel,'string'));
                                enthreshold2=str2num(get(handles.edit85_Multichannel,'string'));
                                kuthreshold1=str2num(get(handles.edit220_Multichannel,'string'));
                                kuthreshold2=str2num(get(handles.edit86_Multichannel,'string'));
                                vathreshold1=str2num(get(handles.edit78_Multichannel,'string'));
                                vathreshold2=str2num(get(handles.edit87_Multichannel,'string'));
                                [Yiva,W] = IVA_threshold(Ybss,F,WC,P_iva,acthreshold1,acthreshold2,enthreshold1,enthreshold2, kuthreshold1, kuthreshold2,vathreshold1,vathreshold2);
                            end
                    switch(vah)
                        case{1,2,3}
                            [Youtput] = multiEEG_recon(Yiva,Y_m,existingdata,componumber,fs);
                            
                    end
            end
    end
    axes(handles.axes2_Multichannel);
    cla reset;
   multichannelplot_normal_chen1(Youtput, fs);

end
        waitbar(1,h,'Completed');
        pause(1);
        delete(h);
if strcmp(response,'No')

end

% --- Executes on button press in pushbutton26_Multichannel.
function pushbutton26_Multichannel_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton26_Multichannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes2_Multichannel);
cla reset;


function edit80_Multichannel_Callback(hObject, eventdata, handles)
% hObject    handle to edit80_Multichannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit80_Multichannel as text
%        str2double(get(hObject,'String')) returns contents of edit80_Multichannel as a double


% --- Executes during object creation, after setting all properties.
function edit80_Multichannel_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit80_Multichannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit79_Multichannel_Callback(hObject, eventdata, handles)
% hObject    handle to edit79_Multichannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit79_Multichannel as text
%        str2double(get(hObject,'String')) returns contents of edit79_Multichannel as a double


% --- Executes during object creation, after setting all properties.
function edit79_Multichannel_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit79_Multichannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit86_Multichannel_Callback(hObject, eventdata, handles)
% hObject    handle to edit86_Multichannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit86_Multichannel as text
%        str2double(get(hObject,'String')) returns contents of edit86_Multichannel as a double


% --- Executes during object creation, after setting all properties.
function edit86_Multichannel_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit86_Multichannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit70_Multichannel_Callback(hObject, eventdata, handles)
% hObject    handle to edit70_Multichannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit70_Multichannel as text
%        str2double(get(hObject,'String')) returns contents of edit70_Multichannel as a double


% --- Executes during object creation, after setting all properties.
function edit70_Multichannel_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit70_Multichannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit69_Multichannel_Callback(hObject, eventdata, handles)
% hObject    handle to edit69_Multichannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit69_Multichannel as text
%        str2double(get(hObject,'String')) returns contents of edit69_Multichannel as a double


% --- Executes during object creation, after setting all properties.
function edit69_Multichannel_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit69_Multichannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in checkbox4_Multichannel.
function checkbox4_Multichannel_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox4_Multichannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox4_Multichannel


% --- Executes on button press in checkbox3_Multichannel.
function checkbox3_Multichannel_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox3_Multichannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox3_Multichannel


% --- Executes on button press in checkbox2_Multichannel.
function checkbox2_Multichannel_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox2_Multichannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox2_Multichannel



function edit68_Multichannel_Callback(hObject, eventdata, handles)
% hObject    handle to edit68_Multichannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit68_Multichannel as text
%        str2double(get(hObject,'String')) returns contents of edit68_Multichannel as a double


% --- Executes during object creation, after setting all properties.
function edit68_Multichannel_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit68_Multichannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function edit76_Multichannel_Callback(hObject, eventdata, handles)
% hObject    handle to edit68_Multichannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit68_Multichannel as text
%        str2double(get(hObject,'String')) returns contents of edit68_Multichannel as a double


% --- Executes during object creation, after setting all properties.
function edit76_Multichannel_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit68_Multichannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on button press in pushbutton1_Multichannel.
function pushbutton1_Multichannel_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1_Multichannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global existingdata;
global vah;
global Z_m;
global Y_m;
global fs;
global ssanum;
global componumber;
global  Ydecompose;
global H;
vah=get(handles.popupmenu1_Multichannel ,'value');
 h=waitbar(0,'Running...');

switch (vah)
    case 1                       %SSA
        Windowwidth=str2num(get(handles.edit26_Multichannel,'string'));
         ncomps=str2num(get(handles.edit30_Multichannel,'string'));
        [Ydecompose] = SSA_decompose(existingdata,Windowwidth,ncomps,fs);
        [Hssa,Lssa]=size (Ydecompose);
        ssanum=Hssa/H;
        componumber=ssanum;
        
    case 2                       %Wavelet
        Wavelevel=str2num(get(handles.edit26_Multichannel,'string'));
        Wavebase=num2str(get(handles.edit30_Multichannel,'string'));
        [Ydecompose,wmcnumber] = wavelet_decompose(existingdata, Wavelevel, Wavebase,fs);
        componumber=wmcnumber;
        
    case 3                     %EEMD
        Noiselevel=str2num(get(handles.edit26_Multichannel,'string'));
        NE=str2num(get(handles.edit30_Multichannel,'string'));
        numImf_eemd=str2num(get(handles.edit32_Multichannel,'string'));
        [Ydecompose,Imfnumber] = EEMD_mdecompose(existingdata,Noiselevel,NE,fs,numImf_eemd);
        componumber=Imfnumber;
end
if get(handles.checkbox2_Multichannel,'Value')==1
    acthreshold1=str2num(get(handles.edit68_Multichannel,'string'));
    acthreshold2=str2num(get(handles.edit97_Multichannel,'string'));
    [Z_m,Y_m] = choose_compo(Ydecompose,acthreshold1,acthreshold2,10000,10000,10000,10000,10000,10000);
end
if get(handles.checkbox3_Multichannel,'Value')==1
    enthreshold1=str2num(get(handles.edit69_Multichannel,'string'));
    enthreshold2=str2num(get(handles.edit79_Multichannel,'string'));
    [Z_m,Y_m] = choose_compo(Ydecompose,0,0,enthreshold1,enthreshold2,10000,10000,10000,10000);
end
if get(handles.checkbox4_Multichannel,'Value')==1
    kuthreshold1=str2num(get(handles.edit70_Multichannel,'string'));
    kuthreshold2=str2num(get(handles.edit80_Multichannel,'string'));
    [Z_m,Y_m] = choose_compo(Ydecompose,0,0,10000,10000,kuthreshold1,kuthreshold2,10000,10000);
end
if get(handles.checkbox10_Multichannel,'Value')==1
    vathreshold1=str2num(get(handles.edit71_Multichannel,'string'));
    vathreshold2=str2num(get(handles.edit81_Multichannel,'string'));
    [Z_m,Y_m] = choose_compo(Ydecompose,0,0,10000,10000,10000,10000,vathreshold1,vathreshold2);
end
if get(handles.checkbox2_Multichannel,'Value')==1&&get(handles.checkbox3_Multichannel,'Value')==1
    acthreshold1=str2num(get(handles.edit68_Multichannel,'string'));
    acthreshold2=str2num(get(handles.edit97_Multichannel,'string'));
    enthreshold1=str2num(get(handles.edit69_Multichannel,'string'));
    enthreshold2=str2num(get(handles.edit79_Multichannel,'string'));
    [Z_m,Y_m] = choose_compo(Ydecompose,acthreshold1,acthreshold2,enthreshold1,enthreshold2,10000,10000,10000,10000);
end
if get(handles.checkbox2_Multichannel,'Value')==1&&get(handles.checkbox4_Multichannel,'Value')==1
    acthreshold1=str2num(get(handles.edit68_Multichannel,'string'));
    acthreshold2=str2num(get(handles.edit97_Multichannel,'string'));
    kuthreshold1=str2num(get(handles.edit70_Multichannel,'string'));
    kuthreshold2=str2num(get(handles.edit80_Multichannel,'string'));
    [Z_m,Y_m] = choose_compo(Ydecompose,acthreshold1,acthreshold2,10000,10000, kuthreshold1, kuthreshold2,10000,10000);
end
if get(handles.checkbox2_Multichannel,'Value')==1&&get(handles.checkbox10_Multichannel,'Value')==1
    acthreshold1=str2num(get(handles.edit68_Multichannel,'string'));
    acthreshold2=str2num(get(handles.edit97_Multichannel,'string'));
    vathreshold1=str2num(get(handles.edit71_Multichannel,'string'));
    vathreshold2=str2num(get(handles.edit81_Multichannel,'string'));
    [Z_m,Y_m] = choose_compo(Ydecompose,acthreshold1,acthreshold2,10000,10000, 10000, 10000,vathreshold1,vathreshold2);
end
if get(handles.checkbox3_Multichannel,'Value')==1&&get(handles.checkbox4_Multichannel,'Value')==1
    enthreshold1=str2num(get(handles.edit69_Multichannel,'string'));
    enthreshold2=str2num(get(handles.edit79_Multichannel,'string'));
    kuthreshold1=str2num(get(handles.edit70_Multichannel,'string'));
    kuthreshold2=str2num(get(handles.edit80_Multichannel,'string'));
    [Z_m,Y_m] = choose_compo(Ydecompose,0,0,enthreshold1,enthreshold2,kuthreshold1,kuthreshold2,10000,10000);
end
if get(handles.checkbox3_Multichannel,'Value')==1&&get(handles.checkbox10_Multichannel,'Value')==1
    enthreshold1=str2num(get(handles.edit69_Multichannel,'string'));
    enthreshold2=str2num(get(handles.edit79_Multichannel,'string'));
    vathreshold1=str2num(get(handles.edit71_Multichannel,'string'));
    vathreshold2=str2num(get(handles.edit81_Multichannel,'string'));
    [Z_m,Y_m] = choose_compo(Ydecompose,0,0,enthreshold1,enthreshold2,10000,10000,vathreshold1,vathreshold2);
end
if get(handles.checkbox4_Multichannel,'Value')==1&&get(handles.checkbox10_Multichannel,'Value')==1
    kuthreshold1=str2num(get(handles.edit70_Multichannel,'string'));
    kuthreshold2=str2num(get(handles.edit80_Multichannel,'string'));
    vathreshold1=str2num(get(handles.edit71_Multichannel,'string'));
    vathreshold2=str2num(get(handles.edit81_Multichannel,'string'));
    [Z_m,Y_m] = choose_compo(Ydecompose,0,0,10000,10000,kuthreshold1,kuthreshold2,vathreshold1,vathreshold2);
end
if get(handles.checkbox2_Multichannel,'Value')==1&&get(handles.checkbox3_Multichannel,'Value')==1&&get(handles.checkbox4_Multichannel,'Value')==1
    acthreshold1=str2num(get(handles.edit68_Multichannel,'string'));
    acthreshold2=str2num(get(handles.edit78_Multichannel,'string'));
    enthreshold1=str2num(get(handles.edit69_Multichannel,'string'));
    enthreshold2=str2num(get(handles.edit79_Multichannel,'string'));
    kuthreshold1=str2num(get(handles.edit70_Multichannel,'string'));
    kuthreshold2=str2num(get(handles.edit80_Multichannel,'string'));
    [Z_m,Y_m] = choose_compo(Ydecompose,acthreshold1,acthreshold2,enthreshold1,enthreshold2,kuthreshold1,kuthreshold2,10000,10000);
end
if get(handles.checkbox2_Multichannel,'Value')==1&&get(handles.checkbox3_Multichannel,'Value')==1&&get(handles.checkbox10_Multichannel,'Value')==1
    acthreshold1=str2num(get(handles.edit68_Multichannel,'string'));
    acthreshold2=str2num(get(handles.edit97_Multichannel,'string'));
    enthreshold1=str2num(get(handles.edit69_Multichannel,'string'));
    enthreshold2=str2num(get(handles.edit79_Multichannel,'string'));
    vathreshold1=str2num(get(handles.edit71_Multichannel,'string'));
    vathreshold2=str2num(get(handles.edit81_Multichannel,'string'));
    [Z_m,Y_m] = choose_compo(Ydecompose,acthreshold1,acthreshold2,enthreshold1,enthreshold2,10000,10000,vathreshold1,vathreshold2);
end
if get(handles.checkbox2_Multichannel,'Value')==1&&get(handles.checkbox4_Multichannel,'Value')==1&&get(handles.checkbox10_Multichannel,'Value')==1
    acthreshold1=str2num(get(handles.edit68_Multichannel,'string'));
    acthreshold2=str2num(get(handles.edit97_Multichannel,'string'));
    kuthreshold1=str2num(get(handles.edit70_Multichannel,'string'));
    kuthreshold2=str2num(get(handles.edit80_Multichannel,'string'));
    vathreshold1=str2num(get(handles.edit71_Multichannel,'string'));
    vathreshold2=str2num(get(handles.edit81_Multichannel,'string'));
    [Z_m,Y_m] = choose_compo(Ydecompose,acthreshold1,acthreshold2,10000,10000,kuthreshold1,kuthreshold2,vathreshold1,vathreshold2);
end
if get(handles.checkbox3_Multichannel,'Value')==1&&get(handles.checkbox4_Multichannel,'Value')==1&&get(handles.checkbox10_Multichannel,'Value')==1
    enthreshold1=str2num(get(handles.edit69_Multichannel,'string'));
    enthreshold2=str2num(get(handles.edit79_Multichannel,'string'));
    kuthreshold1=str2num(get(handles.edit70_Multichannel,'string'));
    kuthreshold2=str2num(get(handles.edit80_Multichannel,'string'));
    vathreshold1=str2num(get(handles.edit71_Multichannel,'string'));
    vathreshold2=str2num(get(handles.edit81_Multichannel,'string'));
    [Z_m,Y_m] = choose_compo(Ydecompose,0,0,enthreshold1,enthreshold1,kuthreshold1,kuthreshold2,vathreshold1,vathreshold2);
end
if get(handles.checkbox2_Multichannel,'Value')==1&&get(handles.checkbox3_Multichannel,'Value')==1&&get(handles.checkbox4_Multichannel,'Value')==1&&get(handles.checkbox10_Multichannel,'Value')==1
    acthreshold1=str2num(get(handles.edit68_Multichannel,'string'));
    acthreshold2=str2num(get(handles.edit97_Multichannel,'string'));
    enthreshold1=str2num(get(handles.edit69_Multichannel,'string'));
    enthreshold2=str2num(get(handles.edit79_Multichannel,'string'));
    kuthreshold1=str2num(get(handles.edit70_Multichannel,'string'));
    kuthreshold2=str2num(get(handles.edit80_Multichannel,'string'));
    vathreshold1=str2num(get(handles.edit71_Multichannel,'string'));
    vathreshold2=str2num(get(handles.edit81_Multichannel,'string'));
    [Z_m,Y_m] = choose_compo(Ydecompose,acthreshold1,acthreshold1,enthreshold1,enthreshold1,kuthreshold1,kuthreshold2,vathreshold1,vathreshold2);
end
        waitbar(1,h,'Completed');
        pause(1);
        delete(h);

% --- Executes on button press in pushbutton9_Multichannel.
function pushbutton9_Multichannel_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9_Multichannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Ydecompose;
global Z_m;
[filename ,pathname]=uiputfile({' Z_m','MAT-files(*.mat)'},'save');%pathname获取保存数据路径，filename获取保存数据名称
str=strcat(pathname,filename);%字符串连接
save(str, 'Z_m')%将数据a保存为mat文件；

% --- Executes on button press in pushbutton15_Multichannel.
function pushbutton15_Multichannel_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton15_Multichannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Yd;
global Z_m;
global Yrow;
Yd=Z_m;
[row,column]=size(Yd);
Yrow = [];
for i = 1:row
    Yrow(i,1) = i;
end
run ('decompose_Signal_Analysis.m');
% set(handles.tab_IMFs,'Visible','on');
% --- Executes on button press in pushbutton17_Multichannel.
function pushbutton17_Multichannel_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton17_Multichannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Youtput;
global Yd;
global Yrow_1;
Yd=Youtput;
[row,column]=size(Yd);
Yrow_1 = [];
for i = 1:row
    Yrow_1(i,1) = i;
end
set(handles.uipanel63,'visible','on');

% set(handles.tab_SignalAnalysis,'Visible','on')
function pushbutton6_Multichannel_Callback(hObject, eventdata, handles) 
global Youtput;
[filename ,pathname]=uiputfile({'*.mat','MAT-files(*.mat)'},'save');%pathname获取保存数据路径，filename获取保存数据名称
str=strcat(pathname,filename);%字符串连接
save(char(str),'Youtput');


% --- Executes on button press in pushbutton_exit_multi.
function pushbutton_exit_multi_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_exit_multi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.tab_Multichannel,'Visible','off');
set(handles.tag_Singlechannel,'Visible','off');
set(handles.tab_Fewchannel,'Visible','off');
set(handles.tab2,'Visible','on');


% --- Executes on button press in pushbutton95_Singlechannel.
function pushbutton95_Singlechannel_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton95_Singlechannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Yd;
global Youtput;
global Yrow_1;
 Yd=Youtput;
    [row,column]=size(Yd);
    Yrow_1 = [];
    for i = 1:row
        Yrow_1(i,1) = i;
    end
%         run ('Signal_Analysis.m');
set(handles.uipanel63,'visible','on');

% --- Executes during object creation, after setting all properties.
function text92_SC_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text92_SC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in pushbutton96.
function pushbutton96_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton96 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% run('Simulated_data.m');
set(handles.text26, 'string','Please input sample rate');
set(handles.text26, 'Visible','on');
 set(handles.dataname, 'string','Simulated Data');
 set(handles.uipanel62,'Visible','on');


% --- Executes on button press in pushbutton99.
function pushbutton99_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton99 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global EEGclean;
global EMG;
global existingdata;
global Datasizes;
global H;
global L;
Snr=str2num(get(handles.edit91,'string'));
 lambda = rms_matrix(EEGclean)/(Snr*rms_matrix(EMG));
existingdata= EEGclean + EMG*lambda;
[H,L]=size(existingdata);
 Datasize=whos('existingdata');
 Datasizes=getfield(Datasize,'bytes');
 Datasizes=Datasizes/1024/1024;
 set(handles.channelnumbers, 'string',H);
 set(handles.samplesnumber, 'string',L);
 set(handles.datasizes, 'string',Datasizes);
 set(handles.dataname, 'string','Simulated Data');
 set(handles.uipanel62,'Visible','off');



function edit91_Callback(hObject, eventdata, handles)
% hObject    handle to edit91 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit91 as text
%        str2double(get(hObject,'String')) returns contents of edit91 as a double


% --- Executes during object creation, after setting all properties.
function edit91_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit91 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit90_Callback(hObject, eventdata, handles)
% hObject    handle to edit90 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit90 as text
%        str2double(get(hObject,'String')) returns contents of edit90 as a double


% --- Executes during object creation, after setting all properties.
function edit90_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit90 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton98.
function pushbutton98_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton98 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[FileName,PathName] = uigetfile('*.mat','Select the file');
L=length(FileName);
if L<5         
    errordlg('Wrong File','File Open Error');
    return;
end
addpath(PathName);
global EMG;
EMG=get_variable_via_load(FileName);
set(handles.edit90, 'string',FileName);


function edit89_Callback(hObject, eventdata, handles)
% hObject    handle to edit89 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit89 as text
%        str2double(get(hObject,'String')) returns contents of edit89 as a double


% --- Executes during object creation, after setting all properties.
function edit89_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit89 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton97.
function pushbutton97_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton97 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[FileName,PathName] = uigetfile('*.mat','Select the file');
L=length(FileName);
if L<5         
    errordlg('Wrong File','File Open Error');
    return;
end
addpath(PathName);
global EEGclean;
EEGclean=get_variable_via_load(FileName);
set(handles.edit89, 'string',FileName);


% --- Executes on selection change in popupmenu20.
function popupmenu20_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global va;
global existingdata;
global H;
va=get(handles.popupmenu20 ,'value');
switch (va)
    case 2 %%%real data
        [FileName,PathName] = uigetfile('*.mat','Select the file');
        L=length(FileName);
if L<5         
    errordlg('Wrong File','File Open Error');
    return;
end
addpath(PathName);         
% file=FileName;
% load (file);

% file(end-3:end)=[];
%  existingdata=eval(file);
existingdata=get_variable_via_load(FileName);
set(handles.text2, 'string','Loaded EEG Data');
set(handles.text26, 'string','Please input sample rate');
set(handles.text26, 'Visible','on');
 [H,L]=size(existingdata);
 Datasize=whos('existingdata');
 Datasizes=getfield(Datasize,'bytes');
 Datasizes=Datasizes/1024/1024;
 set(handles.channelnumbers, 'string',H);
 set(handles.samplesnumber, 'string',L);
 set(handles.datasizes, 'string',Datasizes);
 set(handles.dataname, 'string',FileName);
    case 3 %%simulated data
  set(handles.text26, 'string','Please input sample rate');
set(handles.text26, 'Visible','on');
 set(handles.uipanel62,'Visible','on');
end
    
% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu20 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu20


% --- Executes during object creation, after setting all properties.
function popupmenu20_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in listbox10.
function listbox10_Callback(hObject, eventdata, handles)
% hObject    handle to listbox10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global fs;
global Yd;
global vd;
global existingdata;
global EEGclean; 
vd=get(handles. listbox10,'value');
if vd==1       
    return;
end
vd=vd-1;
  c=vd;
  [a,b]=size(c);
 va=get(handles.popupmenu20 ,'value');
switch va
    case 2
 axes(handles.axes13);

if get(handles.radiobutton1,'Value')==1
    cla reset;
  multichannelplot_normal_chen2(existingdata(vd,:),fs);
   set(handles.edit96,'visible','off');
  set(handles.edit95,'visible','off');
  set(handles.text99,'visible','off');
   set(handles.text100,'visible','off');
   set(handles.text101,'visible','off');
   set(handles.edit106,'visible','on');
   set(handles.edit107,'visible','on');
   set(handles.edit108,'visible','on');
   set(handles.edit109,'visible','on');
   set(handles.text107,'visible','on');
   set(handles.text108,'visible','on');
   set(handles.text109,'visible','on');
   set(handles.text110,'visible','on');
   [numOfcompo ,T] = size(existingdata);
 existingdata=real(existingdata);
 for i=1:numOfcompo
    
        entro(i,:) = Renyi(existingdata(i,:),20,2) ;
 end
 if numOfcompo==1
 else
entro =zscore(entro );
 end
for i=1:numOfcompo
        kurto(i,:)= kurtosis(existingdata(i,:)) - 3*(std(existingdata(i,:)))^2;
end
 if numOfcompo==1
 else
kurto=zscore(kurto); 
 end
for i=1:numOfcompo
        variances(i,:)= var(existingdata(i,:));
end  
 if numOfcompo==1
 else
variances = zscore(variances);
 end
  if a==1&&b==1
 Y_autocorrelation=autocorr(existingdata(vd,:));
  Y_autocorr=abs(Y_autocorrelation);
  Y_autocorr=Y_autocorr(1,2);
  Y_entropy=abs(entro(vd,:));
  Y_kurto=abs(kurto(vd,:));
  Y_variances=variances(vd,:);
  set(handles.edit106,'string',num2str(Y_autocorr));
  set(handles.edit107,'string',num2str(Y_entropy));
  set(handles.edit108,'string',num2str(Y_kurto));
  set(handles.edit109,'string',num2str(Y_variances));
  else
        set(handles.edit106,'string','');
  set(handles.edit107,'string','');
  set(handles.edit108,'string','');
  set(handles.edit109,'string','');
  end
end
if get(handles.radiobutton2,'Value')==1  %%%reconstrusted data
  cla reset;
  multichannelplot_normal_chen1(Yd(vd,:),fs);
     set(handles.edit96,'visible','off');
  set(handles.edit95,'visible','off');
  set(handles.text99,'visible','off');
   set(handles.text100,'visible','off');
   set(handles.text101,'visible','off');
   set(handles.edit106,'visible','on');
   set(handles.edit107,'visible','on');
   set(handles.edit108,'visible','on');
   set(handles.edit109,'visible','on');
   set(handles.text107,'visible','on');
   set(handles.text108,'visible','on');
   set(handles.text109,'visible','on');
   set(handles.text110,'visible','on');
   [numOfcompo ,T] = size(Yd);
 Yd=real(Yd);
 for i=1:numOfcompo
    
        entro(i,:) = Renyi(Yd(i,:),20,2) ;
 end
 if numOfcompo==1
 else
entro =zscore(entro );
 end
for i=1:numOfcompo
        kurto(i,:)= kurtosis(Yd(i,:)) - 3*(std(Yd(i,:)))^2;
end
 if numOfcompo==1
 else
kurto=zscore(kurto); 
 end
for i=1:numOfcompo
        variances(i,:)= var(Yd(i,:));
end  
 if numOfcompo==1
 else
variances = zscore(variances);
 end
 if a==1&&b==1
 Y_autocorrelation=autocorr(Yd(vd,:));
  Y_autocorr=abs(Y_autocorrelation);
  Y_autocorr=Y_autocorr(1,2);
  Y_entropy=abs(entro(vd,:));
  Y_kurto=abs(kurto(vd,:));
  Y_variances=variances(vd,:);
 set(handles.edit106,'string',num2str(Y_autocorr));
  set(handles.edit107,'string',num2str(Y_entropy));
  set(handles.edit108,'string',num2str(Y_kurto));
  set(handles.edit109,'string',num2str(Y_variances));
 else
  set(handles.edit106,'string','');
  set(handles.edit107,'string','');
  set(handles.edit108,'string','');
  set(handles.edit109,'string','');
 end
end
  if get(handles.radiobutton1,'Value')==1&&get(handles.radiobutton2,'Value')==1
    cla reset;
  multichannelplot_compare_chen(existingdata(vd,:),Yd(vd,:),fs);
   set(handles.edit96,'visible','off');
  set(handles.edit95,'visible','off');
  set(handles.text99,'visible','off');
   set(handles.text100,'visible','off');
   set(handles.text101,'visible','off');
      set(handles.edit106,'visible','off');
   set(handles.edit107,'visible','off');
   set(handles.edit108,'visible','off');
   set(handles.edit109,'visible','off');
   set(handles.text107,'visible','off');
   set(handles.text108,'visible','off');
   set(handles.text109,'visible','off');
   set(handles.text110,'visible','off');

  end

 case 3
      axes(handles.axes13);
      if get(handles.radiobutton1,'Value')==1
    set(handles.edit96,'visible','off');
  set(handles.edit95,'visible','off');
  set(handles.text99,'visible','off');
   set(handles.text100,'visible','off');
   set(handles.text101,'visible','off');
   set(handles.edit106,'visible','on');
   set(handles.edit107,'visible','on');
   set(handles.edit108,'visible','on');
   set(handles.edit109,'visible','on');
   set(handles.text107,'visible','on');
   set(handles.text108,'visible','on');
   set(handles.text109,'visible','on');
   set(handles.text110,'visible','on');
    cla reset;
  multichannelplot_normal_chen2(existingdata(vd,:),fs);
  [numOfcompo ,T] = size(existingdata);
 existingdata=real(existingdata);
 for i=1:numOfcompo
    
        entro(i,:) = Renyi(existingdata(i,:),20,2) ;
 end
 if numOfcompo==1
 else
entro =zscore(entro );
 end
for i=1:numOfcompo
        kurto(i,:)= kurtosis(existingdata(i,:)) - 3*(std(existingdata(i,:)))^2;
end
 if numOfcompo==1
 else
kurto=zscore(kurto); 
 end
for i=1:numOfcompo
        variances(i,:)= var(existingdata(i,:));
end  
 if numOfcompo==1
 else
variances = zscore(variances);
 end
 if a==1&b==1
 Y_autocorrelation=autocorr(existingdata(vd,:));
  Y_autocorr=abs(Y_autocorrelation);
  Y_autocorr=Y_autocorr(1,2);
  Y_entropy=abs(entro(vd,:));
  Y_kurto=abs(kurto(vd,:));
  Y_variances=variances(vd,:);
  set(handles.edit106,'string',num2str(Y_autocorr));
  set(handles.edit107,'string',num2str(Y_entropy));
  set(handles.edit108,'string',num2str(Y_kurto));
  set(handles.edit109,'string',num2str(Y_variances));
 else
       set(handles.edit106,'string','');
  set(handles.edit107,'string','');
  set(handles.edit108,'string','');
  set(handles.edit109,'string','');
 end
end

if get(handles.radiobutton2,'Value')==1  %%%reconstrusted data
    cla reset;
  multichannelplot_normal_chen1(Yd(vd,:),fs);
     set(handles.edit96,'visible','on');
  set(handles.edit95,'visible','on');
  set(handles.text99,'visible','on');
   set(handles.text100,'visible','on');
   set(handles.text101,'visible','on');
   set(handles.edit106,'visible','off');
   set(handles.edit107,'visible','off');
   set(handles.edit108,'visible','off');
   set(handles.edit109,'visible','off');
   set(handles.text107,'visible','off');
   set(handles.text108,'visible','off');
   set(handles.text109,'visible','off');
   set(handles.text110,'visible','off');
   RRMSE = rms_matrix(Yd-EEGclean)/rms_matrix(Yd);
CC= mean(diag(corr(Yd',EEGclean')));  
 set(handles.edit96,'string',num2str(CC));
  set(handles.edit95,'string',num2str(RRMSE));
end
if get(handles.radiobutton1,'Value')==1&&get(handles.radiobutton2,'Value')==1
    cla reset;
  multichannelplot_compare_chen_2(existingdata(vd,:),Yd(vd,:),fs);
 set(handles.edit96,'visible','off');
  set(handles.edit95,'visible','off');
  set(handles.text99,'visible','off');
   set(handles.text100,'visible','off');
   set(handles.text101,'visible','off');
      set(handles.edit106,'visible','off');
   set(handles.edit107,'visible','off');
   set(handles.edit108,'visible','off');
   set(handles.edit109,'visible','off');
   set(handles.text107,'visible','off');
   set(handles.text108,'visible','off');
   set(handles.text109,'visible','off');
   set(handles.text110,'visible','off');
end
end

% Hints: contents = cellstr(get(hObject,'String')) returns listbox10 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox10


% --- Executes during object creation, after setting all properties.
function listbox10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton100.
function pushbutton100_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton100 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Yrow_1;
global existingdata;
if get(handles.radiobutton1,'Value')==1
[r,c]=size(existingdata);
row = [];
for i = 1:r
    row(i,1) = i;
end
set(handles.listbox10,'string',{'Index of Channel',num2str(row)});
   va=get(handles.popupmenu20 ,'value');
switch (va)
    case 2   %%real data
        set(handles.text99,'visible','off');
        set(handles.text100,'visible','off');
        set(handles.text101,'visible','off');
        set(handles.edit95,'visible','off');
        set(handles.edit96,'visible','off');
        set(handles.edit106,'visible','off');
        set(handles.edit107,'visible','off');
        set(handles.edit108,'visible','off');
        set(handles.edit109,'visible','off');
        set(handles.text107,'visible','off');
        set(handles.text108,'visible','off');
        set(handles.text109,'visible','off');
        set(handles.text110,'visible','off');
    case 3   %%simulated data
        set(handles.text99,'visible','off');
        set(handles.text100,'visible','off');
        set(handles.text101,'visible','off');
        set(handles.edit95,'visible','off');
        set(handles.edit96,'visible','off'); 
        set(handles.edit106,'visible','off');
        set(handles.edit107,'visible','off');
        set(handles.edit108,'visible','off');
        set(handles.edit109,'visible','off');
         set(handles.text107,'visible','off');
        set(handles.text108,'visible','off');
        set(handles.text109,'visible','off');
        set(handles.text110,'visible','off');
end
end
if get(handles.radiobutton2,'Value')==1
 axes(handles.axes13);
cla reset;
set(handles.listbox10,'string',{'Index of Channel',num2str(Yrow_1)});
va=get(handles.popupmenu20 ,'value');
switch (va)
    case 2   %%real data
        set(handles.text99,'visible','off');
        set(handles.text100,'visible','off');
        set(handles.text101,'visible','off');
        set(handles.edit95,'visible','off');
        set(handles.edit96,'visible','off');
         set(handles.edit106,'visible','on');
        set(handles.edit107,'visible','on');
        set(handles.edit108,'visible','on');
        set(handles.edit109,'visible','on');
         set(handles.text107,'visible','on');
        set(handles.text108,'visible','on');
        set(handles.text109,'visible','on');
        set(handles.text110,'visible','on');
        
    case 3   %%simulated data
        set(handles.text99,'visible','on');
        set(handles.text100,'visible','on');
        set(handles.text101,'visible','on');
        set(handles.edit95,'visible','on');
        set(handles.edit96,'visible','on'); 
         set(handles.edit106,'visible','off');
        set(handles.edit107,'visible','off');
        set(handles.edit108,'visible','off');
        set(handles.edit109,'visible','off');
         set(handles.text107,'visible','off');
        set(handles.text108,'visible','off');
        set(handles.text109,'visible','off');
        set(handles.text110,'visible','off');
end  
end
if get(handles.radiobutton2,'Value')==1&&get(handles.radiobutton1,'Value')==1
   set(handles.listbox10,'string',{'Index of Channel',num2str(Yrow_1)});
   va=get(handles.popupmenu20 ,'value');
switch (va)
    case 2   %%real data
        set(handles.text99,'visible','off');
        set(handles.text100,'visible','off');
        set(handles.text101,'visible','off');
        set(handles.edit95,'visible','off');
        set(handles.edit96,'visible','off');
         set(handles.edit106,'visible','off');
        set(handles.edit107,'visible','off');
        set(handles.edit108,'visible','off');
        set(handles.edit109,'visible','off');
         set(handles.text107,'visible','off');
        set(handles.text108,'visible','off');
        set(handles.text109,'visible','off');
        set(handles.text110,'visible','off');
    case 3   %%simulated data
        set(handles.text99,'visible','off');
        set(handles.text100,'visible','off');
        set(handles.text101,'visible','off');
        set(handles.edit95,'visible','off');
        set(handles.edit96,'visible','off');
         set(handles.edit106,'visible','off');
        set(handles.edit107,'visible','off');
        set(handles.edit108,'visible','off');
        set(handles.edit109,'visible','off');
         set(handles.text107,'visible','off');
        set(handles.text108,'visible','off');
        set(handles.text109,'visible','off');
        set(handles.text110,'visible','off');
end
end


% --- Executes on button press in pushbutton101.
function pushbutton101_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton101 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global vd;
vd=vd-1;
global Yd;
[filename ,pathname]=uiputfile({' Yd','MAT-files(*.mat)'},'save');%pathname获取保存数据路径，filename获取保存数据名称
str=strcat(pathname,filename);%字符串连接
Yd=Yd(vd,:);
save(str, 'Yd')

% --- Executes on button press in pushbutton102.
function pushbutton102_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton102 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.listbox10,'string','','value',1);
set(handles.uipanel63,'visible','off');
set(handles.edit96,'string','');
  set(handles.edit95,'string','');
axes(handles.axes13);
cla reset;

% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton1


% --- Executes on button press in radiobutton2.
function radiobutton2_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton2



function edit92_Callback(hObject, eventdata, handles)
% hObject    handle to edit92 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit92 as text
%        str2double(get(hObject,'String')) returns contents of edit92 as a double


% --- Executes during object creation, after setting all properties.
function edit92_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit92 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit93_Callback(hObject, eventdata, handles)
% hObject    handle to edit93 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit93 as text
%        str2double(get(hObject,'String')) returns contents of edit93 as a double


% --- Executes during object creation, after setting all properties.
function edit93_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit93 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit94_Callback(hObject, eventdata, handles)
% hObject    handle to edit94 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit94 as text
%        str2double(get(hObject,'String')) returns contents of edit94 as a double


% --- Executes during object creation, after setting all properties.
function edit94_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit94 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit95_Callback(hObject, eventdata, handles)
% hObject    handle to edit95 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit95 as text
%        str2double(get(hObject,'String')) returns contents of edit95 as a double


% --- Executes during object creation, after setting all properties.
function edit95_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit95 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit96_Callback(hObject, eventdata, handles)
% hObject    handle to edit96 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit96 as text
%        str2double(get(hObject,'String')) returns contents of edit96 as a double


% --- Executes during object creation, after setting all properties.
function edit96_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit96 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over pushbutton100.
function pushbutton100_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to pushbutton100 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton103.
function pushbutton103_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton103 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.uipanel62,'visible','off');


% --- Executes on button press in checkbox7_SC.
function checkbox7_SC_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox7_SC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox7_SC



function edit43_SC_Callback(hObject, eventdata, handles)
% hObject    handle to edit43_SC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit43_SC as text
%        str2double(get(hObject,'String')) returns contents of edit43_SC as a double


% --- Executes during object creation, after setting all properties.
function edit43_SC_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit43_SC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit81_Multichannel_Callback(hObject, eventdata, handles)
% hObject    handle to edit81_Multichannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit81_Multichannel as text
%        str2double(get(hObject,'String')) returns contents of edit81_Multichannel as a double


% --- Executes during object creation, after setting all properties.
function edit81_Multichannel_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit81_Multichannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit71_Multichannel_Callback(hObject, eventdata, handles)
% hObject    handle to edit71_Multichannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit71_Multichannel as text
%        str2double(get(hObject,'String')) returns contents of edit71_Multichannel as a double


% --- Executes during object creation, after setting all properties.
function edit71_Multichannel_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit71_Multichannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in checkbox8_Multichannel.
function checkbox8_Multichannel_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox8_Multichannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox8_Multichannel



function edit87_Multichannel_Callback(hObject, eventdata, handles)
% hObject    handle to edit87_Multichannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit87_Multichannel as text
%        str2double(get(hObject,'String')) returns contents of edit87_Multichannel as a double


% --- Executes during object creation, after setting all properties.
function edit87_Multichannel_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit87_Multichannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in checkbox4_Fewchannel.
function checkbox4_Fewchannel_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox4_Fewchannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox4_Fewchannel



function edit21_Fewchannel_Callback(hObject, eventdata, handles)
% hObject    handle to edit21_Fewchannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit21_Fewchannel as text
%        str2double(get(hObject,'String')) returns contents of edit21_Fewchannel as a double


% --- Executes during object creation, after setting all properties.
function edit21_Fewchannel_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit21_Fewchannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit22_Fewchannel_Callback(hObject, eventdata, handles)
% hObject    handle to edit22_Fewchannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit22_Fewchannel as text
%        str2double(get(hObject,'String')) returns contents of edit22_Fewchannel as a double


% --- Executes during object creation, after setting all properties.
function edit22_Fewchannel_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit22_Fewchannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit36_SC_Callback(hObject, eventdata, handles)
% hObject    handle to edit36_SC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit36_SC as text
%        str2double(get(hObject,'String')) returns contents of edit36_SC as a double


% --- Executes during object creation, after setting all properties.
function edit36_SC_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit36_SC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function edit97_Multichannel_Callback(hObject, eventdata, handles)
% hObject    handle to edit97_Multichannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit97_Multichannel as text
%        str2double(get(hObject,'String')) returns contents of edit97_Multichannel as a double


% --- Executes during object creation, after setting all properties.
function edit97_Multichannel_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit97_Multichannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function checkbox9_Multichannel_CreateFcn(hObject, eventdata, handles)
% hObject    handle to checkbox9_Multichannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function checkbox10_Multichannel_CreateFcn(hObject, eventdata, handles)
% hObject    handle to checkbox10_Multichannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

    
    
function checkbox10_Multichannel_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox10_Multichannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of checkbox10_Multichannel as text
%        str2double(get(hObject,'String')) returns contents of checkbox10_Multichannel as a double
function edit120_Multichannel_Callback(hObject, eventdata, handles)
% hObject    handle to edit120_Multichannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit120_Multichannel as text
%        str2double(get(hObject,'String')) returns contents of edit120_Multichannel as a double


% --- Executes during object creation, after setting all properties.
function edit120_Multichannel_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit120_Multichannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
% --- Executes during object creation, after setting all properties.


function checkbox6_Multichannel_CreateFcn(hObject, eventdata, handles)
% hObject    handle to checkbox6_Multichannel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called



function edit106_Callback(hObject, eventdata, handles)
% hObject    handle to edit106 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit106 as text
%        str2double(get(hObject,'String')) returns contents of edit106 as a double


% --- Executes during object creation, after setting all properties.
function edit106_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit106 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit107_Callback(hObject, eventdata, handles)
% hObject    handle to edit107 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit107 as text
%        str2double(get(hObject,'String')) returns contents of edit107 as a double


% --- Executes during object creation, after setting all properties.
function edit107_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit107 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit108_Callback(hObject, eventdata, handles)
% hObject    handle to edit108 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit108 as text
%        str2double(get(hObject,'String')) returns contents of edit108 as a double


% --- Executes during object creation, after setting all properties.
function edit108_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit108 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit109_Callback(hObject, eventdata, handles)
% hObject    handle to edit109 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit109 as text
%        str2double(get(hObject,'String')) returns contents of edit109 as a double


% --- Executes during object creation, after setting all properties.
function edit109_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit109 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
