function varargout = SPIRES(varargin)
% SPIRES M-file for SPIRES.fig
%      SPIRES, by itself, creates a new SPIRES or raises the existing
%      singleton*.
%
%      H = SPIRES returns the handle to a new SPIRES or the handle to
%      the existing singleton*.
%
%      SPIRES('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SPIRES.M with the given input arguments.
%
%      SPIRES('Property','Value',...) creates a new SPIRES or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before SPIRES_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to SPIRES_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help SPIRES

% Last Modified by GUIDE v2.5 19-May-2012 08:05:01

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @SPIRES_OpeningFcn, ...
                   'gui_OutputFcn',  @SPIRES_OutputFcn, ...
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


% --- Executes just before SPIRES is made visible.
function SPIRES_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to SPIRES (see VARARGIN)


% Choose default command line output for SPIRES
handles.output = hObject;
handles.kNN = 2;
handles.bulk_loading = 1;
handles.edit_settings = 1;
handles.recognition_threshold = 3.50;
% Update handles structure
guidata(hObject, handles);
%set the various default values for various GUI components
set(handles.indexing_edit_settings_append_radiobutton,'Value',1);
set(handles.indexing_edit_settings_overwrite_radiobutton,'Value',0);
set(handles.indexing_loading_settings_bulkLoading_radiobutton,'Value',1);
set(handles.indexing_loading_settings_singleton_radiobutton,'Value',0);
set(handles.indexing_edit_settings_append_radiobutton,'Value',1);
set(handles.indexing_edit_settings_overwrite_radiobutton,'Value',0);
set(handles.querying_kNN_editText,'String',int2str(handles.kNN));
set(handles.querying_default_threshold_label,'String',sprintf('Default Recognition Threshold: %0.2f',handles.recognition_threshold));
set(handles.querying_threshold_editText,'String',sprintf('%0.2f',handles.recognition_threshold));
maxVal = get(handles.querying_recall_checkbox,'Max'); set(handles.querying_recall_checkbox,'Value',maxVal);



% UIWAIT makes SPIRES wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = SPIRES_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in main_indexing_button.
function main_indexing_button_Callback(hObject, eventdata, handles)
% hObject    handle to main_indexing_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.querying_panel,'Visible','off');
set(handles.indexing_panel,'Visible','on');


% --- Executes on button press in main_querying_button.
function main_querying_button_Callback(hObject, eventdata, handles)
% hObject    handle to main_querying_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.indexing_panel,'Visible','off');
set(handles.querying_panel,'Visible','on');



% --------------------------------------------------------------------
function Untitled_1_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_3_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_6_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



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



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton14.
function pushbutton14_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton15.
function pushbutton15_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton16.
function pushbutton16_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton17.
function pushbutton17_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in listbox2.
function listbox2_Callback(hObject, eventdata, handles)
% hObject    handle to listbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns listbox2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox2


