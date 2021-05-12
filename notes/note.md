完成了[Dynamic-ORB-SLAM2](https://github.com/Horacehxw/Dynamic_ORB_SLAM2)代码的编译，相对ORB_SLAM2/3，主要是需要OpenCV-3.4.5，到官网下载再进行编译即可，注意指定安装路径：

```bash
cd opencv-3.4.5/
mkdir build
cd build
cmake -D CMAKE_BUILD_TYPE=Release -D CMAKE_INSTALL_PREFIX=/home/mate/src/opencv-3.4.5/local ..
```

修改Dynamic_ORB_SLAM2/CMakeLists.txt和Dynamic_ORB_SLAM2Thirdparty/DBoW2/CMakeLists.txt，主要是指定上述opencv

-3.4.5的安装目录：

```cmake
set(OpenCV_DIR "/home/mate/src/opencv-3.4.5/local/share/OpenCV/") # add by mate
```

运行stereo_euroc的代码如下：

```bash
./Examples/Stereo/stereo_euroc Vocabulary/ORBvoc.txt Examples/Stereo/EuRoC.yaml ~/Downloads/datasets/EuRoC/MH_01_easy/mav0/cam0/data ~/Downloads/datasets/EuRoC/MH_01_easy/mav0/cam1/data Examples/Stereo/EuRoC_TimeStamps/MH01.txt
```



其他：

fork[Dynamic-ORB-SLAM2](https://github.com/Horacehxw/Dynamic_ORB_SLAM2)到个人github账号，然后在本地仓库：

```bash
git remote add jaguar git@github.com:JimGreenJaguar/Dynamic_ORB_SLAM2.git
```

推送本地更新到个人github账号：

```bash
git push jaguar dev
```

