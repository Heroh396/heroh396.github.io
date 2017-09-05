---
layout: post
title: Cài đặt Ubuntu song song với Windows từ usb
date: 2017-09-04 11:55
teaser: Hôm nay mình sẽ hướng dẫn chi tiết cách cài Ubuntu song song Windows và một số lỗi cơ bản khi cài đặt
image: /imgs/ubuntu.png
author: heroh396
comments: true
redirect_from:
shortUrl: 
---
*Note:* Bài viết được cập nhật thường xuyên. (Updated on Tue 05 Sep 2017 08:05:43 AM ICT)

# Cài đặt
---

### Tạo Usb ubuntu boot

Tải phiên bản Ubuntu mới nhất tại
[đây](https://www.ubuntu.com/download/desktop).

Tải phần mềm Universal USB Install để tạo usb boot tại
[đây](https://www.pendrivelinux.com/universal-usb-installer-easy-as-1-2-3/).

Sau khi tải xong, ta cài đặt phần mềm Universal USB Installer vào máy tính. Chọn
một usb tối thiếu 4 GB, cắm vào máy tính và chạy phần mềm Universal USB
Installer.
Sau đó ta chọn phiên bản Linux (Ubuntu), chọn thư mục chưa file Ubuntu và chọn
usb sử dụng làm boot. 

![Universal usb installer](/imgs/linux/universal_usb_installer.png)

Sau khi phần mềm chạy xong, ta đã có 1 usb boot có thể cài
Windows cho bất kì máy tính nào.

[Video hướng dẫn.](https://www.youtube.com/watch?v=FfEbsf06IwU)

### Phân vùng ổ đĩa

Trên hệ điều hành Windows, nhấn `Windows+R` hoặc vào thanh tìm kiếm rồi gõ
`diskmgmt.msc` và nhấn `Enter`. Sau đó cửa sổ Disk Management hiện lên, bây giờ
chúng ta tạo 1 phân vùng trống cho Ubuntu. 

Nếu bạn cài Ubuntu để tìm hiểu cơ bản hoặc ổ đĩa chỉ còn ít dung lượng thì tối
thiểu chúng ta tạo ra phân vùng 10 GB. Còn nếu cài Ubuntu để làm việc thì để
thoải mái mình sử dụng 30-50 GB.

[Video hướng dẫn.](https://www.youtube.com/watch?v=9fhawrUcC84)

### Tắt Fast startup (khởi động nhanh) trên Windows 10

Nếu sử dung Windows 10 song song Ubuntu thì mình khuyến nghị tắt Fast Startup để
tránh xung đột. Vào thanh tìm kiếm và gõ `Control panel` và nhấn `Enter`. Trong Control panel
chọn `Navigate to Power Options`. Nhấn vào `Choose what the power button does`,
sau đó nhấn vào `Change settings that are currently unavailable`. Sau đó tắt
check vào ô `Turn on fast startup (Recommended)` và lưu lại.

[Video hướng dẫn.](https://www.youtube.com/watch?v=4DY8xY3V6I0)


### Kiểm tra định dạng ổ đĩa (UEFI hay Legacy)

Nhấn `Windows + R`, nhập `msinfo32` và nhấn `Enter`. Trong cửa sổ System
Information, tìm dòng `BIOS Mode` và kiểm tra chế độ là `Legacy` hay `UEFI`.

![uefi or legacy](/imgs/linux/uefi_legacy.jpg)

### Chạy usb boot

Lưu ý rằng nếu bạn check được Windows đang sử dụng dùng Legacy hay UEFI thì usb
boot phải chạy với cùng kiểu như vậy. Cắm usb vào máy tính cần cài Ubuntu, khởi
động lại máy sau đó nhấn phím để lựa chọn Menu boot. (Phím này tùy thuộc vào từng dòng máy,
có thể là F1, F2, F9, F12, Delete... bạn có thể tham khảo tại
[đây](https://www.desertcrystal.com/bootkeys)). Sau đó lựa chọn tên của
Ubuntu boot (chỉ chọn Legacy or UEFI phù hợp với loại định dạng ổ đĩa đã kiểm
tra ở phần trước).

![uefi select boot device](/imgs/linux/uefi_select_boot_device.jpg)

Hình trên ta thấy usb đang dùng UEFI, chỉ phù hợp với hệ điều hành Windows
dạng UEFI. Trong trường hợp ta check được Windows ở trên là Legacy, tiến hành đổi kiểu
usb như sau:
Truy cập **BIOS** máy tính (khởi động lại máy bằng tổ hợp phím `Ctrl+Alt+Del` và ấn phím tắt F2, 
F9... tuỳ vào từng dòng máy, tham khảo tại
[đây](https://www.desertcrystal.com/bootkeys).). Sau đó vào phần `Boot` và
  tìm đến dòng `Boot Mode`. Tại đây ta chọn kiểu boot phù hợp với thiết bị, tiếp
  theo lưu lại và khởi động lại.

![select boot bios](/imgs/linux/select_boot_bios.jpg)



### Cài ubuntu song song

Mình không hướng dẫn chi tiết vì các link đều ghi rõ ràng rồi. Có một lưu ý là
nếu máy tính Ram >= 8 GB thì không cần thiết tạo phân vùng Swap, còn nếu Ram < 8
GB thì tạo 1 phân vùng Swap dung lượng gấp đôi số Ram hiện tại. 
Tạo phân vùng `/root` là bắt buộc, còn phân vùng `/home` có thể tạo để sau này
cài lại Ubuntu mà không mất dữ liệu cũ, phân vùng này có thể bỏ qua.

[Hướng dẫn chi tiết.](http://tuong.me/cach-cai-dat-ubuntu-song-song-windows/)


# Một số lỗi thường gặp
---

### Cài xong không vào được Ubuntu hoặc Windows

Lỗi này thường là do Grub khởi động của Ubuntu không hoạt động chính xác.
Ta có thể sửa lỗi này bằng công cụ `Boot Repair`. 

Đầu tiên cắm Ubuntu boot usb vào máy tính và chọn `Try Ubuntu without
installing`. Sau khi vào Ubuntu ảo, mở Terminal và chạy các lệnh sau:

`sudo add-apt-repository ppa:yannubuntu/boot-repair && sudo apt-get update`

`sudo apt-get install -y boot-repair && boot-repair`

Sau đó sử dụng `Recomended Repair`.

![boot repair](/imgs/linux/boot_repair.png)

[Video hướng dẫn.](https://www.youtube.com/watch?v=bVx86VbRJkQ)

[Cách khác để sửa grub - english.](https://askubuntu.com/questions/88384/how-can-i-repair-grub-how-to-get-ubuntu-back-after-installing-windows)

 
# Đường dẫn

- [Cách cài Ubuntu song song windows 7, 8 - blogtinhoc.](http://blogtinhoc.vn/cach-cai-ubuntu-14-04-12-04-song-song-voi-windows-7-8.html)
- [How can I dual-boot Windows 10 and Ubuntu on a UEFI HP notebook? - askubuntu.](https://askubuntu.com/questions/666631/how-can-i-dual-boot-windows-10-and-ubuntu-on-a-uefi-hp-notebook)
- [Check uefi or legacy?](https://www.eightforums.com/tutorials/29504-bios-mode-see-if-windows-boot-uefi-legacy-mode.html)
