使用ai辅助编写！！！

# xpad beitong dkms

- 本项目旨在解决linux下北通鲲鹏系列无法被正常识别xinput模式，详见[ArchWiki](https://wiki.archlinux.org/title/Gamepad#ShanWan)  
~~ps：ArchWiki上的方法我尝试后无法解决问题~~
- 稳定性未知，目前我的设备（北通鲲鹏20汉玉白）上测试可以使用


## 安装


```bash
paru -S xpad-beitong-dkms
```
or
```bash
pip -S xpad-beitong-dkms
```

## 参考文献

- https://github.com/zen-kernel/zen-kernel/blob/6.18/main/drivers/input/joystick/xpad.c
- https://lore.kernel.org/linux-input/20260102030154.197749-3-liushuyu@aosc.io/
- https://lkml.org/lkml/2026/2/10/204