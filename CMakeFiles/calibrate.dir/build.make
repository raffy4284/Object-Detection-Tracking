# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.4

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.4.1/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.4.1/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/raffy4284/Desktop/ObjectRecognition

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/raffy4284/Desktop/ObjectRecognition

# Include any dependencies generated for this target.
include CMakeFiles/calibrate.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/calibrate.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/calibrate.dir/flags.make

CMakeFiles/calibrate.dir/calibrate.cpp.o: CMakeFiles/calibrate.dir/flags.make
CMakeFiles/calibrate.dir/calibrate.cpp.o: calibrate.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/raffy4284/Desktop/ObjectRecognition/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/calibrate.dir/calibrate.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/calibrate.dir/calibrate.cpp.o -c /Users/raffy4284/Desktop/ObjectRecognition/calibrate.cpp

CMakeFiles/calibrate.dir/calibrate.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/calibrate.dir/calibrate.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/raffy4284/Desktop/ObjectRecognition/calibrate.cpp > CMakeFiles/calibrate.dir/calibrate.cpp.i

CMakeFiles/calibrate.dir/calibrate.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/calibrate.dir/calibrate.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/raffy4284/Desktop/ObjectRecognition/calibrate.cpp -o CMakeFiles/calibrate.dir/calibrate.cpp.s

CMakeFiles/calibrate.dir/calibrate.cpp.o.requires:

.PHONY : CMakeFiles/calibrate.dir/calibrate.cpp.o.requires

CMakeFiles/calibrate.dir/calibrate.cpp.o.provides: CMakeFiles/calibrate.dir/calibrate.cpp.o.requires
	$(MAKE) -f CMakeFiles/calibrate.dir/build.make CMakeFiles/calibrate.dir/calibrate.cpp.o.provides.build
.PHONY : CMakeFiles/calibrate.dir/calibrate.cpp.o.provides

CMakeFiles/calibrate.dir/calibrate.cpp.o.provides.build: CMakeFiles/calibrate.dir/calibrate.cpp.o


# Object files for target calibrate
calibrate_OBJECTS = \
"CMakeFiles/calibrate.dir/calibrate.cpp.o"

# External object files for target calibrate
calibrate_EXTERNAL_OBJECTS =

calibrate: CMakeFiles/calibrate.dir/calibrate.cpp.o
calibrate: CMakeFiles/calibrate.dir/build.make
calibrate: /usr/local/lib/libopencv_xphoto.3.0.0.dylib
calibrate: /usr/local/lib/libopencv_ximgproc.3.0.0.dylib
calibrate: /usr/local/lib/libopencv_tracking.3.0.0.dylib
calibrate: /usr/local/lib/libopencv_surface_matching.3.0.0.dylib
calibrate: /usr/local/lib/libopencv_saliency.3.0.0.dylib
calibrate: /usr/local/lib/libopencv_rgbd.3.0.0.dylib
calibrate: /usr/local/lib/libopencv_reg.3.0.0.dylib
calibrate: /usr/local/lib/libopencv_optflow.3.0.0.dylib
calibrate: /usr/local/lib/libopencv_line_descriptor.3.0.0.dylib
calibrate: /usr/local/lib/libopencv_latentsvm.3.0.0.dylib
calibrate: /usr/local/lib/libopencv_datasets.3.0.0.dylib
calibrate: /usr/local/lib/libopencv_ccalib.3.0.0.dylib
calibrate: /usr/local/lib/libopencv_bioinspired.3.0.0.dylib
calibrate: /usr/local/lib/libopencv_bgsegm.3.0.0.dylib
calibrate: /usr/local/lib/libopencv_adas.3.0.0.dylib
calibrate: /usr/local/lib/libopencv_videostab.3.0.0.dylib
calibrate: /usr/local/lib/libopencv_superres.3.0.0.dylib
calibrate: /usr/local/lib/libopencv_stitching.3.0.0.dylib
calibrate: /usr/local/lib/libopencv_photo.3.0.0.dylib
calibrate: /usr/local/lib/libopencv_objdetect.3.0.0.dylib
calibrate: /usr/local/lib/libopencv_hal.a
calibrate: /usr/local/lib/libopencv_text.3.0.0.dylib
calibrate: /usr/local/lib/libopencv_face.3.0.0.dylib
calibrate: /usr/local/lib/libopencv_xobjdetect.3.0.0.dylib
calibrate: /usr/local/lib/libopencv_xfeatures2d.3.0.0.dylib
calibrate: /usr/local/lib/libopencv_shape.3.0.0.dylib
calibrate: /usr/local/lib/libopencv_video.3.0.0.dylib
calibrate: /usr/local/lib/libopencv_calib3d.3.0.0.dylib
calibrate: /usr/local/lib/libopencv_features2d.3.0.0.dylib
calibrate: /usr/local/lib/libopencv_ml.3.0.0.dylib
calibrate: /usr/local/lib/libopencv_highgui.3.0.0.dylib
calibrate: /usr/local/lib/libopencv_videoio.3.0.0.dylib
calibrate: /usr/local/lib/libopencv_imgcodecs.3.0.0.dylib
calibrate: /usr/local/lib/libopencv_imgproc.3.0.0.dylib
calibrate: /usr/local/lib/libopencv_flann.3.0.0.dylib
calibrate: /usr/local/lib/libopencv_core.3.0.0.dylib
calibrate: /usr/local/lib/libopencv_hal.a
calibrate: /usr/local/share/OpenCV/3rdparty/lib/libippicv.a
calibrate: CMakeFiles/calibrate.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/raffy4284/Desktop/ObjectRecognition/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable calibrate"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/calibrate.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/calibrate.dir/build: calibrate

.PHONY : CMakeFiles/calibrate.dir/build

CMakeFiles/calibrate.dir/requires: CMakeFiles/calibrate.dir/calibrate.cpp.o.requires

.PHONY : CMakeFiles/calibrate.dir/requires

CMakeFiles/calibrate.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/calibrate.dir/cmake_clean.cmake
.PHONY : CMakeFiles/calibrate.dir/clean

CMakeFiles/calibrate.dir/depend:
	cd /Users/raffy4284/Desktop/ObjectRecognition && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/raffy4284/Desktop/ObjectRecognition /Users/raffy4284/Desktop/ObjectRecognition /Users/raffy4284/Desktop/ObjectRecognition /Users/raffy4284/Desktop/ObjectRecognition /Users/raffy4284/Desktop/ObjectRecognition/CMakeFiles/calibrate.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/calibrate.dir/depend
