##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=Final-Project-Group9
ConfigurationName      :=Debug
WorkspaceConfiguration := $(ConfigurationName)
WorkspacePath          :=/home/pkpraj/Desktop/Final-Project-Group9/Final-Project-Group9
ProjectPath            :=/home/pkpraj/Desktop/Final-Project-Group9/Final-Project-Group9/Final-Project-Group9
IntermediateDirectory  :=../build-$(ConfigurationName)/Final-Project-Group9
OutDir                 :=../build-$(ConfigurationName)/Final-Project-Group9
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=Prajakta Kadam
Date                   :=05/12/19
CodeLitePath           :=/home/pkpraj/.codelite
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
OutputFile             :=../build-$(ConfigurationName)/bin/$(ProjectName)
Preprocessors          :=
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :=$(IntermediateDirectory)/ObjectsList.txt
PCHCompileFlags        :=
LinkOptions            :=  
IncludePath            :=  $(IncludeSwitch).home/kartik/Documents/ENPM809Y/Final-Project-Group9/Final-Project-Group9src/API/ $(IncludeSwitch).home/kartik/Documents/ENPM809Y/Final-Project-Group9/Final-Project-Group9src/LandBasedRobot/ $(IncludeSwitch).home/kartik/Documents/ENPM809Y/Final-Project-Group9/Final-Project-Group9src/Maze/ $(IncludeSwitch).home/kartik/Documents/ENPM809Y/Final-Project-Group9/Final-Project-Group9src/LandBasedWheeled/ $(IncludeSwitch).home/kartik/Documents/ENPM809Y/Final-Project-Group9/Final-Project-Group9src/LandBasedTracked/ $(IncludeSwitch).home/kartik/Documents/ENPM809Y/Final-Project-Group9/Final-Project-Group9src/Algorithm/ $(IncludeSwitch). $(IncludeSwitch)src/Maze $(IncludeSwitch)src/Algorithm $(IncludeSwitch)src/LandBasedRobot $(IncludeSwitch)src/LandBasedTracked $(IncludeSwitch)src/LandBasedWheeled $(IncludeSwitch)src/API 
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
Objects0=../build-$(ConfigurationName)/Final-Project-Group9/src_API_api.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/Final-Project-Group9/src_LandBasedWheeled_LandBasedWheeled.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/Final-Project-Group9/src_LandBasedTracked_LandBasedTracked.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/Final-Project-Group9/main.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/Final-Project-Group9/src_Algorithm_Algorithm.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/Final-Project-Group9/src_LandBasedRobot_LandBasedRobot.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/Final-Project-Group9/src_Maze_MAZE.cpp$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild MakeIntermediateDirs
all: MakeIntermediateDirs $(OutputFile)

$(OutputFile): ../build-$(ConfigurationName)/Final-Project-Group9/.d $(Objects) 
	@mkdir -p "../build-$(ConfigurationName)/Final-Project-Group9"
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

MakeIntermediateDirs:
	@mkdir -p "../build-$(ConfigurationName)/Final-Project-Group9"
	@mkdir -p ""../build-$(ConfigurationName)/bin""

../build-$(ConfigurationName)/Final-Project-Group9/.d:
	@mkdir -p "../build-$(ConfigurationName)/Final-Project-Group9"

PreBuild:


##
## Objects
##
../build-$(ConfigurationName)/Final-Project-Group9/src_API_api.cpp$(ObjectSuffix): src/API/api.cpp ../build-$(ConfigurationName)/Final-Project-Group9/src_API_api.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/pkpraj/Desktop/Final-Project-Group9/Final-Project-Group9/Final-Project-Group9/src/API/api.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_API_api.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/Final-Project-Group9/src_API_api.cpp$(DependSuffix): src/API/api.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/Final-Project-Group9/src_API_api.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/Final-Project-Group9/src_API_api.cpp$(DependSuffix) -MM src/API/api.cpp

../build-$(ConfigurationName)/Final-Project-Group9/src_API_api.cpp$(PreprocessSuffix): src/API/api.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/Final-Project-Group9/src_API_api.cpp$(PreprocessSuffix) src/API/api.cpp

../build-$(ConfigurationName)/Final-Project-Group9/src_LandBasedWheeled_LandBasedWheeled.cpp$(ObjectSuffix): src/LandBasedWheeled/LandBasedWheeled.cpp ../build-$(ConfigurationName)/Final-Project-Group9/src_LandBasedWheeled_LandBasedWheeled.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/pkpraj/Desktop/Final-Project-Group9/Final-Project-Group9/Final-Project-Group9/src/LandBasedWheeled/LandBasedWheeled.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_LandBasedWheeled_LandBasedWheeled.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/Final-Project-Group9/src_LandBasedWheeled_LandBasedWheeled.cpp$(DependSuffix): src/LandBasedWheeled/LandBasedWheeled.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/Final-Project-Group9/src_LandBasedWheeled_LandBasedWheeled.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/Final-Project-Group9/src_LandBasedWheeled_LandBasedWheeled.cpp$(DependSuffix) -MM src/LandBasedWheeled/LandBasedWheeled.cpp

../build-$(ConfigurationName)/Final-Project-Group9/src_LandBasedWheeled_LandBasedWheeled.cpp$(PreprocessSuffix): src/LandBasedWheeled/LandBasedWheeled.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/Final-Project-Group9/src_LandBasedWheeled_LandBasedWheeled.cpp$(PreprocessSuffix) src/LandBasedWheeled/LandBasedWheeled.cpp

