# keyzen-cue

keyzen project to define and generate consistent key bindings for various editors.
                                                         
--- 

```mermaid
flowchart TB

subgraph KeyzenSealedGroup 
    
    %% GROUP 1: KeyZen Defs
    subgraph KeyzenDefsGroup; 
        KeysPkg %%[Keys];
        CommandsPkg %%[Commands]
        StrokesPkg %%[Strokes];
        EditorsPkg %%[Editors];
        KeyzenWrapperPkg
    end
    
    %% GROUP 2: Editor Defs
    %% subgraph EditorDefsGroup;
    %% end 
    
    
    %% GROUP 3: Editor Impl
    subgraph EditorsGroup;
        SublimeEditorPkg %%[SublimeText];
        JetbrainsEditorPkg %%[Jetbrains];
        VsCodeEditorPkg %%[VsCode];
    end
    
end 

subgraph ToolsPkg
%% GROUP4: Keyzen Tools
subgraph KeyzenToolsGroup[Keyzen Tools]
    KeyzenToolsPkg;
end

subgraph EditorToolsGroup
    SublimeToolsPkg;
    JetbrainsToolsPkg;
    VsCodeToolsPkg;
end
end

%% GROUP 5 
subgraph OutputsGroup
    SublimeZenkeysMacFile;
    JetbrainsZenkeysMacFile;
    VsCodeZenkeysMacFile;
    KeyzenTutorialFile;
    KeyzenReferenceFile;
end

%% EDGES %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

KeysPkg --> StrokesPkg;
KeysPkg --> EditorsPkg;
CommandsPkg --> StrokesPkg;
CommandsPkg --> EditorsPkg;

KeysPkg --> KeyzenWrapperPkg; 
CommandsPkg --> KeyzenWrapperPkg; 
StrokesPkg --> KeyzenWrapperPkg; 
EditorsPkg --> KeyzenWrapperPkg; 


KeyzenWrapperPkg -.-> SublimeEditorPkg;
KeyzenWrapperPkg -.-> JetbrainsEditorPkg;
KeyzenWrapperPkg -.-> VsCodeEditorPkg;

KeyzenWrapperPkg -.-> KeyzenToolsPkg;

KeyzenToolsPkg --> KeyzenTutorialFile;
KeyzenToolsPkg --> KeyzenReferenceFile;

SublimeEditorPkg -.-> SublimeToolsPkg; 
JetbrainsEditorPkg -.-> JetbrainsToolsPkg; 
VsCodeEditorPkg -.-> VsCodeToolsPkg; 
 
 
SublimeToolsPkg -.->  SublimeZenkeysMacFile;
JetbrainsToolsPkg -.->  JetbrainsZenkeysMacFile;
VsCodeToolsPkg -.->  VsCodeZenkeysMacFile;



```
**Keys**: represent keys on the keyboard
                  
**Commands**: represent the actions an editor makes

**Strokes** represent the finger movements to perform the commands

**Platforms** represent the types of systems, e.g. Windows, Linux, Mac & Mac-Swapped

---
         
## Packages
### Keys

### Commands

### Strokes

### Platforms
- Windows
- Linux 
- Mac
- Mac-Swapped (has Ctrl,Cmd positions reversed)
              

--- 
## Notes:
- each editor has its own names for keys
- each editor has its own combination for multi-binding keys
- each editor has its own file format for the bindings 
