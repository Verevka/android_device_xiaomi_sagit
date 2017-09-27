echo $1
rootdirectory="$PWD"
# ---------------------------------

dirs="external/ebtables frameworks/base/data/keyboards hardware/qcom/camera/msm8998"

for dir in $dirs ; do
	cd $rootdirectory
	cd $dir
	echo "Applying $dir patches..."
	git apply $rootdirectory/device/xiaomi/sagit/patches/$dir/*.patch
	echo " "
done

# -----------------------------------
echo "Changing to build directory..."
cd $rootdirectory
