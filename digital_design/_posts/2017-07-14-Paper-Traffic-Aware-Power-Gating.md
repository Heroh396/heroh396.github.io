---
layout: post
title:  Paper Traffic-Aware Power-Gating Scheme for Network-On-Chip Routers
date:   2017-07-14 03:11
teaser: This is a paper on power-gating project.
image: https://heroh396.github.io/imgs/many_paper.jpg
author: heroh396
comments: true
redirect_from: "/buzz/2017/07/14/traffic-aware-PG/"
shortUrl: 
---

## Overview

### Name
Sơ đồ power-gating nhận biết sự lưu thông cho NOC routers
The proposed design intelligently invokes the power-gating signals to the router buffers based on the statistical estimation of the traffic inter-arrival times. (Thiết kế đề xuất thông minh gọi tín hiệu power-gating cho router buffers dựa trên ước lượng thống kế của các lần đến...)
Overhead: chi phi phu
Idle state: trạng thái nhàn rỗi
Inter-arrival time: khoang thoi gian giua cac lan den

### Abtract
Thiết kế inter-connection network cải thiện hiệu suất multi-core system nhưng tăng cost của power thêm vào và tăng độ phức tạp của thiết kế.
Power gating là giải pháp để giảm static power, nhưng nó có delay và power overhead có thể gây giảm hiệu suất nếu ko đồng bộ traffic flow.
Bài báo giới thiệu technique tối ưu hóa power-gating của router input buffers bằng sử dụng lược đồ learning để đoán lưu lượng truy cập tương lai.
- Trên cơ sở sự ước lượng thống kê of các traffic inter-arrivel times (thời gian lưu thông của các lần đến)
Đồng bộ hóa các tín hiệu điều khiển bằng điện với lưu lượng truy cập đến sẽ giảm đáng kể điện năng gây ra do: độ trễ thức dậy bắt buộc để định tuyến traffic arrival ngay lâp tức và mức tiêu thụ năng lượng tĩnh do kéo dài trạng thái nhàn rỗi trong sự dự đoán xuất hiện trong tương lai.
Result: average 25% improvement in static power and it reduces the average packet latency by 35% comparison to basic power-gating.
- Overhead of power-gating decrease 41% compared to [1]


## Feature

### Intro
Giải pháp phổ biến để cân bằng perfomance vs power consumption trong NOC là power-gating trong idle buffers trong routers, nhưng nó có 2 nhược điểm:
- Wake-up delay (time cần của gate router buffer để tiếp tục hoạt động bthuong với lưu lượng đến) -> phụ thuộc vào các circuit parameters\
- Có power-gating overhead khi chuyển sleep mode to active mode, nên cần xác nhận là power-gating có ích.
Giải pháp là chờ đến T_idle cycle trong idle state, sau đó mới turn off các thành phần không có lưu lượng đến nhưng sẽ có static power tiêu thụ trong T_idle cho đến khi buffer hoàn toàn chuyển sang sleep mode.
Cần ước lượng average wake-up delay, T_breakeven (thời gian hòa vốn), time cần ở sleep mode để bù wake-up power overhead và T_idle -> tính trong [8]
- Paper mô tả sử dụng các inter-arrival times như learning data to ước lượng next inter-arrival times


### Proposed design (Kiến trúc đề xuất)
Gồm 2 giai đoạn (phase):
- 1. System trained for the test database and traffics.
	- Sau đó quan sát thời gian nhàn rỗi của bộ đệm
	- Tạo 1 hàm phân bố ước lượng

- 2. Quyết định tắt input buffers dựa trên inter-arrival time dự đoán bởi bộ predictor. Kiến trúc có ở Fig.1 đã đề xuất ở [6], tuy nhiên thêm bộ *power-gating control unit*

### TODO
Mesh topology
