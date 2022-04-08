% This is the program for opening the file.
%  The code is written by  Luchang Li and Wei Tao .
function val=get_variable_via_load(filepath)
%UNTITLED3 show funtions in this place
%   show details of functions
if(exist(filepath,'file')==2)
    var_struct=load(filepath);
    name_cell=fieldnames(var_struct);
    val=getfield(var_struct,char(name_cell));
elseif(exist(filepath,'file')==0)
    msgbox('File does not exist£¡','Error','Error');
end

