<!--ProcessingDev-->
# Visual Programming / Interaction Art Design
__01 Assignments:__ 대학에서 피지컬컴퓨팅과 컴퓨터비전 강의를 들으며 제작한 비주얼 프로그래밍 과제입니다.<br>
__02 MidFinalTerm:__ 비주얼 프로그래밍 중간 기말 과제입니다. <br>
__03 GraduationProject:__ 졸업전시회를 위해 제작했던 인터랙션 작품 입니다. <br>
## 개발 환경 및 구동 안내사항
파일을 실행하려면, https://processing.org/download 에서 Processing 3.5.4 version을 다운받으십시오. <br>
프로젝트 폴더명과 이름이 같은 .pde 파일을 실행하시면 됩니다. <br>
각 프로젝트에서 필요한 라이브러리, 작동 방법들은 프로젝트 폴더 내 안내사항.txt에 서술하였습니다.

### Processing 2.2.1
01 Assignments 와 02 MidFinalTerm 프로젝트는 Processing 2.2.1 version 에서 개발하였습니다. <br>
2.2.1 버전에서 스케치의 크기 결정은 void setup(){}안에서 구현됩니다. <br>
라이브러리는 [프로젝트 폴더-Libraries] 안에 위치시키거나, [프로세싱 설치 경로-lib 폴더] 안에 위치시킵니다. <br>
두 장소에 같은 라이브러리가 존재할 경우 충돌이 일어날 수 있습니다. <br>
### Processing 3.1.1
03 GraduationProject 는 Processing 3.1.1 version 에서 개발하였습니다. <br>
Kinect4WinSDK, SimpleOpenNI 라이브러리를 사용한 것으로 processing 2.2.1 에서는 구동되지 않습니다. <br>
프로그래밍 문법은 2.2.1 버전과 동일합니다. <br>
### Processing 3.5.4
3.5.4 버전 출시 후 기존의 프로젝트가 정상 작동하지 않아 01/02/03 프로젝트를 해당 버전에 맞춰 수정하였습니다. <br>
3.5.4 버전에서 스케치의 크기 결정은 더이상 void setup(){} 안에서 구현되지 않을 수 있습니다. <br>
void settings(){} 안에서 size()를 이용합니다. <br>
또한 프로젝트 폴더 내의 Libraries 폴더를 더이상 인식하지 못할 수 있습니다.<br>
[프로세싱-파일-환경설정-스케치 폴더 위치:]경로의 lib 폴더 내에 라이브러리를 위치시켜야 합니다. <br>



