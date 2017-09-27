echo $1
rootdirectory="$PWD"
# ---------------------------------

dirs="external/ebtables frameworks/base/data/keyboards hardware/qcom/camera/msm8998"

for dir in $dirs ; do
	cd $rootdirectory
	cd $dir
	echo "Reverting $dir patches..."
	#git apply --reverse $rootdirectory/device/xiaomi/sagit/patches/$dir/*.patch
	git reset --hard
	git clean -f -d
	echo " "
done

# -----------------------------------
echo "Changing to build directory..."
cd $rootdirectory