% --- Executes during object creation, after setting all properties.
function listbox2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in listbox1.
function listbox1_Callback(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns listbox1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox1


% --- Executes during object creation, after setting all properties.
function listbox1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton12.
function pushbutton12_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton19.
function pushbutton19_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton20.
function pushbutton20_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton21.
function pushbutton21_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton30.
function pushbutton30_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton30 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton31.
function pushbutton31_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton32.
function pushbutton32_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton33.
function pushbutton33_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton33 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function indexing_input_path_editText_Callback(hObject, eventdata, handles)
% hObject    handle to indexing_input_path_editText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of indexing_input_path_editText as text
%        str2double(get(hObject,'String')) returns contents of indexing_input_path_editText as a double


% --- Executes during object creation, after setting all properties.
function indexing_input_path_editText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to indexing_input_path_editText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function indexing_dataset_path_editText_Callback(hObject, eventdata, handles)
% hObject    handle to indexing_dataset_path_editText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of indexing_dataset_path_editText as text
%        str2double(get(hObject,'String')) returns contents of indexing_dataset_path_editText as a double


% --- Executes during object creation, after setting all properties.
function indexing_dataset_path_editText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to indexing_dataset_path_editText (see GCBO)
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

% Hints: contents = get(hObject,'String') returns popupmenu1 contents as cell array
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


% --- Executes on button press in checkbox1.
function checkbox1_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox1


% --- Executes on button press in checkbox2.
function checkbox2_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox2


% --- Executes on button press in checkbox3.
function checkbox3_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox3


% --- Executes on button press in indexing_edit_settings_append_radiobutton.
function indexing_edit_settings_append_radiobutton_Callback(hObject, eventdata, handles)
% hObject    handle to indexing_edit_settings_append_radiobutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of indexing_edit_settings_append_radiobutton


% --- Executes on button press in indexing_edit_settings_overwrite_radiobutton.
function indexing_edit_settings_overwrite_radiobutton_Callback(hObject, eventdata, handles)
% hObject    handle to indexing_edit_settings_overwrite_radiobutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of indexing_edit_settings_overwrite_radiobutton


% --- Executes on button press in pushbutton34.
function pushbutton34_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton34 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton35.
function pushbutton35_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton35 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in checkbox8.
function checkbox8_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox8


% --- Executes on button press in checkbox9.
function checkbox9_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox9


% --- Executes on button press in checkbox10.
function checkbox10_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox10


% --- Executes on button press in checkbox11.
function checkbox11_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox11


% --- Executes on button press in pushbutton37.
function pushbutton37_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton37 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in indexing_input_open_button.
function indexing_input_open_button_Callback(hObject, eventdata, handles)
% hObject    handle to indexing_input_open_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
inputFolderPath = uigetdir;
set(handles.indexing_input_path_editText,'String',inputFolderPath);
set(handles.indexing_input_path_editText,'Enable','on');



% --- Executes on button press in indexing_input_load_button.
function indexing_input_load_button_Callback(hObject, eventdata, handles)
% hObject    handle to indexing_input_load_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.inputFolderPath = get(handles.indexing_input_path_editText,'String');
guidata(hObject,handles);
set(handles.indexing_input_path_editText,'Enable','off');


% --- Executes on button press in indexing_dataset_open_button.
function indexing_dataset_open_button_Callback(hObject, eventdata, handles)
% hObject    handle to indexing_dataset_open_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
datasetFolderPath = uigetdir;
set(handles.indexing_dataset_path_editText,'String',datasetFolderPath);
set(handles.indexing_dataset_path_editText,'Enable','on');


% --- Executes on button press in indexing_dataset_load_button.
function indexing_dataset_load_button_Callback(hObject, eventdata, handles)
% hObject    handle to indexing_dataset_load_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.datasetFolderPath = get(handles.indexing_dataset_path_editText,'String');
guidata(hObject,handles);
set(handles.indexing_dataset_path_editText,'Enable','off');


% --- Executes on button press in pushbutton46.
function pushbutton46_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton46 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton47.
function pushbutton47_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton47 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on selection change in popupmenu4.
function popupmenu4_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns popupmenu4 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu4


% --- Executes during object creation, after setting all properties.
function popupmenu4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in indexing_start_button.
function indexing_start_button_Callback(hObject, eventdata, handles)
% hObject    handle to indexing_start_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
allInputFileList = getAllFiles(handles.inputFolderPath);
N = length(allInputFileList);
validInputFileList = {};
for i = 1:N
    inputFile = allInputFileList{i};
    [pathstr, name, ext, versn] = fileparts(inputFile);
    %check file type that are allowed
    switch ext
        case {'.bmp','.jpg','.jpeg'}
            validInputFileList = [validInputFileList; inputFile]; %#ok<AGROW>
        otherwise 
            continue;
    end
end
[timeseriesData infoTags metadata] = loadDataset(handles.datasetFolderPath); 
if(~handles.edit_settings)
    timeseriesData = [];
    infoTags = {};
    metadata = struct;
    metadata.nextNodeId = 1;
end
if(handles.bulk_loading)
    N = length(validInputFileList);
    inputTSdata = [];
    inputNodeIds = [];
    
    for i = 1:N
        inputFile = validInputFileList{i};
        [pathstr, name, ext, versn] = fileparts(inputFile);
        %save the image data
        imageData = struct; 
        imageData.imageId = name; imageData.userId = strtok(name,'_');
        imageData.filename = strcat(name,ext); 
        imageData.filepath = fullfile(handles.datasetFolderPath,imageData.filename);
        imageData.nodeId = metadata.nextNodeId;
        metadata.nextNodeId = metadata.nextNodeId + 1;
        
        
        %convert iris image to time series
        cd('iriscode');
        [template, mask, phaseTS, image_segmented, image_noisy, image_normal] = createiristemplate(inputFile);
        cd('..');
        %display current processing information in GUI
        set(handles.indexing_current_image_label,'String',sprintf('Current image id: %s',imageData.imageId));
        set(handles.indexing_status_label,'String',sprintf('%i of %i image(s) remaining to be processed.',N-i,N));
        axes(handles.indexing_input_image);
        eyeimage = (imread(inputFile)); 
        imshow(eyeimage);
        axes(handles.indexing_segmented_image);
        imshow(image_segmented);
        axes(handles.indexing_noisy_image);
        imshow(image_noisy);
        axes(handles.indexing_normal_image);
        imshow(image_normal);
        axes(handles.indexing_image_timeseries);
        plot(phaseTS);
      
        %save the image in the dataset folder 
        extType = strtok(ext,'.');
        imwrite(eyeimage,fullfile(handles.datasetFolderPath,strcat(name,ext)),extType);
        infoTags = [infoTags ; imageData]; %#ok<AGROW>
        timeseriesData = [timeseriesData ; phaseTS]; %#ok<AGROW>
        inputTSdata = [inputTSdata ; phaseTS]; %#ok<AGROW>
        inputNodeIds = [inputNodeIds ; imageData.nodeId]; %#ok<AGROW>
    end
       %update_index_bulkLoad(inputTSdata,inputNodeIds,handles.datasetFolderPath,handles.edit_settings); 
       saveDataset(handles.datasetFolderPath,timeseriesData,infoTags,metadata);
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% --- Executes during object creation, after setting all properties.
function main_indexing_button_CreateFcn(hObject, eventdata, handles)
% hObject    handle to main_indexing_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called



% --- Executes during object creation, after setting all properties.
function main_querying_button_CreateFcn(hObject, eventdata, handles)
% hObject    handle to main_querying_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function indexing_panel_CreateFcn(hObject, eventdata, handles)
% hObject    handle to indexing_panel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
set(hObject,'Visible','on');


% --- Executes during object creation, after setting all properties.
function querying_panel_CreateFcn(hObject, eventdata, handles)
% hObject    handle to querying_panel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
set(hObject,'Visible','off');


% --- Executes on button press in indexing_stop_button.
function indexing_stop_button_Callback(hObject, eventdata, handles)
% hObject    handle to indexing_stop_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in querying_input_open_button.
function querying_input_open_button_Callback(hObject, eventdata, handles)
% hObject    handle to querying_input_open_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
inputFolderPath = uigetdir;
set(handles.querying_input_path_editText,'String',inputFolderPath);
set(handles.querying_input_path_editText,'Enable','on');


% --- Executes on button press in querying_input_load_button.
function querying_input_load_button_Callback(hObject, eventdata, handles)
% hObject    handle to querying_input_load_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.inputFolderPath = get(handles.querying_input_path_editText,'String');
guidata(hObject,handles);
set(handles.querying_input_path_editText,'Enable','off');


% --- Executes on button press in querying_dataset_open_button.
function querying_dataset_open_button_Callback(hObject, eventdata, handles)
% hObject    handle to querying_dataset_open_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
inputFolderPath = uigetdir;
set(handles.querying_dataset_path_editText,'String',inputFolderPath);
set(handles.querying_dataset_path_editText,'Enable','on');


% --- Executes on button press in querying_dataset_load_button.
function querying_dataset_load_button_Callback(hObject, eventdata, handles)
% hObject    handle to querying_dataset_load_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.datasetFolderPath = get(handles.querying_dataset_path_editText,'String');
guidata(hObject,handles);
set(handles.querying_dataset_path_editText,'Enable','off');



function querying_input_path_editText_Callback(hObject, eventdata, handles)
% hObject    handle to querying_input_path_editText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of querying_input_path_editText as text
%        str2double(get(hObject,'String')) returns contents of querying_input_path_editText as a double


% --- Executes during object creation, after setting all properties.
function querying_input_path_editText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to querying_input_path_editText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function querying_dataset_path_editText_Callback(hObject, eventdata, handles)
% hObject    handle to querying_dataset_path_editText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of querying_dataset_path_editText as text
%        str2double(get(hObject,'String')) returns contents of querying_dataset_path_editText as a double


% --- Executes during object creation, after setting all properties.
function querying_dataset_path_editText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to querying_dataset_path_editText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in querying_input_timeseries_button.
function querying_input_timeseries_button_Callback(hObject, eventdata, handles)
% hObject    handle to querying_input_timeseries_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
idx_selected = (get(handles.querying_input_listbox,'Value'));
timeseries = handles.queryInputData{idx_selected}.timeseries;
imageId = handles.queryInputData{idx_selected}.imageId;
figure();
hold on;
plot(timeseries);
title(sprintf('Image ID: %s',imageId));

% --- Executes on selection change in querying_input_listbox.
function querying_input_listbox_Callback(hObject, eventdata, handles)
% hObject    handle to querying_input_listbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns querying_input_listbox contents as cell array
%        contents{get(hObject,'Value')} returns selected item from querying_input_listbox
    queryInputData = handles.queryInputData;
    queryOutputData = handles.queryOutputData;
    idx_selected = get(handles.querying_input_listbox,'Value');
    set(handles.querying_input_userId_label,'String',sprintf('User ID: %s',queryInputData{idx_selected}.userId));
    set(handles.querying_input_imageId_label,'String',sprintf('Image ID: %s',queryInputData{idx_selected}.imageId));
    axes(handles.querying_input_image);
    eyeimage = (imread(queryInputData{idx_selected}.filepath)); 
    imshow(eyeimage);

    set(handles.querying_output_listbox,'String',queryOutputData{idx_selected}.imageId,'Value',1);
    set(handles.querying_output_userId_label,'String',sprintf('User ID: %s',queryOutputData{idx_selected}.userId{1}));
    set(handles.querying_output_distance_label,'String',sprintf('Distance: %0.4f',queryOutputData{idx_selected}.distance{1}));
    axes(handles.querying_output_image);
    eyeimage = (imread(queryOutputData{idx_selected}.filepath{1})); 
    imshow(eyeimage);


% --- Executes during object creation, after setting all properties.
function querying_input_listbox_CreateFcn(hObject, eventdata, handles)
% hObject    handle to querying_input_listbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton65.
function pushbutton65_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton65 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on selection change in querying_output_listbox.
function querying_output_listbox_Callback(hObject, eventdata, handles)
% hObject    handle to querying_output_listbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns querying_output_listbox contents as cell array
%        contents{get(hObject,'Value')} returns selected item from querying_output_listbox
    queryInputData = handles.queryInputData;
    queryOutputData = handles.queryOutputData;
    idx_selected = get(handles.querying_output_listbox,'Value');
    queryIdx_selected = get(handles.querying_input_listbox,'Value');
    set(handles.querying_input_userId_label,'String',sprintf('User ID: %s',queryInputData{queryIdx_selected}.userId));
    set(handles.querying_input_imageId_label,'String',sprintf('Image ID: %s',queryInputData{queryIdx_selected}.imageId));
    axes(handles.querying_input_image);
    eyeimage = (imread(queryInputData{queryIdx_selected}.filepath)); 
    imshow(eyeimage);
    
    set(handles.querying_output_userId_label,'String',sprintf('User ID: %s',queryOutputData{queryIdx_selected}.userId{idx_selected}));
    set(handles.querying_output_distance_label,'String',sprintf('Distance: %0.4f',queryOutputData{queryIdx_selected}.distance{idx_selected}));
    axes(handles.querying_output_image);
    eyeimage = (imread(queryOutputData{queryIdx_selected}.filepath{idx_selected})); 
    imshow(eyeimage);



% --- Executes during object creation, after setting all properties.
function querying_output_listbox_CreateFcn(hObject, eventdata, handles)
% hObject    handle to querying_output_listbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function querying_kNN_editText_Callback(hObject, eventdata, handles)
% hObject    handle to querying_kNN_editText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of querying_kNN_editText as text
%        str2double(get(hObject,'String')) returns contents of querying_kNN_editText as a double


% --- Executes during object creation, after setting all properties.
function querying_kNN_editText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to querying_kNN_editText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in querying_kNN_confirm_button.
function querying_kNN_confirm_button_Callback(hObject, eventdata, handles)
% hObject    handle to querying_kNN_confirm_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.kNN = uint32(str2double(get(handles.querying_kNN_editText,'String')));
guidata(hObject,handles);


% --- Executes on button press in querying_start_button.
function querying_start_button_Callback(hObject, eventdata, handles)
% hObject    handle to querying_start_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
allInputFileList = getAllFiles(handles.inputFolderPath);
N = length(allInputFileList);
validInputFileList = {};
for i = 1:N
    inputFile = allInputFileList{i};
    [pathstr, name, ext, versn] = fileparts(inputFile);
    %check file type that are allowed
    switch ext
        case {'.bmp','.jpg','.jpeg'}
            validInputFileList = [validInputFileList; inputFile]; %#ok<AGROW>
        otherwise 
            continue;
    end
end

    currentFilenamesInInputListBox = {};
    queryInputData = {};
    queryInputTimeseries = [];
    N = length(validInputFileList);
    for i = 1:N
        inputFile = validInputFileList{i};
        [pathstr, name, ext, versn] = fileparts(inputFile);
        %save the image data
        imageData = struct; 
        imageData.imageId = name; 
        imageData.userId = strtok(name,'_');
        imageData.filepath = inputFile;
        %convert iris image to time series
        cd('iriscode');
        [template, mask, phaseTS, image_segmented, image_noisy, image_normal] = createiristemplate(inputFile); %#ok<NASGU>
        imageData.timeseries = phaseTS;
        cd('..');
        queryInputData = [queryInputData ; imageData]; %#ok<AGROW>
        queryInputTimeseries = [queryInputTimeseries ; phaseTS];  %#ok<AGROW>
        
        %display current processing information in GUI
        set(handles.querying_input_userId_label,'String',sprintf('User ID: %s',imageData.userId));
        set(handles.querying_input_imageId_label,'String',sprintf('Image ID: %s',imageData.imageId));
        set(handles.querying_status_label,'String',sprintf('%i of %i image(s) remaining to be processed.',N-i,N));
        axes(handles.querying_input_image);
        eyeimage = (imread(inputFile)); 
        imshow(eyeimage);
        %update the input listbox
        currentFilenamesInInputListBox = [currentFilenamesInInputListBox ; name]; %#ok<AGROW>
        set(handles.querying_input_listbox,'String',currentFilenamesInInputListBox,'Value',i);
    end

    %issue query to the database
    K = handles.kNN; % constant value
    queryOutputData = query_database(queryInputTimeseries,handles.datasetFolderPath,K);
    
    
    %finally store the query input/output data
    handles.queryInputData = queryInputData; %contains-userId,imageId,filepath,timeseries
    handles.queryOutputData = queryOutputData; %contains-userId,imageId,filepath,timeseries,distance
    guidata(hObject,handles);
    %show the output for the first query
    set(handles.querying_input_listbox,'Value',1);
    set(handles.querying_input_userId_label,'String',sprintf('User ID: %s',queryInputData{1}.userId));
    set(handles.querying_input_imageId_label,'String',sprintf('Image ID: %s',queryInputData{1}.imageId));
    axes(handles.querying_input_image);
    eyeimage = (imread(queryInputData{1}.filepath)); 
    imshow(eyeimage);
  
    set(handles.querying_output_listbox,'String',queryOutputData{1}.imageId,'Value',1);
    set(handles.querying_output_userId_label,'String',sprintf('User ID: %s',queryOutputData{1}.userId{1}));
    set(handles.querying_output_distance_label,'String',sprintf('Distance: %0.4f',queryOutputData{1}.distance{1}));
    axes(handles.querying_output_image);
    eyeimage = (imread(queryOutputData{1}.filepath{1})); 
    imshow(eyeimage);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%




function edit15_Callback(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit15 as text
%        str2double(get(hObject,'String')) returns contents of edit15 as a double


% --- Executes during object creation, after setting all properties.
function edit15_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton68.
function pushbutton68_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton68 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton69.
function pushbutton69_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton69 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in checkbox12.
function checkbox12_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox12


% --- Executes on button press in querying_recall_checkbox.
function querying_recall_checkbox_Callback(hObject, eventdata, handles)
% hObject    handle to querying_recall_checkbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of querying_recall_checkbox


% --- Executes on button press in checkbox15.
function checkbox15_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox15


% --- Executes on button press in checkbox16.
function checkbox16_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox16


% --- Executes on button press in querying_output_timeseries_button.
function querying_output_timeseries_button_Callback(hObject, eventdata, handles)
% hObject    handle to querying_output_timeseries_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
idx_selected = (get(handles.querying_output_listbox,'Value'));
queryIdx_selected = (get(handles.querying_input_listbox,'Value'));
timeseries = handles.queryOutputData{queryIdx_selected}.timeseries{idx_selected};
imageId = handles.queryOutputData{queryIdx_selected}.imageId{idx_selected};
figure();
hold on;
plot(timeseries);
title(sprintf('Image ID: %s',imageId));



function querying_threshold_editText_Callback(hObject, eventdata, handles)
% hObject    handle to querying_threshold_editText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of querying_threshold_editText as text
%        str2double(get(hObject,'String')) returns contents of querying_threshold_editText as a double


% --- Executes during object creation, after setting all properties.
function querying_threshold_editText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to querying_threshold_editText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in querying_threshold_confirm_button.
function querying_threshold_confirm_button_Callback(hObject, eventdata, handles)
% hObject    handle to querying_threshold_confirm_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.recognition_threshold = str2double(get(handles.querying_threshold_editText,'String'));
guidata(hObject,handles);


% --- Executes on button press in checkbox17.
function checkbox17_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox17


% --- Executes on button press in checkbox18.
function checkbox18_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox18


% --- Executes on button press in querying_analysis_pushbutton.
function querying_analysis_pushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to querying_analysis_pushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
queryInputData = handles.queryInputData;
queryOutputData = handles.queryOutputData;
N = length(queryInputData);
match_count = 0;
for i = 1:N
    if(strcmp(queryInputData{i}.userId,queryOutputData{i}.userId{1})&&queryOutputData{i}.distance{1}<=handles.recognition_threshold)
        match_count = match_count + 1;
    end
end
accuracy = (single(match_count)/single(N));
set(handles.querying_status_label,'String',sprintf('Accuracy obtained is %0.2f.',accuracy));

%the following plots the recall curve if checked
if (get(handles.querying_recall_checkbox,'Value') == get(handles.querying_recall_checkbox,'Max'))
    recall_mat = zeros(N,handles.kNN);
    kNN = handles.kNN;
    for i = 1:N
        k = 1; 
        while(k<=kNN)
            if(strcmp(queryInputData{i}.userId,queryOutputData{i}.userId{k}))
                break;
            else
                k = k + 1;
            end
        end
        recall_mat(i,k:kNN) = 1;
    end
    recall = zeros(1,kNN);
    for i = 1:kNN
        recall(i) = sum(recall_mat(:,i));
    end
    recall = recall./N;
    figure();
    hold on;
    plot(recall);
    title('Recall');
end



% --- Executes when selected object is changed in indexing_loading_settings.
function indexing_loading_settings_SelectionChangeFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in indexing_loading_settings 
% eventdata  structure with the following fields (see UIBUTTONGROUP)
%	EventName: string 'SelectionChanged' (read only)
%	OldValue: handle of the previously selected object or empty if none was selected
%	NewValue: handle of the currently selected object
% handles    structure with handles and user data (see GUIDATA)
switch get(hObject,'Tag')   % Get Tag of selected object
    case 'indexing_loading_settings_bulkLoading_radiobutton'
        % Code for when radiobutton1 is selected.
        handles.bulk_loading = 1;
        
    case 'indexing_loading_settings_singleton_radiobutton'
        % Code for when radiobutton2 is selected.
        handles.bulk_loading = 0;
    otherwise
        handles.bulk_loading = 1;
        % Code for when there is no match.
end
guidata(hObject,handles);


% --- Executes when selected object is changed in indexing_edit_settings.
function indexing_edit_settings_SelectionChangeFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in indexing_edit_settings 
% eventdata  structure with the following fields (see UIBUTTONGROUP)
%	EventName: string 'SelectionChanged' (read only)
%	OldValue: handle of the previously selected object or empty if none was selected
%	NewValue: handle of the currently selected object
% handles    structure with handles and user data (see GUIDATA)
switch get(hObject,'Tag')   % Get Tag of selected object
    case 'indexing_edit_settings_append_radiobutton'
        % Code for when radiobutton1 is selected.
        handles.edit_settings = 1;
        
    case 'indexing_edit_settings_overwrite_radiobutton'
        % Code for when radiobutton2 is selected.
        handles.edit_settings = 0;
    otherwise
        handles.edit_settings = 1;
        % Code for when there is no match.
end
guidata(hObject,handles);
