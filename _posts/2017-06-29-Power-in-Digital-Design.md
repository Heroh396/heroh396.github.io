--
layout: post
title:  "Power in digital design"
subtitle: "Research about the power in digital circuit"
date:   2017-06-29
categories: [ digital design ]
tags: [ digital, vhdl ]
permalink: /blogging/power-in-digital-design/
---
{% include JB/setup %}

## Introduction
- Earth is a huge battery that has been charged up over billions of years via the energy of sunlight in the form of plant growth (Trái Đất là một chiếc pin khổng lồ được nạp đầy trong hàng tỷ năm qua từ năng lượng của mặt trời dưới dạng sự tăng trường của các loài động, thực vật)
- Nguồn cũng có thể được xem xét ở chế độ hoạt động, chế độ chờ và chế độ ngủ.  Năng lượng hoạt động là năng lượng tiêu thụ trong khi chip đang làm việc hữu
 ích.

- *Active power*:
- *Standby power*: điện năng tiêu thụ trong khi chip không hoạt động. Nếu đồng hồ bị dừng lại và các mạch tỷ lệ bị vô hiệu hóa, standby power được thiết lập
  bởi sự rò rỉ
- *Sleep mode power*: nguồn cung cấp cho các mạch không cần thiết được tắt để loại bỏ rò rỉ. Điều này làm giảm đáng kể sức mạnh của giấc ngủ, nhưng chip đòi hỏi thời gian và năng lượng để thức dậy để ngủ chỉ có thể sống sót nếu chip sẽ nhàn rỗi đủ lâu.
- [Gonzalez96] thấy rằng khoảng một phần ba power bộ vi xử lý được tiêu tốn trên đồng hồ, một phần ba khác trên memory, và thứ ba còn lại về logic và wires.
- Trong công nghệ nano mét, gần một phần ba điện năng là rò rỉ. I/O tốc độ cao đóng góp một thành phần ngày càng tăng.

## Dynamic power
### Activity Factor
- *Activity Factor* là phần trăm thời gian mà gate port switch trên tổng số clock cycle (đặt f_sw là tần số trung bình)
- As Vdd is a quadratic term, it is good to select the minimum Vdd that can support the required frequency of operation. Likewise, we choose the lowest frequency of operation that achieves the desired end performance. The activity factor is mainly reduced by putting unused blocks to sleep.
- Nếu mạch có thể tắt hoàn toàn, activity factor và dynamic power tiến tới 0.
- *Clock gating*: ANDs là 1 tín hiệu clock với 1 cái enable để ngắt clock khỏi khối nhàn rỗi (idle blocks). Nó có hiệu quả cao vì clock có alpha cao và vì việc cho phép clock vào đầu vào các thanh ghi của 1 khối sẽ ngăn cản các thanh ghi từ bộ chuyển mạch và do đó dừng tất cả các hoạt động của mạch logic hạ lưu
- *Gitches*: sẽ luôn xảy ra nếu (propagation delay != 0)

### Capacitance
- Điện dung chuyển mạch giảm khi chọn ít giai đoạn logic và sử dụng trans nhỏ hơn. Vì vậy gate phải lớn hoặc có alpha cao.
- Chọn delay thích hợp làm giảm năng lượng tiêu thụ. TIết kiệm năng lượng lớn thực hiện bằng cách làm giảm một mạch với 1 lượng nhỏ từ điểm delay tối thiểu. 

### Voltage
- Thế có tác động bậc 2, nên giảm thế cung cấp sẽ giảm năng lượng
- *Volate domains*:  Chip divided into multiple voltage domains, where each domain isoptimized for the needs of certain circuits.
- Challenges: converting voltage levels for signals that cross domains; selecting with circuits belong in which domain; routing power supplies to tmultiple domains
- *DVS*: Dynamic voltage Scaling (DVFS, UDVS): giảm tần số cho những tasks đơn
  giản hơn mà vẫn đảm bảo đúng deadline, sau đó giảm điện áp cung cấp mức tối
  thiểu để vận hành tần số đó => Scale điện áp động

### Frequency
- Dynamic power tỉ lệ thuận với tần số, vì vậy không nên cho tần số quá cao
- Giảm frequency giúp giảm số trans or sdung thế cung cấp nhỏ hơn -> ảnh hưởng
  lớn đến hiệu năng
