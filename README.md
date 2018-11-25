<br><br><br><br><br><br><br><br><br>

![멋쟁이 사자처럼](http://mblogthumb1.phinf.naver.net/MjAxNzA3MTJfMjY2/MDAxNDk5Nzg2ODEzMjQy.J3alTsoKn_lPZFPtGoYN0Vfqacj_fuTTR0NNTCXIROIg.sPNGGYHx-qkkD4sDN6nwTDg31snJTodQcm-95lUI19Ug.PNG.indesual/basiclogo_K_V.png?type=w800)
<br><br><br><br><br><br><br><br><br>

# 축제기간 :5/23(수)시작
### 해야할것
    혜원-레이아웃, 일정
    동현-이벤트,라인업, 친구 포토샵 작업 부탁하기
    겸손- 부스,deploy ip
    동환- 댓글, _하기

### 루트 지정하기
    메인페이지>>  /
    주점 >> /booth/:id >> 댓글

    작업요령 => view파일 만든후 "단톡방"카톡하기

## 확인 사항
> view file

    메인화면 => index.html.erb
    부스 => _booth.html.erb (겸손)
    이벤트 => _event.html.erb (동현)
    라인업 => _lineup.html.erb (동현)
    일정 => _timetable.html.erb (혜원)
    
    부스 정보 => info.html.erb (겸손)
    
    네비게이션 => _navigation.html.erb (혜원)
    
> Database

    [Booth] 
    id | 부스 이름 |  학과  | 소개멘트 
    id |   name   | depart | introduce
       |  string  | string |  text
    
    [Comment]
    id | 부스 아이디 | 댓글 내용
    id |  booth_id  | content
       |   |
    
    [Event]
    id | 이벤트 이름 |  내용   | 날짜 | 진행 시간 | 장소
    id |    name    | explain | day |   time   | 
       |   string   | text |


#### 마지막 확인 작업,중간 확인: 
    일자: 5/14(월) 
    시간: 오후 5시 
    장소: 그린브라우니

> 해야할 일

    부스 정보 화면 - input 위치
    이벤트 이미지
    반응형
    모바일 스크롤바 없애기
    

> 모바일 수정사항

    navigationbar 글자 크기
    schedule 글자 두줄 배열
    lineup 
    
    
> 받아야 하는 정보
    
    각 과 주점 이름, 이미지, 메뉴
    이벤트 포스터
    이벤트 확정된 이름
    학교 서버 할당 가능하나요
    
#### 작업 완료: 
    일자: 5/16(수)
    시간: 오후 7시
    장소: 스터디라운지
# 축제기간 :5/23(수)시작
