---
layout: post
title:  Research about the power in digital circuit
date:   2017-06-29 03:26
teaser: Introduction about power in digital circuit.
image:  /imgs/others/write_note.jpg
author: heroh396
comments: true
redirect_from: "/buzz/2017/06/29/power-digital/"
shortUrl: 
---

Earth is a huge battery that has been charged up over billions of years via the energy of sunlight in the form of plant growth (Trái Đất là một chiếc pin khổng lồ được nạp đầy trong hàng tỷ năm qua từ năng lượng của mặt trời dưới dạng sự tăng trường của các loài động, thực vật)
Nguồn cũng có thể được xem xét ở chế độ hoạt động, chế độ chờ và chế độ ngủ.  Năng lượng hoạt động là năng lượng tiêu thụ trong khi chip đang làm việc hữu
 ích.

- *Active power*
- *Standby power*: điện năng tiêu thụ trong khi chip không hoạt động. Nếu đồng hồ bị dừng lại và các mạch tỷ lệ bị vô hiệu hóa, standby power được thiết lập
  bởi sự rò rỉ
- *Sleep mode power*: nguồn cung cấp cho các mạch không cần thiết được tắt để loại bỏ rò rỉ. Điều này làm giảm đáng kể sức mạnh của giấc ngủ, nhưng chip đòi hỏi thời gian và năng lượng để thức dậy để ngủ chỉ có thể sống sót nếu chip sẽ nhàn rỗi đủ lâu.
[Gonzalez96] thấy rằng khoảng một phần ba power bộ vi xử lý được tiêu tốn trên đồng hồ, một phần ba khác trên memory, và thứ ba còn lại về logic và wires.
Trong công nghệ nano mét, gần một phần ba điện năng là rò rỉ. I/O tốc độ cao đóng góp một thành phần ngày càng tăng.

## Dynamic power

### Activity Factor
*Activity Factor* là phần trăm thời gian mà gate port switch trên tổng số clock cycle (đặt f_sw là tần số trung bình).
As Vdd is a quadratic term, it is good to select the minimum Vdd that can support the required frequency of operation. Likewise, we choose the lowest frequency of operation that achieves the desired end performance. The activity factor is mainly reduced by putting unused blocks to sleep.
Nếu mạch có thể tắt hoàn toàn, activity factor và dynamic power tiến tới 0.
*Clock gating*: ANDs là 1 tín hiệu clock với 1 cái enable để ngắt clock khỏi khối nhàn rỗi (idle blocks). Nó có hiệu quả cao vì clock có alpha cao và vì việc cho phép clock vào đầu vào các thanh ghi của 1 khối sẽ ngăn cản các thanh ghi từ bộ chuyển mạch và do đó dừng tất cả các hoạt động của mạch logic hạ lưu
*Gitches*: sẽ luôn xảy ra nếu (propagation delay != 0)

### Capacitance
Điện dung chuyển mạch giảm khi chọn ít giai đoạn logic và sử dụng trans nhỏ hơn. Vì vậy gate phải lớn hoặc có alpha cao.
Chọn delay thích hợp làm giảm năng lượng tiêu thụ. TIết kiệm năng lượng lớn thực hiện bằng cách làm giảm một mạch với 1 lượng nhỏ từ điểm delay tối thiểu. 

### Voltage
Thế có tác động bậc 2, nên giảm thế cung cấp sẽ giảm năng lượng
*Volate domains*:  Chip divided into multiple voltage domains, where each domain isoptimized for the needs of certain circuits.
Challenges: converting voltage levels for signals that cross domains; selecting with circuits belong in which domain; routing power supplies to tmultiple domains
*DVS*: Dynamic voltage Scaling (DVFS, UDVS): giảm tần số cho những tasks đơn giản hơn mà vẫn đảm bảo đúng deadline, sau đó giảm điện áp cung cấp mức tối thiểu để vận hành tần số đó => Scale điện áp động

### Frequency
Dynamic power tỉ lệ thuận với tần số, vì vậy không nên cho tần số quá cao
Giảm frequency giúp giảm số trans or sdung thế cung cấp nhỏ hơn -> ảnh hưởng lớn đến hiệu năng
Using multiple frequency domains

### Short-Circuit Current
Xảy ra khi cả pullup và pull down đều ON.
Dòng này tăng khi input edge bị slow, dòng này giảm khi điện dung tụ tăng.

