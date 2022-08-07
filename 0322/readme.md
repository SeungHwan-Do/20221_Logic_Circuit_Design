# 작성 규칙 tmi
## 공백
- \b, \t, \n 전부 공백과 같음
- String 내부에서는 구분함!

## 주석
- 1줄 : //
- 여러 줄 : /* */

## 연산자
- 단항 연산자 : Unary ex) ~
- 이항 연산자 : Binary ex) &&
- 삼항 연산자 : Ternary ex) ? :

## 숫자 지정
### 크기 지정
```verilog
4'b1111 // 4비트 2진수
12'habc // 12비트 16진수
16'd255 // 16비트 10진수
```
### 크기 지정 X
```verilog
23456 // 32비트 10진수 : 기본값
'hc3 // 32비트 16진수
'o21 // 32비트 8진수
```
##  음수
```verilog
-6'd3 // 3의 2's compliment로 저장되는 음수
-6'sd3 // 부호가있는 정수연산에 사용됨
4'd-2 // 잘못된 표현
```
## "_"와 "?"
- "_" 가독성을 위해서 사용, 인식x
- "?" "z"를 나타내기 위함. 사용 안하는것이 좋음

## String
- "와 "로 묶어서 사용
- 한줄 이상 넘기지 않기를 권장
- 대게 테스트벤치, 디버깅에 사용

 # 자료형
 ## Nets
 - 하드웨어 요소간 연결
 - 키워드는 wire (기본 1비트, 기본값 z)
 - Net : 키워드가 아니고 자료형의 클래스를 나타냄(wire, wand, wor ... )
 ## 레지스터
 - 자료 저장소를 나타냄
 - 다른 값이 저장되기 전까지 값을 유지함
 - 키워드 : reg(기본값 x)
```verilog
reg reset; 
initial
begin
 reset = 1'b1;
 #100 reset = 1'b0
end
```
## Signed register
```verilog
reg signed [63:0] m;
integer i;
```
## 벡터
- 다수 비트폭을 가짐
- 비트 폭이 선언되지않으면, 기본값 1비트(scalar)
- [높은 수:낮은 수] 또는 [낮은 수:높은 수]로 선언가능
- 항상 왼쪽이 최상위비트(MSB)
```verilog
wire a;
wire [7:0] bus;

reg clock;
reg [0:40] virtual_addr;
```
## 벡터 부분선택
```verilog
busA[7]
bus[2:0] // bus[0:2]는 불가능, 선언을 high:low로 했기때문
virtual_addr[0:1]
```

