function varargout = ECE131Project(varargin)
% ECE131PROJECT MATLAB code for ECE131Project.fig
%      ECE131PROJECT, by itself, creates a new ECE131PROJECT or raises the existing
%      singleton*.
%
%      H = ECE131PROJECT returns the handle to a new ECE131PROJECT or the handle to
%      the existing singleton*.
%
%      ECE131PROJECT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ECE131PROJECT.M with the given input arguments.
%
%      ECE131PROJECT('Property','Value',...) creates a new ECE131PROJECT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ECE131Project_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ECE131Project_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ECE131Project

% Last Modified by GUIDE v2.5 24-Jul-2020 13:29:51

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ECE131Project_OpeningFcn, ...
                   'gui_OutputFcn',  @ECE131Project_OutputFcn, ...
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


% --- Executes just before ECE131Project is made visible.
function ECE131Project_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ECE131Project (see VARARGIN)

% Choose default command line output for ECE131Project
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ECE131Project wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = ECE131Project_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
appdata = get(0,'ApplicationData');
fns = fieldnames(appdata);
for ii = 1:numel(fns)
  rmappdata(0,fns{ii});
end
appdata = get(0,'ApplicationData'); %make sure it's gone
% Cs = getappdata(0, 'csfunction');
% clear Cs;
% clear all %add this to clear memory after exiting
% clc

function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function tfinal_Callback(hObject, eventdata, handles)
% hObject    handle to tfinal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
tfinal = str2double(get(handles.tfinal, 'String'));
display(tfinal)
setappdata(0, 'tfinal_1', tfinal)
% Hints: get(hObject,'String') returns contents of tfinal as text
%        str2double(get(hObject,'String')) returns contents of tfinal as a double