### Resonant Circuits (Mach cong huong)
Decrease power bằng cách chuyển power qua lại giữa các thành phần luwu trữ như là tụ, cuộn cảm thay vì cho xuống đất -> phù hợp cho các ứng dụng có clock frequency là constant

## Static power

### Static power source
*Subthresh leakage* (rò rỉ dưới ngưỡng)
- Dòng subthreshs leakage xảy ra khi trans OFF
- Tăng điện áp nguồn or sử dụng 1 điện áp body âm (negative body voltage) sẽ giảm rò rỉ
*Gate leakage* (rò rỉ cổng)
- Xảy ra khi carriers đi qua 1 lớp điện môi gate mỏng khi điện áp đang có mặt trên gate (when gate is ON)
*Junction leakage* (rò rỉ lớp chuyển tiếp)
- Xảy ra khi 1 vùng khuyếch tán source or drain có 1 điện thế khác trên bề mặt
*Contention current* (dòng xung đột)
- Mạch static CMOS không có Contention current, tuy nhiên các mạch thay thế có 1 chút 
*Static power Estimation* (ước lượng)
- Bằng tổng chiều rộng trans * leakage current trên mỗi chiều rộng * các phần của trans trong trạng thái rò rỉ.

### Power gating (197)
Cách đơn giản nhất để giảm dòng tĩnh trong sleep mode là tắt nguồn cấp cho các sleeping blocks. Kĩ thuật này họi là *power gating*.
Hình 5.24, Khối logic nhận power từ 1 đường ray Vdd ảo, khi khối active, header switch trans là ON, kết nối Vddv với Vdd, khi khối sleep, header swich đổi sang , Vddv trôi nổi và dần về 0.
Power gating giới thiếu 1 issuses: header switch đòi hỏi kích cỡ, nó cần thêm 1 minimum delay trong chế độ hoạt động và phải có rò rỉ thấp khi đi ngủ. Chuyển đổi giữa active và sleep mất time và power, do đó power gating chỉ hiệu quả khi khối tắt đủ lâu.
Nếu thiết bị chuyển mạch đủ nhanh, ta có thể tiết kiệm leakage power trong active mode bằng cách tắt các gate block.
*Power gating design*
Power gating có thể thực hiện bên ngoài với 1 disable input để điều chỉnh điện áp.

### Multiple Threshold Voltages and Oxide Thicknesses (điện áp ngưỡng nhiều chiều và độ dày oxit)

### Variable Threshold Voltages

### Input Vector Control
Như đã được minh họa trong Bảng 5.2, hiệu ứng ngăn xếp và đặt hàng đầu vào gây ra ngưỡng dưới và rò rỉ cổng thay đổi tối đa hai bậc độ giữa các trường hợp tốt nhất và xấu nhất. Vì vậy, sự rò rỉ của một khối logic phụ thuộc vào đầu vào cổng, do đó phụ thuộc vào các đầu vào cho khối logic. 
Ý tưởng điều khiển vector đầu vào là áp dụng mô hình đầu vào giảm thiểu sự rò rỉ khối khi khối được đặt trong chế độ nghỉ [Narendra06, Abdollahi04]. Các vector có thể được áp dụng thông qua thiết lập / đặt lại đầu vào thanh ghi hoặc thông qua một chuỗi quét.
Khó kiểm soát tất cả các cổng trong một khối logic bằng cách sử dụng các đầu vào khối, nhưng các vec tơ đầu vào tốt nhất có thể tiết kiệm 25-50% rò rỉ so với các vectơ ngẫu nhiên. Áp dụng các vector đầu vào gây ra một số hoạt động chuyển đổi, do đó, một khối có thể cần phải ở lại trong giấc ngủ cho hàng ngàn chu kỳ để thu hồi năng lượng nhập vào trạng thái ngủ.


## Energy-Delay Optimization

### Minimum Energy
Tích của power nhan voi time = energy. Vi vay power-delay product (PDP - san phan cua cong suat - tre) la energy. 
The minimum energy point la nang luong toi thieu cho 1 hoat dong neu delay la khong quan trong. 

### Minimum Energy-Delay Product
Energy-Delay Product (EDP) là 1 số liệu phổ biến dùng để biểu hiện tầm quan trọng cân bằng giữa Energy và Delay. 
Bỏ qua rò rỉ, chúng ta có giải quyết với việc supply voltage là minimum của EDP

