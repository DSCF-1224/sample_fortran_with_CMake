# CMake による fortran プログラムの分割コンパイル方法の確認

## 最小限の分割例

### 実行過程

#### step.01 &colon; 入力

```console
CMAKE_CURRENT_SOURCE_DIR$ cd build
CMAKE_CURRENT_SOURCE_DIR/build$ cmake -DCMAKE_BUILD_TYPE=Debug ..
```

#### step.01 &colon; 出力

```text
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

#### step.02 &colon; 入力

```console
CMAKE_CURRENT_SOURCE_DIR/build$ make
```

#### step.02 &colon; 出力

```text
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

#### step.03 &colon; 入力

```console
CMAKE_CURRENT_SOURCE_DIR/build$ ./sample.exe
```

#### step.03 &colon; 出力

```text
 GCC version 9.4.0
```

#### `build` フォルダの削除（初期化）

```console
CMAKE_CURRENT_SOURCE_DIR/build$ cd ../
CMAKE_CURRENT_SOURCE_DIR$ rm -rf build/
CMAKE_CURRENT_SOURCE_DIR$ mkdir build
```

<!-- EOF -->
