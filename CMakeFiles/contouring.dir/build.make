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
include CMakeFiles/contouring.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/contouring.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/contouring.dir/flags.make

# Object files for target contouring
contouring_OBJECTS =

# External object files for target contouring
contouring_EXTERNAL_OBJECTS =

contouring: CMakeFiles/contouring.dir/build.make
contouring: /usr/local/lib/libopencv_xphoto.3.0.0.dylib
contouring: /usr/local/lib/libopencv_ximgproc.3.0.0.dylib
contouring: /usr/local/lib/libopencv_tracking.3.0.0.dylib
contouring: /usr/local/lib/libopencv_surface_matching.3.0.0.dylib
contouring: /usr/local/lib/libopencv_saliency.3.0.0.dylib
contouring: /usr/local/lib/libopencv_rgbd.3.0.0.dylib
contouring: /usr/local/lib/libopencv_reg.3.0.0.dylib
contouring: /usr/local/lib/libopencv_optflow.3.0.0.dylib
contouring: /usr/local/lib/libopencv_line_descriptor.3.0.0.dylib
contouring: /usr/local/lib/libopencv_latentsvm.3.0.0.dylib
contouring: /usr/local/lib/libopencv_datasets.3.0.0.dylib
contouring: /usr/local/lib/libopencv_ccalib.3.0.0.dylib
contouring: /usr/local/lib/libopencv_bioinspired.3.0.0.dylib
contouring: /usr/local/lib/libopencv_bgsegm.3.0.0.dylib
contouring: /usr/local/lib/libopencv_adas.3.0.0.dylib
contouring: /usr/local/lib/libopencv_videostab.3.0.0.dylib
contouring: /usr/local/lib/libopencv_superres.3.0.0.dylib
contouring: /usr/local/lib/libopencv_stitching.3.0.0.dylib
contouring: /usr/local/lib/libopencv_photo.3.0.0.dylib
contouring: /usr/local/lib/libopencv_objdetect.3.0.0.dylib
contouring: /usr/local/lib/libopencv_hal.a
contouring: /usr/local/lib/libopencv_text.3.0.0.dylib
contouring: /usr/local/lib/libopencv_face.3.0.0.dylib
contouring: /usr/local/lib/libopencv_xobjdetect.3.0.0.dylib
contouring: /usr/local/lib/libopencv_xfeatures2d.3.0.0.dylib
contouring: /usr/local/lib/libopencv_shape.3.0.0.dylib
contouring: /usr/local/lib/libopencv_video.3.0.0.dylib
contouring: /usr/local/lib/libopencv_calib3d.3.0.0.dylib
contouring: /usr/local/lib/libopencv_features2d.3.0.0.dylib
contouring: /usr/local/lib/libopencv_ml.3.0.0.dylib
contouring: /usr/local/lib/libopencv_highgui.3.0.0.dylib
contouring: /usr/local/lib/libopencv_videoio.3.0.0.dylib
contouring: /usr/local/lib/libopencv_imgcodecs.3.0.0.dylib
contouring: /usr/local/lib/libopencv_imgproc.3.0.0.dylib
contouring: /usr/local/lib/libopencv_flann.3.0.0.dylib
contouring: /usr/local/lib/libopencv_core.3.0.0.dylib
contouring: /usr/local/lib/libopencv_hal.a
contouring: /usr/local/share/OpenCV/3rdparty/lib/libippicv.a
contouring: CMakeFiles/contouring.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/raffy4284/Desktop/ObjectRecognition/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Linking CXX executable contouring"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/contouring.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/contouring.dir/build: contouring

.PHONY : CMakeFiles/contouring.dir/build

CMakeFiles/contouring.dir/requires:

.PHONY : CMakeFiles/contouring.dir/requires

CMakeFiles/contouring.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/contouring.dir/cmake_clean.cmake
.PHONY : CMakeFiles/contouring.dir/clean

CMakeFiles/contouring.dir/depend:
	cd /Users/raffy4284/Desktop/ObjectRecognition && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/raffy4284/Desktop/ObjectRecognition /Users/raffy4284/Desktop/ObjectRecognition /Users/raffy4284/Desktop/ObjectRecognition /Users/raffy4284/Desktop/ObjectRecognition /Users/raffy4284/Desktop/ObjectRecognition/CMakeFiles/contouring.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/contouring.dir/depend

