export ARCH=arm64
export CROSS_COMPILE=/opt/gcc-linaro-7.5.0-2019.12-x86_64_aarch64-linux-gnu/bin/aarch64-linux-gnu-

echo "Would you want to config kernel from scratch? (y/n)"
read config_k

if [ $config_k = "y" ]; then
	cp arch/arm64/configs/defconfig .config
	make menuconfig
fi

echo "Would you want to config kernel? (y/n)"
read config_k

if [ $config_k = "y" ]; then
	make menuconfig
fi

# The kernel is patched to bypass kernel module version magic check
# https://gist.github.com/Flex1911/f63d62ca2fe9941b0d2a

echo "Make? (y/n)"
read make_k

if [ $make_k = "y" ]; then
	make -j10
fi