### Minimum Energy Under a Delay Constraint (Ràng buộc thời gian trễ)
TODO: read more


## Low Power Architecture
VLSI thiết kế được sử dụng để được hạn chế bởi số lượng bóng bán dẫn có thể phù hợp trên một chip.
Hiện này có thể tích hợp hàng tỉ trans trên chip, thiết kế đã đạt tới ràng buộc năng lượng và most energy-efficient design is the highest performer. 
- Thúc đẩy multicore processors

### Microarchitecture
Kiến trúc tiết kiệm năng lượng tận dụng các nguyên tắc thiết kế có cấu trúc của mô đun và địa phương.
[Pollack99] quan sát thấy hiệu suất của bộ xử lý tăng lên với căn bậc hai của số lượng bóng bán dẫn.
Xây dựng các bộ vi xử lý phức tạp, kéo dài để trích xuất các bit cuối cùng của song song cấp giảng dạy từ một vấn đề là sử dụng năng lượng không hiệu quả cao. 
Kiến trúc vi mô đang tiến tới số lượng lớn các lõi đơn giản hơn để xử lý sự song song cấp công việc và dữ liệu. Các lõi nhỏ hơn cũng có dây ngắn hơn và truy cập bộ nhớ nhanh hơn. 
Memories có mật độ năng lượng thấp hơn nhiều so với logic.
Memories bây giờ bao gồm hơn một nửa diện tích của nhiều chip. Các đơn vị chức năng chuyên biệt có thể đưa ra mức độ hiệu quả năng lượng cao hơn các bộ vi xử lý thông thường. 

### Parallelism and Pipelining
Nothing

### Power Managements Modes
Tắt các phần của chip khi chúng không hoạt động bằng cách áp dụng công tắc đồng hồ và điện.
Nhiều chip bây giờ sử dụng một loạt các chế độ quản lý điện để có 1 sự đánh đổi giữa tiết kiệm điện và thời gian đánh thức.
TODO: read figure 5.30 (page 205-206)


## Pitfalls and Fallacies (Cạm bẫy và thất bại)

### Oversizing Gates
Tăng kích thước 2 lần gate không giảm delay mà còn tăng 2 lần power.

### Designing for speed without regard to power
Các quy trình Nanometer đã đạt đến một điểm mà ở đó không còn có thể thiết kế một con chip cỡ lớn cho tốc độ mà không cần quan tâm đến công suất: chip sẽ không thể làm mát. 
Thiết kế phải có hiệu suất năng lượng. Các hệ thống được điều chỉnh riêng cho tốc độ có khuynh hướng sử dụng các cổng lớn và logic suy đoán mà tiêu thụ rất nhiều điện năng. 
Nếu một lõi hoặc phần tử xử lý có thể được đơn giản hóa để cung cấp 80% hiệu suất ở 50% điện năng, thì hai lõi song song có thể cung cấp 160% lượng dữ liệu với cùng công suất.

### Báo cáo công suất ở một tần số nhất định thay vì năng lượng mỗi lần hoạt động
Đôi khi một mô đun được mô tả bằng sức mạnh của nó ở tần số tùy ý (ví dụ: 10 mW
@ 1 GHz). Đây tương đương với năng lượng báo cáo vì E = P / f (ví dụ, 10 pJ).
Báo cáo năng lượng được cho là sạch hơn vì nó là một số duy nhất.

### Báo cáo Power-Delay Product khi Energy-Delay Product có nghĩa là
Mở rộng điểm trước, đôi khi một hệ thống được mô tả bởi PDP của nó ở một tần số nhất định, nơi tần số chậm hơn so với sự chậm trễ của sự chậm trễ. Số liệu này thực sự là một biến thể của EDP, bởi vì sức mạnh ở tần số đủ thấp tương đương với năng lượng. Báo cáo EDP chắc chắn là sạch hơn bởi vì nó không liên quan đến một sự lựa chọn tùy ý về tần số.

### Không tính đến sự rò rỉ
Nhiều nhà thiết kế đã quen với việc tập trung vào năng lượng động. Rò rỉ trong tất cả các hình thức của nó đã trở nên cực kỳ quan trọng trong quy trình nanomet. Bỏ qua nó không chỉ đánh giá thấp điện năng tiêu thụ mà còn có thể gây ra thất bại chức năng trong các mạch nhạy cảm.
