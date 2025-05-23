# 可选文件
# 这个脚本将会在 post-fs-data 模式下运行

MODDIR=${0%/*}
# 绑定挂载二进制文件
mount -o bind $MODDIR/system/bin/部落冲突防tp /system/bin/部落冲突防tp

# 
# 说明:
# post-fs-data.sh 是一个可选的启动脚本文件，它将在 post-fs-data 模式下运行。
# 在这个模式下，脚本会在任何模块被挂载之前执行，这使得模块开发者可以在模块被挂载之前动态地调整它们的模块。
# 这个阶段发生在 Zygote 启动之前，并且是阻塞的，在执行完成之前或者 10 秒钟之后，启动过程会暂停。
# 请注意，使用 setprop 会导致启动过程死锁，建议使用 resetprop -n <prop_name> <prop_value> 代替。