- Using multiple frequency domains

### Short-Circuit Current
- Xảy ra khi cả pullup và pull down đều ON
- Dòng này tăng khi input edge bị slow, dòng này giảm khi điện dung tụ tăng

### Resonant Circuits (Mach cong huong)
- Decrease power bằng cách chuyển power qua lại giữa các thành phần luwu trữ như
  là tụ, cuộn cảm thay vì cho xuống đất -> phù hợp cho các ứng dụng có clock
  frequency là constant

## Static power
### Static power source
- *Subthresh leakage* (rò rỉ dưới ngưỡng)
- Dòng subthreshs leakage xảy ra khi trans OFF
- Tăng điện áp nguồn or sử dụng 1 điện áp body âm (negative body voltage) sẽ
  giảm rò rỉ
- *Gate leakage* (rò rỉ cổng)
- Xảy ra khi carriers đi qua 1 lớp điện môi gate mỏng khi điện áp đang có mặt
  trên gate (when gate is ON)
- *Junction leakage* (rò rỉ lớp chuyển tiếp)
- Xảy ra khi 1 vùng khuyếch tán source or drain có 1 điện thế khác trên bề mặt
- *Contention current* (dòng xung đột)
- Mạch static CMOS không có Contention current, tuy nhiên các mạch thay thế có 1
  chút 
- *Static power Estimation* (ước lượng)
- Bằng tổng chiều rộng trans * leakage current trên mỗi chiều rộng * các phần
  của trans trong trạng thái rò rỉ

### Power gating (197)
- Cách đơn giản nhất để giảm dòng tĩnh trong sleep mode là tắt nguồn cấp cho các
  sleeping blocks. Kĩ thuật này họi là *power gating*.
- Hình 5.24, Khối logic nhận power từ 1 đường ray Vdd ảo, khi khối active,
  header switch trans là ON, kết nối Vddv với Vdd, khi khối sleep, header swich
  đổi sang , Vddv trôi nổi và dần về 0.
- Power gating giới thiếu 1 issuses: header switch đòi hỏi kích cỡ, nó cần thêm
  1 minimum delay trong chế độ hoạt động và phải có rò rỉ thấp khi đi ngủ.
- Chuyển đổi giữa active và sleep mất time và power, do đó power gating chỉ hiệu
  quả khi khối tắt đủ lâu.
- Nếu thiết bị chuyển mạch đủ nhanh, ta có thể tiết kiệm leakage power trong
  active mode bằng cách tắt các gate block.
- *Power gating design*
- Power gating có thể thực hiện bên ngoài với 1 disable input để điều chỉnh điện áp.

### Multiple Threshold Voltages and Oxide Thicknesses (điện áp ngưỡng nhiều chiều và độ dày oxit)

### Variable Threshold Voltages

### Input Vector Control
- Như đã được minh họa trong Bảng 5.2, hiệu ứng ngăn xếp và đặt hàng đầu vào gây
  ra ngưỡng dưới và rò rỉ cổng thay đổi tối đa hai bậc độ giữa các trường hợp
  tốt nhất và xấu nhất. Vì vậy, sự rò rỉ của một khối logic phụ thuộc vào đầu
  vào cổng, do đó phụ thuộc vào các đầu vào cho khối logic. 
- Ý tưởng điều khiển vector đầu vào là áp dụng mô hình đầu vào giảm thiểu sự rò rỉ khối khi khối
  được đặt trong chế độ nghỉ [Narendra06, Abdollahi04]. Các vector có thể được
  áp dụng thông qua thiết lập / đặt lại đầu vào thanh ghi hoặc thông qua một chuỗi
  quét.
- Khó kiểm soát tất cả các cổng trong một khối logic bằng cách sử dụng các
  đầu vào khối, nhưng các vec tơ đầu vào tốt nhất có thể tiết kiệm 25-50% rò rỉ
  so với các vectơ ngẫu nhiên. Áp dụng các vector đầu vào gây ra một số hoạt
  động chuyển đổi, do đó, một khối có thể cần phải ở lại trong giấc ngủ cho hàng
  ngàn chu kỳ để thu hồi năng lượng nhập vào trạng thái ngủ.
