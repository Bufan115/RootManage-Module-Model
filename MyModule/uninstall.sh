# 可选文件，因为有的模块是一次性的不需要卸载
# 这个脚本将会在模块被卸载时运行

# 详细说明：
# 1. 这个脚本是可选的，并不是所有模块都需要提供这个脚本。
# 2. 当用户决定卸载模块时，KernelSU 会自动调用这个脚本。
# 3. 你可以在这个脚本中执行任何需要在卸载模块时完成的清理工作。
# 4. 例如，你可以删除模块创建的文件、恢复系统设置、停止服务等。

# 示例：
# 假设你的模块在 /data/local/tmp 创建了一些临时文件，你可以在这里删除它们：
#rm -rf /data/local/tmp/my_module_temp_files

umount /system/bin/部落冲突防tp
rm -f /system/bin/部落冲突防tp


# 如果你的模块启动了某些服务，你可以在这里停止它们：
# 假设你的服务名为 my_module_service
# stop my_module_service

# 你还可以恢复系统的某些设置，例如：
# 假设你的模块修改了系统的 hosts 文件，你可以在这里恢复原始的 hosts 文件：
# cp /data/local/tmp/original_hosts /system/etc/hosts

# 请根据你的模块的具体需求来编写这个脚本。
