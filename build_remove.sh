echo "Removing Thirdparty/DBoW2/build ..."

cd Thirdparty/DBoW2
rm -r build


cd ../g2o
echo "Removing Thirdparty/g2o/build ..."
rm -r build

cd ../../

echo "Removing ORB_SLAM2/build ..."
rm -r build

