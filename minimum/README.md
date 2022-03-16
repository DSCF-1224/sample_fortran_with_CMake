# CMake による fortran プログラムの分割コンパイル方法の確認

## 最小限の分割例

### 実行

```console:input.step.01
CMAKE_CURRENT_SOURCE_DIR$ cd build
CMAKE_CURRENT_SOURCE_DIR/build$ cmake -DCMAKE_BUILD_TYPE=Debug ..
```

```text:output.step.01
-- The Fortran compiler identification is GNU 9.4.0
-- Check for working Fortran compiler: /usr/bin/f95
-- Check for working Fortran compiler: /usr/bin/f95  -- works
-- Detecting Fortran compiler ABI info
-- Detecting Fortran compiler ABI info - done
-- Checking whether /usr/bin/f95 supports Fortran 90
-- Checking whether /usr/bin/f95 supports Fortran 90 -- yes
-- Configuring done
-- Generating done
-- Build files have been written to: /CMAKE_CURRENT_SOURCE_DIR/build
```

```console:input.step.02
CMAKE_CURRENT_SOURCE_DIR/build$ make
```

```text:output.step.02
Scanning dependencies of target sample
[ 25%] Building Fortran object package/CMakeFiles/sample.dir/module.f90.o
[ 50%] Linking Fortran static library libsample.a
[ 50%] Built target sample
Scanning dependencies of target sample.exe
[ 75%] Building Fortran object CMakeFiles/sample.exe.dir/main.f90.o
[100%] Linking Fortran executable sample.exe
[100%] Built target sample.exe
hoge:~/CMAKE_CURRENT_SOURCE_DIR/build$ ./sample.exe
 GCC version 9.4.0
hoge:~/CMAKE_CURRENT_SOURCE_DIR/build$ ^C
```

```console:input.step.03
CMAKE_CURRENT_SOURCE_DIR/build$ ./sample.exe
```

```console:input.step.03
 GCC version 9.4.0
```

<!-- EOF -->
