echo ================================================
echo === CMake configuration (MSVC + Ninja) started ===
echo ================================================

mkdir build 2>nul
cd build

cmake -S .. -B . ^
  -G "Ninja" ^
  -DCMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX%

if errorlevel 1 exit 1

cmake --build .

if errorlevel 1 exit 1

cmake --install .

if errorlevel 1 exit 1