% --- Executes during object creation, after setting all properties.
function tfinal_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tfinal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function rsnum_Callback(hObject, eventdata, handles)
% hObject    handle to rsnum (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% rsnum = get(handles.rsnum, 'String')
rsnumerator = str2num(get(handles.rsnum, 'String'));
display(rsnumerator)
setappdata(0, 'rsnum_1', rsnumerator)
% Hints: get(hObject,'String') returns contents of rsnum as text
%        str2double(get(hObject,'String')) returns contents of rsnum as a double


% --- Executes during object creation, after setting all properties.
function rsnum_CreateFcn(hObject, eventdata, handles)
% hObject    handle to rsnum (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function rsdenom_Callback(hObject, eventdata, handles)
% hObject    handle to rsdenom (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% rsdenominator = 1;
rsdenominator = str2num(get(handles.rsdenom, 'String'));
display(rsdenominator)
setappdata(0, 'rsdenom_1', rsdenominator)
% Hints: get(hObject,'String') returns contents of rsdenom as text
%        str2double(get(hObject,'String')) returns contents of rsdenom as a double


% --- Executes during object creation, after setting all properties.
function rsdenom_CreateFcn(hObject, eventdata, handles)
% hObject    handle to rsdenom (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function gsnum_Callback(hObject, eventdata, handles)
% hObject    handle to gsnum (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

gsnumerator = str2num(get(handles.gsnum, 'String'));
display(gsnumerator)
setappdata(0, 'gsnum_1', gsnumerator)
% Hints: get(hObject,'String') returns contents of gsnum as text
%        str2double(get(hObject,'String')) returns contents of gsnum as a double


% --- Executes during object creation, after setting all properties.
function gsnum_CreateFcn(hObject, eventdata, handles)
% hObject    handle to gsnum (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function gsdenom_Callback(hObject, eventdata, handles)
% hObject    handle to gsdenom (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
gsdenominator = str2num(get(handles.gsdenom, 'String'));
display(gsdenominator)
setappdata(0, 'gsdenom_1', gsdenominator)
% Hints: get(hObject,'String') returns contents of gsdenom as text
%        str2double(get(hObject,'String')) returns contents of gsdenom as a double


% --- Executes during object creation, after setting all properties.
function gsdenom_CreateFcn(hObject, eventdata, handles)
% hObject    handle to gsdenom (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in calculate.
function calculate_Callback(hObject, eventdata, handles)
% hObject    handle to calculate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

x1 = getappdata(0, 'gsnum_1');
y1 = getappdata(0, 'gsdenom_1');
Gs = tf(x1,y1);
display(Gs)
x2 = getappdata(0, 'rsnum_1');
y2 = getappdata(0, 'rsdenom_1');
Rs = tf(x2, y2);
display(Rs)
Cs = Gs*Rs;
display(Cs)
setappdata(0, 'gsfunction', Gs)
setappdata(0, 'csfunction', Cs)
% getappdata(0, 'Gs');
% [num, denom] = tfdata(Cs, 'v')
% axes(handles.ctaxes);
% syms s t                                                    % Invoke Symbolic Math Toolbox
% gsnum1 = poly2sym(num, s);                                    % Symbolic Numerator Polynomial
% gsden1 = poly2sym(denom, s);
% ct = ilaplace(gsnum1/gsden1);
% display(ct)
% setappdata(0, 'ctfunction', ct)
% [nume, deno] = tfdata(Cs, 'v')
% ltiview(Gs);
% setappdata(0, 'ctfunction', ct);

% --- Executes on button press in clear.
function clear_Callback(hObject, eventdata, handles)
% hObject    handle to clear (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.plotting);
cla(handles.plotting, 'reset');
set(handles.plotting, 'visible', 'on');


function edit9_Callback(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit9 as text
%        str2double(get(hObject,'String')) returns contents of edit9 as a double


% --- Executes during object creation, after setting all properties.
function edit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function ctoutput_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ctoutput (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in step.
function step_Callback(hObject, eventdata, handles)
% hObject    handle to step (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

axes(handles.plotting);
Cs = getappdata(0, 'csfunction');
tf = getappdata(0, 'tfinal_1');
h = stepplot(Cs,'red',tf);
grid on;
h.showCharacteristic('PeakResponse');
h.showCharacteristic('RiseTime');
h.showCharacteristic('SettlingTime');
h.showCharacteristic('SteadyState');
Infos = stepinfo(Cs);
rt = num2str(Infos.RiseTime);
st = num2str(Infos.SettlingTime);
os = num2str(Infos.Overshoot);
pk = num2str(Infos.Peak);
pkt = num2str(Infos.PeakTime);
set(handles.rise,'String', rt);
set(handles.settling,'String', st);
set(handles.overshoot,'String', os);
set(handles.peak,'String', pk);
set(handles.tconstant,'String', pkt);
% syms t
% t = getappdata(0, 'tfinal_1');
% ct = getappdata(0, 'ctfunction');
% plot(t, ct);
% tf = getappdata(0, 'tfinal_1');
% Gs = getappdata(0, 'gsfunction');
% % Info = stepinfo(Cs,'RiseTime',[])
% % setappdata(0, 'RiseTimeLimits', Cs)
% % Hint: get(hObject,'Value') returns toggle state of step
% rtx = num2str(getappdata(0, 'risetime'));




% --- Executes on button press in impulse.
function impulse_Callback(hObject, eventdata, handles)
% hObject    handle to impulse (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.plotting);
% Gs = getappdata(0, 'gsfunction')
Cs = getappdata(0, 'csfunction');
tf = getappdata(0, 'tfinal_1');
i = impulseplot(Cs,'red', tf);
grid on;
i.showCharacteristic('PeakResponse');
i.showCharacteristic('SettlingTime');
% impulseinfo(Cs);
% set(handles.rise,'String', rt);
% set(handles.settling,'String', st);
% set(handles.overshoot,'String', os);
% set(handles.peak,'String', pk);
% set(handles.tconstant,'String', pkt);
% Hint: get(hObject,'Value') returns toggle state of impulse


% --- Executes on button press in pzmap.
function pzmap_Callback(hObject, eventdata, handles)
% hObject    handle to pzmap (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.plotting);
Cs = getappdata(0, 'csfunction');
pzmap(Cs, 'red');
grid on;
% Gs = getappdata(0, 'gsfunction');
% Hint: get(hObject,'Value') returns toggle state of pzmap

% --- Executes on button press in plot.
function plot_Callback(hObject, eventdata, handles)
% hObject    handle to plot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
