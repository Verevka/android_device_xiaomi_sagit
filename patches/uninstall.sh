echo $1
rootdirectory="$PWD"
# ---------------------------------

dirs="external/DUtils frameworks/base/data/keyboards
frameworks/base/services/core/java hardware/qcom/display-caf/msm8998 packages/apps/Extensions"

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
