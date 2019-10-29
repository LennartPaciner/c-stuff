##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=File-Stuff
ConfigurationName      :=Debug
WorkspacePath          :=/home/lennart/Documents/C_Testworkspace
ProjectPath            :=/home/lennart/Documents/github/c-stuff/File-Stuff
IntermediateDirectory  :=./Debug
OutDir                 := $(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=lennart
Date                   :=29/10/19
CodeLitePath           :=/home/lennart/.codelite
LinkerName             :=/usr/bin/g++
SharedObjectLinkerName :=/usr/bin/g++ -shared -fPIC
ObjectSuffix           :=.o
DependSuffix           :=.o.d
PreprocessSuffix       :=.i
DebugSwitch            :=-g 
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
SourceSwitch           :=-c 
OutputFile             :=$(IntermediateDirectory)/$(ProjectName)
Preprocessors          :=
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :="File-Stuff.txt"
PCHCompileFlags        :=
MakeDirCommand         :=mkdir -p
LinkOptions            :=  
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch). 
IncludePCH             := 
RcIncludePath          := 
Libs                   := 
ArLibs                 :=  
LibPath                := $(LibraryPathSwitch). 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       := /usr/bin/ar rcu
CXX      := /usr/bin/g++
CC       := /usr/bin/gcc
CXXFLAGS :=  -g -O0 -Wall $(Preprocessors)
CFLAGS   :=  -g -O0 -Wall $(Preprocessors)
ASFLAGS  := 
AS       := /usr/bin/as


##
## User defined environment variables
##
CodeLiteDir:=/usr/share/codelite
Objects0=$(IntermediateDirectory)/main.c$(ObjectSuffix) $(IntermediateDirectory)/FileCopy.c$(ObjectSuffix) $(IntermediateDirectory)/src_FileCopy_FileAppend.c$(ObjectSuffix) $(IntermediateDirectory)/src_FileCopyReverse_FileCopyR.c$(ObjectSuffix) $(IntermediateDirectory)/src_FileCopyWithBytes_FileCopyWithBytes.c$(ObjectSuffix) $(IntermediateDirectory)/src_FileLengthConsole_FileLengthConsole.c$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild MakeIntermediateDirs
all: $(OutputFile)

$(OutputFile): $(IntermediateDirectory)/.d $(Objects) 
	@$(MakeDirCommand) $(@D)
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

MakeIntermediateDirs:
	@test -d ./Debug || $(MakeDirCommand) ./Debug


$(IntermediateDirectory)/.d:
	@test -d ./Debug || $(MakeDirCommand) ./Debug

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/main.c$(ObjectSuffix): main.c $(IntermediateDirectory)/main.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/lennart/Documents/github/c-stuff/File-Stuff/main.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/main.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/main.c$(DependSuffix): main.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/main.c$(ObjectSuffix) -MF$(IntermediateDirectory)/main.c$(DependSuffix) -MM main.c

$(IntermediateDirectory)/main.c$(PreprocessSuffix): main.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/main.c$(PreprocessSuffix) main.c

$(IntermediateDirectory)/FileCopy.c$(ObjectSuffix): FileCopy.c $(IntermediateDirectory)/FileCopy.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/lennart/Documents/github/c-stuff/File-Stuff/FileCopy.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/FileCopy.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/FileCopy.c$(DependSuffix): FileCopy.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/FileCopy.c$(ObjectSuffix) -MF$(IntermediateDirectory)/FileCopy.c$(DependSuffix) -MM FileCopy.c

$(IntermediateDirectory)/FileCopy.c$(PreprocessSuffix): FileCopy.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/FileCopy.c$(PreprocessSuffix) FileCopy.c

$(IntermediateDirectory)/src_FileCopy_FileAppend.c$(ObjectSuffix): src/FileCopy/FileAppend.c $(IntermediateDirectory)/src_FileCopy_FileAppend.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/lennart/Documents/github/c-stuff/File-Stuff/src/FileCopy/FileAppend.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_FileCopy_FileAppend.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_FileCopy_FileAppend.c$(DependSuffix): src/FileCopy/FileAppend.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_FileCopy_FileAppend.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_FileCopy_FileAppend.c$(DependSuffix) -MM src/FileCopy/FileAppend.c

$(IntermediateDirectory)/src_FileCopy_FileAppend.c$(PreprocessSuffix): src/FileCopy/FileAppend.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_FileCopy_FileAppend.c$(PreprocessSuffix) src/FileCopy/FileAppend.c

$(IntermediateDirectory)/src_FileCopyReverse_FileCopyR.c$(ObjectSuffix): src/FileCopyReverse/FileCopyR.c $(IntermediateDirectory)/src_FileCopyReverse_FileCopyR.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/lennart/Documents/github/c-stuff/File-Stuff/src/FileCopyReverse/FileCopyR.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_FileCopyReverse_FileCopyR.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_FileCopyReverse_FileCopyR.c$(DependSuffix): src/FileCopyReverse/FileCopyR.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_FileCopyReverse_FileCopyR.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_FileCopyReverse_FileCopyR.c$(DependSuffix) -MM src/FileCopyReverse/FileCopyR.c

$(IntermediateDirectory)/src_FileCopyReverse_FileCopyR.c$(PreprocessSuffix): src/FileCopyReverse/FileCopyR.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_FileCopyReverse_FileCopyR.c$(PreprocessSuffix) src/FileCopyReverse/FileCopyR.c

$(IntermediateDirectory)/src_FileCopyWithBytes_FileCopyWithBytes.c$(ObjectSuffix): src/FileCopyWithBytes/FileCopyWithBytes.c $(IntermediateDirectory)/src_FileCopyWithBytes_FileCopyWithBytes.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/lennart/Documents/github/c-stuff/File-Stuff/src/FileCopyWithBytes/FileCopyWithBytes.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_FileCopyWithBytes_FileCopyWithBytes.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_FileCopyWithBytes_FileCopyWithBytes.c$(DependSuffix): src/FileCopyWithBytes/FileCopyWithBytes.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_FileCopyWithBytes_FileCopyWithBytes.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_FileCopyWithBytes_FileCopyWithBytes.c$(DependSuffix) -MM src/FileCopyWithBytes/FileCopyWithBytes.c

$(IntermediateDirectory)/src_FileCopyWithBytes_FileCopyWithBytes.c$(PreprocessSuffix): src/FileCopyWithBytes/FileCopyWithBytes.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_FileCopyWithBytes_FileCopyWithBytes.c$(PreprocessSuffix) src/FileCopyWithBytes/FileCopyWithBytes.c

$(IntermediateDirectory)/src_FileLengthConsole_FileLengthConsole.c$(ObjectSuffix): src/FileLengthConsole/FileLengthConsole.c $(IntermediateDirectory)/src_FileLengthConsole_FileLengthConsole.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/lennart/Documents/github/c-stuff/File-Stuff/src/FileLengthConsole/FileLengthConsole.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_FileLengthConsole_FileLengthConsole.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_FileLengthConsole_FileLengthConsole.c$(DependSuffix): src/FileLengthConsole/FileLengthConsole.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_FileLengthConsole_FileLengthConsole.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_FileLengthConsole_FileLengthConsole.c$(DependSuffix) -MM src/FileLengthConsole/FileLengthConsole.c

$(IntermediateDirectory)/src_FileLengthConsole_FileLengthConsole.c$(PreprocessSuffix): src/FileLengthConsole/FileLengthConsole.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_FileLengthConsole_FileLengthConsole.c$(PreprocessSuffix) src/FileLengthConsole/FileLengthConsole.c


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r ./Debug/


