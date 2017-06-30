---
layout: post
title:  "Power in digital design"
subtitle: "Research about the power in digital circuit"
date:   2017-06-29
categories: [digital design]
tags: [digital, vhdl]
permalink: /blogging/power-in-digital-design/
---
{% include JB/setup %}

## Introduction
- Earth is a huge battery that has been charged up over billions of years via the energy of sunlight in the form of plant growth (Trái Đất là một chiếc pin khổng lồ được nạp đầy trong hàng tỷ năm qua từ năng lượng của mặt trời dưới dạng sự tăng trường của các loài động, thực vật)
- Nguồn cũng có thể được xem xét ở chế độ hoạt động, chế độ chờ và chế độ ngủ.
 Năng lượng hoạt động là năng lượng tiêu thụ trong khi chip đang làm việc hữu
 ích.
## Dynamic power
- Standby power là điện năng tiêu thụ trong khi chip không hoạt động. Nếu đồng
  hồ bị dừng lại và các mạch tỷ lệ bịvô hiệu hóa, standby power được thiết lập
  bởi sự rò rỉ. Trong sleep mode, nguồn cung cấp cho các mạch không cần thiết
  được tắt để loại bỏ rò rỉ. Điều này làm giảm đáng kể sức mạnh của giấc ngủ,
  nhưng chip đòi hỏi thời gian và năng lượng để thức dậy để ngủ chỉ có thể sống
  sót nếu chip sẽ nhàn rỗi đủ lâu.
  [Gonzalez96] thấy rằng khoảng một phần ba power bộ vi xử lý được tiêu tốn trên đồng hồ, một phần ba khác về ký ức, và thứ ba còn lại về logic và wires.
- Trong công nghệ nano mét, gần một phần ba điện năng là rò rỉ. I/O tốc độ
  cao đóng góp một thành phần ngày càng tăng.
- As Vdd is a quadratic term, it is good to select the minimum V DD that can support the required frequency of operation. Likewise, we choose the lowest frequency of operation that achieves the desired end performance. The activity factor is mainly reduced by putting unused blocks to sleep.
- Nếu mạch có thể tắt hoàn toàn, activity factor và dynamic power tiến tới 0.
- Clock gating ANDs là 1 tín hiệu clock với 1 cái enable để ngắt clock khỏi khối
  nhàn rỗi (idle blocks). Nó có hiệu quả cao vì clock có alpha cao và vì việc
  cho phép clock vào đầu vào các thanh ghi của 1 khối  sẽ ngăn cản cá thanh ghi
  ngăn cản các thanh ghi từ bộ chuyển mạch và do đó dừng tất cả các hoạt động
  của mạch logic hạ lưu
- Điện dung chuyển mạch giảm khi chọn tí giai đoạn logic à sử dụng trans nhỏ
  hơn. Vì vậy gate phải lớn hoặc có alpha cao.
- Chọn delay thích hợp làm giảm năng lượng tiêu thụ. TIết kiệm năng lượng lớn
  thực hiện bằng cách làm giảm một mạch với 1 lượng nhỏ từ điểm delay tối thiểu. 
 

    

