##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Release
ProjectName            :=ISeeYouHook
ConfigurationName      :=Release
IntermediateDirectory  :=./Release
OutDir                 := $(IntermediateDirectory)
WorkspacePath          := "E:\coding\ISeeYou"
ProjectPath            := "E:\coding\ISeeYou\ISeeYouHook"
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=erthalion
Date                   :=24.03.2012
CodeLitePath           :="C:\Program Files\CodeLite"
LinkerName             :=g++
ArchiveTool            :=ar rcus
SharedObjectLinkerName :=g++ -shared -fPIC
ObjectSuffix           :=.o
DependSuffix           :=.o.d
PreprocessSuffix       :=.o.i
DebugSwitch            :=-gstab
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
SourceSwitch           :=-c 
CompilerName           :=g++
C_CompilerName         :=gcc
OutputFile             :=$(IntermediateDirectory)/$(ProjectName).dll
Preprocessors          :=
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E 
ObjectsFileList        :="E:\coding\ISeeYou\ISeeYouHook\ISeeYouHook.txt"
PCHCompileFlags        :=
MakeDirCommand         :=makedir
CmpOptions             :=  $(Preprocessors)
C_CmpOptions           :=  $(Preprocessors)
LinkOptions            :=  -O2
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch). 
IncludePCH             := 
RcIncludePath          := 
Libs                   := 
LibPath                := $(LibraryPathSwitch). 


##
## User defined environment variables
##
CodeLiteDir:=C:\Program Files\CodeLite
WXWIN:=C:\wxWidgets-2.9.2
PATH:=$(WXWIN)\lib\gcc_dll;C:\Program Files\Microsoft Visual Studio 10.0\VC\bin;$(PATH)
WXCFG:=gcc_dll\mswu
UNIT_TEST_PP_SRC_DIR:=C:\UnitTest++-1.3
Objects=$(IntermediateDirectory)/dllMain$(ObjectSuffix) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild
all: $(OutputFile)

$(OutputFile): $(IntermediateDirectory)/.d $(Objects) 
	@$(MakeDirCommand) $(@D)
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects) > $(ObjectsFileList)
	$(SharedObjectLinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)
	@$(MakeDirCommand) "E:\coding\ISeeYou\.build-release"
	@echo rebuilt > "E:\coding\ISeeYou\.build-release\ISeeYouHook"

$(IntermediateDirectory)/.d:
	@$(MakeDirCommand) "./Release"

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/dllMain$(ObjectSuffix): dllMain.cpp $(IntermediateDirectory)/dllMain$(DependSuffix)
	$(CompilerName) $(IncludePCH) $(SourceSwitch) "E:/coding/ISeeYou/ISeeYouHook/dllMain.cpp" $(CmpOptions) $(ObjectSwitch)$(IntermediateDirectory)/dllMain$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/dllMain$(DependSuffix): dllMain.cpp
	@$(CompilerName) $(CmpOptions) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/dllMain$(ObjectSuffix) -MF$(IntermediateDirectory)/dllMain$(DependSuffix) -MM "E:/coding/ISeeYou/ISeeYouHook/dllMain.cpp"

$(IntermediateDirectory)/dllMain$(PreprocessSuffix): dllMain.cpp
	@$(CompilerName) $(CmpOptions) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/dllMain$(PreprocessSuffix) "E:/coding/ISeeYou/ISeeYouHook/dllMain.cpp"


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) $(IntermediateDirectory)/dllMain$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/dllMain$(DependSuffix)
	$(RM) $(IntermediateDirectory)/dllMain$(PreprocessSuffix)
	$(RM) $(OutputFile)
	$(RM) $(OutputFile)
	$(RM) "E:\coding\ISeeYou\.build-release\ISeeYouHook"


