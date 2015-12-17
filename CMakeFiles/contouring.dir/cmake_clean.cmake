file(REMOVE_RECURSE
  "contouring.pdb"
  "contouring"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/contouring.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
