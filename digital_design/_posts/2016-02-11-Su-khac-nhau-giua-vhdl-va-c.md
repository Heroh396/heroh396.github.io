---
layout: post
title: SỰ KHÁC NHAU GIỮA VHDL VÀ C/C++ 
date:   2016-11-02 11:57
teaser: Hôm nay mình sẽ làm rõ sự khác nhau cơ bản giữa VDHL và C/C++
image: https://heroh396.github.io/imgs/

author: heroh396
comments: true
redirect_from:
shortUrl: 
---

Chào mọi người.

Khi bắt đầu học lập trình, mọi người thường chỉ học ngôn ngữ lập trình như C, C++, Java, Python. Nếu sâu hơn, bạn sẽ học với Assembly, nó là ngôn ngữ lập trình bậc thấp, tuy nó khá khó để học và gần với ngôn ngữ máy nhưng ta vẫn dùng nó để lập trình phần mềm trên nền tảng phần cứng có sẵn.  

Nhưng khi bắt đầu học điện tử, mình thấy còn có ngôn ngữ mô tả phần cứng VHDL, Verylog. Vậy nó là gì, có khác gì những ngôn ngữ còn lại. Hôm nay chúng ta sẽ tìm hiểu về nó nhé 😀 

Nếu chia rõ ràng thì sẽ là 2 loại ngôn ngữ riêng biệt: ngôn ngữ lập trình  và ngôn ngữ mô tả phần cứng.  

Ngôn ngữ lập trình phần mềm (programming language): C, C++, Java, Assembly… 

Ngôn ngữ mô tả phần cứng (HDL – hardware description language): VHDL, Verilog… 

Mình sẽ ví dụ phân biệt VHDL với C (C++) cho nó dễ hiểu.  
– C là ngôn ngữ lập trình bậc trung (middle level language), kết hợp giữa ngôn ngữ lập trình bậc cao (Java, Python, Android) với ngôn ngữ lập trình bậc thấp (Assembly). C dùng để lập trình các phần mềm trên nền tảng phần cứng có sẵn (Intel Windows..). Ngược lại, VHDL là ngôn ngữ mô tả phần cứng. Mục đích của nó là để thiết kế các phần cứng như IC, vi điều khiển, các con chip trong máy tính… 

– Trong lập trình C, chúng ta chỉ chạy chương trình tuần tự từng lệnh một (sequential). Còn trong VHDL, các câu lệnh có thể chạy tuần tự (sequential) hoặc chạy đồng thời (concurrent).  

– Lập trình C thì chúng ta cần biết cú pháp cơ bản, sau đó sẽ viết chương trình dựa vào tính logic và thuật toán, chỉ vậy thôi (nghe có vẻ đơn giản..). Còn trong VHDL, ngoài logic, thuật toán, chúng ta còn phải có hiểu biết về mạch cứng, các mạch logic cơ bản điện tử số (AND, OR, NOR…).  
– Thêm một cái bổ sung nữa, đó là khi lập trình C thì phần cứng rất mạnh (toàn Intel Core-i RAM 16GB) thì lo gì về tài nguyên, sử dụng bộ nhớ máy. Nhưng khi lập trình VHDL thì lại cực kì quan tâm đến tài nguyên bộ nhớ. Các phần cứng có dung lượng nhỏ, và bị giới hạn nên cần lập trình phù hợp.  

Có gì bổ sung thì mời các bạn chia sẻ ở dưới, chúng ta sẽ cùng thảo luận.
Thanks for reading!
