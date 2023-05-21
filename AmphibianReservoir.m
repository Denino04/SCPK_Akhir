function varargout = AmphibianReservoir(varargin)
% AMPHIBIANRESERVOIR MATLAB code for AmphibianReservoir.fig
%      AMPHIBIANRESERVOIR, by itself, creates a new AMPHIBIANRESERVOIR or raises the existing
%      singleton*.
%
%      H = AMPHIBIANRESERVOIR returns the handle to a new AMPHIBIANRESERVOIR or the handle to
%      the existing singleton*.
%
%      AMPHIBIANRESERVOIR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in AMPHIBIANRESERVOIR.M with the given input arguments.
%
%      AMPHIBIANRESERVOIR('Property','Value',...) creates a new AMPHIBIANRESERVOIR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before AmphibianReservoir_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to AmphibianReservoir_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help AmphibianReservoir

% Last Modified by GUIDE v2.5 18-May-2023 16:00:26

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @AmphibianReservoir_OpeningFcn, ...
                   'gui_OutputFcn',  @AmphibianReservoir_OutputFcn, ...
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


% --- Executes just before AmphibianReservoir is made visible.
function AmphibianReservoir_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to AmphibianReservoir (see VARARGIN)

% Choose default command line output for AmphibianReservoir
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes AmphibianReservoir wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = AmphibianReservoir_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in showdata.
function showdata_Callback(hObject, eventdata, handles)
% hObject    handle to showdata (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of showdata
opts = detectImportOptions('kolamamfibi.xlsx');
opts.SelectedVariableNames = (3:16);
data = readmatrix ('kolamamfibi.xlsx', opts);
set(handles.data, 'Data', data);


% --- Executes on button press in resetdata.
function resetdata_Callback(hObject, eventdata, handles)
% hObject    handle to resetdata (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of resetdata
set(handles.data, 'Data', {});



function SUR3_Callback(hObject, eventdata, handles)
% hObject    handle to SUR3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SUR3 as text
%        str2double(get(hObject,'String')) returns contents of SUR3 as a double


% --- Executes during object creation, after setting all properties.
function SUR3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SUR3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function SUR2_Callback(hObject, eventdata, handles)
% hObject    handle to SUR2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SUR2 as text
%        str2double(get(hObject,'String')) returns contents of SUR2 as a double


% --- Executes during object creation, after setting all properties.
function SUR2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SUR2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function SUR1_Callback(hObject, eventdata, handles)
% hObject    handle to SUR1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SUR1 as text
%        str2double(get(hObject,'String')) returns contents of SUR1 as a double


% --- Executes during object creation, after setting all properties.
function SUR1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SUR1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function VR_Callback(hObject, eventdata, handles)
% hObject    handle to VR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of VR as text
%        str2double(get(hObject,'String')) returns contents of VR as a double


% --- Executes during object creation, after setting all properties.
function VR_CreateFcn(hObject, eventdata, handles)
% hObject    handle to VR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function TR_Callback(hObject, eventdata, handles)
% hObject    handle to TR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of TR as text
%        str2double(get(hObject,'String')) returns contents of TR as a double


% --- Executes during object creation, after setting all properties.
function TR_CreateFcn(hObject, eventdata, handles)
% hObject    handle to TR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function NR_Callback(hObject, eventdata, handles)
% hObject    handle to NR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of NR as text
%        str2double(get(hObject,'String')) returns contents of NR as a double


% --- Executes during object creation, after setting all properties.
function NR_CreateFcn(hObject, eventdata, handles)
% hObject    handle to NR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function SR_Callback(hObject, eventdata, handles)
% hObject    handle to SR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SR as text
%        str2double(get(hObject,'String')) returns contents of SR as a double


% --- Executes during object creation, after setting all properties.
function SR_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function CR_Callback(hObject, eventdata, handles)
% hObject    handle to CR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of CR as text
%        str2double(get(hObject,'String')) returns contents of CR as a double


% --- Executes during object creation, after setting all properties.
function CR_CreateFcn(hObject, eventdata, handles)
% hObject    handle to CR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function MR_Callback(hObject, eventdata, handles)
% hObject    handle to MR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of MR as text
%        str2double(get(hObject,'String')) returns contents of MR as a double


% --- Executes during object creation, after setting all properties.
function MR_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function BR_Callback(hObject, eventdata, handles)
% hObject    handle to BR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of BR as text
%        str2double(get(hObject,'String')) returns contents of BR as a double


% --- Executes during object creation, after setting all properties.
function BR_CreateFcn(hObject, eventdata, handles)
% hObject    handle to BR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function RR_Callback(hObject, eventdata, handles)
% hObject    handle to RR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of RR as text
%        str2double(get(hObject,'String')) returns contents of RR as a double


% --- Executes during object creation, after setting all properties.
function RR_CreateFcn(hObject, eventdata, handles)
% hObject    handle to RR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function OR_Callback(hObject, eventdata, handles)
% hObject    handle to OR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of OR as text
%        str2double(get(hObject,'String')) returns contents of OR as a double


% --- Executes during object creation, after setting all properties.
function OR_CreateFcn(hObject, eventdata, handles)
% hObject    handle to OR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function FR_Callback(hObject, eventdata, handles)
% hObject    handle to FR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of FR as text
%        str2double(get(hObject,'String')) returns contents of FR as a double


% --- Executes during object creation, after setting all properties.
function FR_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function UR_Callback(hObject, eventdata, handles)
% hObject    handle to UR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of UR as text
%        str2double(get(hObject,'String')) returns contents of UR as a double


% --- Executes during object creation, after setting all properties.
function UR_CreateFcn(hObject, eventdata, handles)
% hObject    handle to UR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function K_Callback(hObject, eventdata, handles)
% hObject    handle to K (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of K as text
%        str2double(get(hObject,'String')) returns contents of K as a double


% --- Executes during object creation, after setting all properties.
function K_CreateFcn(hObject, eventdata, handles)
% hObject    handle to K (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in classify.
function classify_Callback(hObject, eventdata, handles)
% hObject    handle to classify (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hint: get(hObject,'Value') returns toggle state of classify
SR = str2double(get(handles.SR, 'String'));
NR = str2double(get(handles.NR, 'String'));
TR = str2double(get(handles.TR, 'String'));
VR = str2double(get(handles.VR, 'String'));
SUR1 = str2double(get(handles.SUR1, 'String'));
SUR2 = str2double(get(handles.SUR2, 'String'));
SUR3 = str2double(get(handles.SUR3, 'String'));
UR = str2double(get(handles.UR, 'String'));
FR = str2double(get(handles.FR, 'String'));
OR = str2double(get(handles.OR, 'String'));
RR = str2double(get(handles.RR, 'String'));
BR = str2double(get(handles.BR, 'String'));
MR = str2double(get(handles.MR, 'String'));
CR = str2double(get(handles.CR, 'String'));
K = str2double(get(handles.K, 'String'));

sample = [SR NR TR VR SUR1 SUR2 SUR3 UR FR OR RR BR MR CR];

opts = detectImportOptions('kolamamfibi.xlsx');
opts.SelectedVariableNames = (3:16);
training = readmatrix ('kolamamfibi.xlsx', opts);

opts = detectImportOptions('kolamamfibi.xlsx');
opts.SelectedVariableNames = (17);
group1 = readmatrix ('kolamamfibi.xlsx', opts);

opts = detectImportOptions('kolamamfibi.xlsx');
opts.SelectedVariableNames = (18);
group2 = readmatrix ('kolamamfibi.xlsx', opts);

opts = detectImportOptions('kolamamfibi.xlsx');
opts.SelectedVariableNames = (19);
group3 = readmatrix ('kolamamfibi.xlsx', opts);

opts = detectImportOptions('kolamamfibi.xlsx');
opts.SelectedVariableNames = (20);
group4 = readmatrix ('kolamamfibi.xlsx', opts);

opts = detectImportOptions('kolamamfibi.xlsx');
opts.SelectedVariableNames = (21);
group5 = readmatrix ('kolamamfibi.xlsx', opts);

opts = detectImportOptions('kolamamfibi.xlsx');
opts.SelectedVariableNames = (22);
group6 = readmatrix ('kolamamfibi.xlsx', opts);

opts = detectImportOptions('kolamamfibi.xlsx');
opts.SelectedVariableNames = (23);
group7 = readmatrix ('kolamamfibi.xlsx', opts);

class1 = fitcknn (training, group1, 'NumNeighbors', K);
class2 = fitcknn (training, group2, 'NumNeighbors', K);
class3 = fitcknn (training, group3, 'NumNeighbors', K);
class4 = fitcknn (training, group4, 'NumNeighbors', K);
class5 = fitcknn (training, group5, 'NumNeighbors', K);
class6 = fitcknn (training, group6, 'NumNeighbors', K);
class7 = fitcknn (training, group7, 'NumNeighbors', K);

Klasifikasi1 = predict(class1, sample);
Klasifikasi2 = predict(class2, sample);
Klasifikasi3 = predict(class3, sample);
Klasifikasi4 = predict(class4, sample);
Klasifikasi5 = predict(class5, sample);
Klasifikasi6 = predict(class6, sample);
Klasifikasi7 = predict(class7, sample);

if(Klasifikasi1 == 1)
    set(handles.GF, 'String', "Ada");
else
    set(handles.GF, 'String', "Tidak Ada");
end
if(Klasifikasi2 == 1)
    set(handles.BF, 'String', "Ada");
else
    set(handles.BF, 'String', "Tidak Ada");
end
if(Klasifikasi3 == 1)
    set(handles.CF, 'String', "Ada");
else
    set(handles.CF, 'String', "Tidak Ada");
end
if(Klasifikasi4 == 1)
    set(handles.FT, 'String', "Ada");
else
    set(handles.FT, 'String', "Tidak Ada");
end
if(Klasifikasi5 == 1)
    set(handles.TF, 'String', "Ada");
else
    set(handles.TF, 'String', "Tidak Ada");
end
if(Klasifikasi6 == 1)
    set(handles.CN, 'String', "Ada");
else
    set(handles.CN, 'String', "Tidak Ada");
end
if(Klasifikasi7 == 1)
    set(handles.GN, 'String', "Ada");
else
    set(handles.GN, 'String', "Tidak Ada");
end


% --- Executes on button press in resetinput.
function resetinput_Callback(hObject, eventdata, handles)
% hObject    handle to resetinput (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of resetinput
set(handles.SR, 'String', "");
set(handles.NR, 'String', "");
set(handles.TR, 'String', "");
set(handles.VR, 'String', "");
set(handles.SUR1, 'String', "");
set(handles.SUR2, 'String', "");
set(handles.SUR3, 'String', "");
set(handles.UR, 'String', "");
set(handles.FR, 'String', "");
set(handles.OR, 'String', "");
set(handles.RR, 'String', "");
set(handles.BR, 'String', "");
set(handles.MR, 'String', "");
set(handles.CR, 'String', "");
set(handles.K, 'String', "");
set(handles.GF, 'String', "");
set(handles.BF, 'String', "");
set(handles.CF, 'String', "");
set(handles.FT, 'String', "");
set(handles.TF, 'String', "");
set(handles.CN, 'String', "");
set(handles.GN, 'String', "");