../build-$(ConfigurationName)/Final-Project-Group9/src_LandBasedTracked_LandBasedTracked.cpp$(ObjectSuffix): src/LandBasedTracked/LandBasedTracked.cpp ../build-$(ConfigurationName)/Final-Project-Group9/src_LandBasedTracked_LandBasedTracked.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/pkpraj/Desktop/Final-Project-Group9/Final-Project-Group9/Final-Project-Group9/src/LandBasedTracked/LandBasedTracked.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_LandBasedTracked_LandBasedTracked.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/Final-Project-Group9/src_LandBasedTracked_LandBasedTracked.cpp$(DependSuffix): src/LandBasedTracked/LandBasedTracked.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/Final-Project-Group9/src_LandBasedTracked_LandBasedTracked.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/Final-Project-Group9/src_LandBasedTracked_LandBasedTracked.cpp$(DependSuffix) -MM src/LandBasedTracked/LandBasedTracked.cpp

../build-$(ConfigurationName)/Final-Project-Group9/src_LandBasedTracked_LandBasedTracked.cpp$(PreprocessSuffix): src/LandBasedTracked/LandBasedTracked.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/Final-Project-Group9/src_LandBasedTracked_LandBasedTracked.cpp$(PreprocessSuffix) src/LandBasedTracked/LandBasedTracked.cpp

../build-$(ConfigurationName)/Final-Project-Group9/main.cpp$(ObjectSuffix): main.cpp ../build-$(ConfigurationName)/Final-Project-Group9/main.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/pkpraj/Desktop/Final-Project-Group9/Final-Project-Group9/Final-Project-Group9/main.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/main.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/Final-Project-Group9/main.cpp$(DependSuffix): main.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/Final-Project-Group9/main.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/Final-Project-Group9/main.cpp$(DependSuffix) -MM main.cpp

../build-$(ConfigurationName)/Final-Project-Group9/main.cpp$(PreprocessSuffix): main.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/Final-Project-Group9/main.cpp$(PreprocessSuffix) main.cpp

../build-$(ConfigurationName)/Final-Project-Group9/src_Algorithm_Algorithm.cpp$(ObjectSuffix): src/Algorithm/Algorithm.cpp ../build-$(ConfigurationName)/Final-Project-Group9/src_Algorithm_Algorithm.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/pkpraj/Desktop/Final-Project-Group9/Final-Project-Group9/Final-Project-Group9/src/Algorithm/Algorithm.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_Algorithm_Algorithm.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/Final-Project-Group9/src_Algorithm_Algorithm.cpp$(DependSuffix): src/Algorithm/Algorithm.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/Final-Project-Group9/src_Algorithm_Algorithm.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/Final-Project-Group9/src_Algorithm_Algorithm.cpp$(DependSuffix) -MM src/Algorithm/Algorithm.cpp

../build-$(ConfigurationName)/Final-Project-Group9/src_Algorithm_Algorithm.cpp$(PreprocessSuffix): src/Algorithm/Algorithm.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/Final-Project-Group9/src_Algorithm_Algorithm.cpp$(PreprocessSuffix) src/Algorithm/Algorithm.cpp

../build-$(ConfigurationName)/Final-Project-Group9/src_LandBasedRobot_LandBasedRobot.cpp$(ObjectSuffix): src/LandBasedRobot/LandBasedRobot.cpp ../build-$(ConfigurationName)/Final-Project-Group9/src_LandBasedRobot_LandBasedRobot.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/pkpraj/Desktop/Final-Project-Group9/Final-Project-Group9/Final-Project-Group9/src/LandBasedRobot/LandBasedRobot.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_LandBasedRobot_LandBasedRobot.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/Final-Project-Group9/src_LandBasedRobot_LandBasedRobot.cpp$(DependSuffix): src/LandBasedRobot/LandBasedRobot.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/Final-Project-Group9/src_LandBasedRobot_LandBasedRobot.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/Final-Project-Group9/src_LandBasedRobot_LandBasedRobot.cpp$(DependSuffix) -MM src/LandBasedRobot/LandBasedRobot.cpp

../build-$(ConfigurationName)/Final-Project-Group9/src_LandBasedRobot_LandBasedRobot.cpp$(PreprocessSuffix): src/LandBasedRobot/LandBasedRobot.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/Final-Project-Group9/src_LandBasedRobot_LandBasedRobot.cpp$(PreprocessSuffix) src/LandBasedRobot/LandBasedRobot.cpp

../build-$(ConfigurationName)/Final-Project-Group9/src_Maze_MAZE.cpp$(ObjectSuffix): src/Maze/MAZE.cpp ../build-$(ConfigurationName)/Final-Project-Group9/src_Maze_MAZE.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/pkpraj/Desktop/Final-Project-Group9/Final-Project-Group9/Final-Project-Group9/src/Maze/MAZE.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_Maze_MAZE.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/Final-Project-Group9/src_Maze_MAZE.cpp$(DependSuffix): src/Maze/MAZE.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/Final-Project-Group9/src_Maze_MAZE.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/Final-Project-Group9/src_Maze_MAZE.cpp$(DependSuffix) -MM src/Maze/MAZE.cpp

../build-$(ConfigurationName)/Final-Project-Group9/src_Maze_MAZE.cpp$(PreprocessSuffix): src/Maze/MAZE.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/Final-Project-Group9/src_Maze_MAZE.cpp$(PreprocessSuffix) src/Maze/MAZE.cpp


-include ../build-$(ConfigurationName)/Final-Project-Group9//*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r $(IntermediateDirectory)


