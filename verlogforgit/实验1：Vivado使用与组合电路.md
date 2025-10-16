# 实验1：Vivado使用与组合电路

姓名：     学号：       班级：

## 一、多路复用器仿真波形分析

### 1.1 仿真波形截图

​    能正确、清晰体现所要求的功能

![image-20251016234546028](C:\Users\CCCaiBoYu\AppData\Roaming\Typora\typora-user-images\image-20251016234546028.png)

### 1.2 波形分析
​    结合模块功能，对关键信号和信号的关键变化做说明分析

- 0ns~10ns，`en=0`，无论 `mux_sel` 和输入数据为何值，`output_c` 恒为 `4'b1111`，符合“禁能时输出全1”的预期。

- 10ns 时，`en` 变为 1 且 `mux_sel=0`，模块为加法模式，`output_c = input_a + input_b`，输出正确，符合预期。

- 10ns～30ns 期间，`en=1` 且 `mux_sel=0` 保持不变，输入数据`input_a` ` input_b`变化，`output_c` 始终为 `input_a` +` input_b`，符合预期

- 30ns 时，`mux_sel` 由 0 变为 1，模块为减法模式，`output_c = input_a - input_b`，符合预期。

- 30ns～50ns 期间，`en=1` 且 `mux_sel=1`，输入数据`input_a` ` input_b`变化，`output_c` 始终为  `input_a` -` input_b`，输出正确，符合预期。

- 50ns 仿真结束

## 二、多路复用器电路图

### 2.1 RTL Analysis（RTL分析图）截图

![image-20251016232907002](C:\Users\CCCaiBoYu\AppData\Roaming\Typora\typora-user-images\image-20251016232907002.png)

### 2.2 Synthesis schematic（综合后电路图）截图

​    注意不是Device图

![image-20251016232924844](C:\Users\CCCaiBoYu\AppData\Roaming\Typora\typora-user-images\image-20251016232924844.png)

## 三、请回答：

​    （1）比特流文件（.bit文件）默认在Vivado工程的哪个子目录下？



> "project\project.runs\impl_1\project.bit"



​    （2）以指导书所给的3-8译码器工程为例，若芯片型号选成xa7a12tcpg238-2I是否可以？

​         如果不可以，会在什么阶段出现什么样的错误？

​         请修改测试，给出“出错的截图”，并说明怎么修改已有的Vivado工程芯片型号。



- 不可以

- 在RTL Analysis, synthesis, implementation阶段出现critical warning

![image-20251017001538583](C:\Users\CCCaiBoYu\AppData\Roaming\Typora\typora-user-images\image-20251017001538583.png)



- 在generate bitstream阶段出现error

![image-20251017001841455](C:\Users\CCCaiBoYu\AppData\Roaming\Typora\typora-user-images\image-20251017001841455.png)

- 修改方法：点击左侧PROJECT MANAGER下的settings，点击Project device右侧的...符号重新进行芯片选择