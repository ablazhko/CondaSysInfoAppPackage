echo ==================================================
echo === CMake configuration (MSVC + Ninja) started ===
echo ==================================================

mkdir build 2>nul
cd build

cmake -S .. -B . ^
  -G "Ninja" ^
  -DCMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX%

if errorlevel 1 exit 1

cmake --build . --config Release

if errorlevel 1 exit 1

cmake --install . --config Release

if errorlevel 1 exit 1