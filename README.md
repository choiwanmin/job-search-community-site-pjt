# MatchIt<br/>(구인 및 구직을 위한 채용 사이트)
*※ 기존에 수행한 https://github.com/choiwanmin/Recruit_Project 프로젝트를 정비 및 정리*

## 목차
* [프로젝트 소개](#프로젝트-소개)
* [기술 스택](#기술-스택)
* [주요 기능](#주요-기능)
* [주요 작업 내용](#주요-작업-내용)
* [프로젝트 아키텍쳐](#프로젝트-아키텍쳐)
* [클라이언트 화면 UI](#클라이언트-화면-UI)
* [기타](#기타)

## 프로젝트 소개
> ### 프로젝트 개요
* 수업을 통해 학습한 Java, Maven, Servlet&Jsp 기술을 활용한 프로젝트 수행
* Open-API를 활용한 개발 프로젝트 수행
* 개발 기간 : 2024.04.12 ~ 2024.04.29 (13일)
* 개발 구성원 : 5명 (FullStack 5명)
> ### 프로젝트 목표
* 팀 목표 : Open API를 활용한 채용 사이트 개발을 목표로 함
* 개인 목표 : Open API를 통해 기업의 채용 정보 관련 기능 개발을 목표로 함

## 기술 스택
|구분|사용 기술|
|:---|:---|
|Front-End|`HTML`, `CSS`, `Javascript`, `Bootstrap`|
|Back-End|`Java`, `JDBC`, `Maven`, `Servlet&JSP`, `JSTL`, `EL`, `Open-API`|
|DBMS|`Oracle`|
|Server|`Apache Tomcat`|
|IDE|`Eclipse`, `Oracle Sql Developer`|
|SCM|`Git & Github`|
|Etc.|`Kakaotalk`, `ChatGPT`|

## 주요 기능
> ### 구직 지원자 기능
  * 프로필 정보 관리
  * 이력서 파일 등록
  * 채용 공고 지원 목록 조회
  * 채용 공고 스크랩
  * 최근 본 공고 저장
> ### 구인 기업 기능
  * 기업 정보 관리
  * 워크넷 API를 통한 채용 공고 목록, 상세 정보 제공
  * 채용 공고 관리
  * 채용 공고 지원자 조회
  * 채용 공고 지원자 통계
> ### 커뮤니티 기능
  * 카테고리 별 글 작성 및 조회
  * 댓글 기능

## 주요 작업 내용
> ### 워크넷 API를 활용한 채용 정보 데이터 수집
 * 워크넷 오픈 API를 통해 채용 정보에서 채용 목록 및 채용 상세 정보를 데이터 수집 대상으로 선정<br/>*(https://openapi.work.go.kr/opi/opi/opia/wantedApiListVw.do)*
   
   |워크넷 오픈 API|워크넷 오픈 API<br/>채용 목록|워크넷 오픈 API<br/>채용 상세|채용 목록 xml|채용 상세 xml|
   |:---:|:---:|:---:|:---:|:---:|
   |![minipjt2_워크넷api (8)](https://github.com/user-attachments/assets/cda393df-d043-4059-91c4-0ea9f4c4c8e6)|![minipjt2_워크넷api (1)](https://github.com/user-attachments/assets/8d741d4d-4ad9-4bdc-bf78-4e7c871372ca)|![minipjt2_워크넷api (2)](https://github.com/user-attachments/assets/3c74bdae-60f4-4999-ae11-8bdff72ccb32)|![minipjt2_워크넷api (6)](https://github.com/user-attachments/assets/cf264e89-262d-4a0a-8710-f290979f4bf5)|![minipjt2_워크넷api (7)](https://github.com/user-attachments/assets/5df6b315-6015-46f6-8fce-c7a702a58024)|
   
 * xml에 형태의 데이터를 DB 저장을 위해 가공 작업
      
   |채용 공고 데이터 수집|채용 공고 시각화1|채용 공고 시각화2|
   |:---:|:---:|:---:|
   |![minipjt2_워크넷api (3)](https://github.com/user-attachments/assets/3afd24e4-a791-4d30-ae7b-ca4eca933376)|![minipjt2_워크넷api (4)](https://github.com/user-attachments/assets/6b8415da-57f3-4ec0-96a7-2e640cfa7b4e)|![minipjt2_워크넷api (5)](https://github.com/user-attachments/assets/6b462f8f-850b-4e79-a47c-cd4080258839)|
   
## 프로젝트 아키텍쳐

## 클라이언트 화면 UI
*※ 2024/00/00 기준 데이터 UI*

> ### 메인 관련 페이지

<details>
<summary>메인 관련 페이지 보기</summary>
<div markdown="1">
 
 |메인 페이지|
 |:---:|
 |![minipjt2_ui_메인페이지](https://github.com/user-attachments/assets/6dfe7c21-2f8f-4bda-84e3-0d09105c01dc)|

 |공고 목록|워크넷 API 데이터 채용 공고|
 |:---:|:---:|
 |![minipjt2_ui_공고목록페이지](https://github.com/user-attachments/assets/3800dc15-992a-4f26-b36c-87cc6c56c82b)|![minipjt2_ui_워크넥api공고페이지](https://github.com/user-attachments/assets/17ce21cb-0f25-4dde-869a-7f63778e6482)|

 |회원가입 페이지|로그인 페이지|
 |:---:|:---:|
 |![minipjt2_회원가입페이지](https://github.com/user-attachments/assets/03b496ed-7e4f-4765-b8d0-f3e4dd53d1c4)|![minipjt2_로그인페이지](https://github.com/user-attachments/assets/b78a1cb8-de9c-4e51-ba20-18f9347d2227)|

</div>
</details>

> ### 구직 지원자 페이지

<details>
<summary>구직 지원자 페이지 보기</summary>
<div markdown="1">

 |지원자 정보 조회|지원자 정보 수정|
 |:---:|:---:|
 |![minipjt2_지원자정보조회](https://github.com/user-attachments/assets/3fd2a404-bc05-4abb-b73b-c05a9a9b353b)|![minipjt2_지원자정보수정](https://github.com/user-attachments/assets/51324a8b-a664-44d9-a5f4-a66c1eff340b)|

 |지원자 서류 등록|지원 목록|
 |:---:|:---:|
 |![minipjt2_구직자이력서등록](https://github.com/user-attachments/assets/4dc9be83-ec0d-4032-8862-3da1837657b4)|![minipjt2_구직지원자지원목록](https://github.com/user-attachments/assets/928e1e01-8b54-4844-886f-91aad7682080)|

 |최근 본 공고|공고 스크랩|
 |:---:|:---:|
 |![minipjt2_구직지원자최근본공고](https://github.com/user-attachments/assets/7d34ac1a-07c3-4cc3-9030-7c60a80ac65b)|![minipjt2_구직지원자공고스크랩](https://github.com/user-attachments/assets/9bbb611f-1305-4129-8e0d-1ae728a56baa)|
   
</div>
</details>

> ### 구인 기업 페이지

<details>
<summary>구인 기업 페이지 보기</summary>
<div markdown="1">
 
 |기업 정보 등록|기업 정보 수정|
 |:---:|:---:|
 |![minipjt2_구인기업정보등록](https://github.com/user-attachments/assets/e6c335bf-3d76-433a-8b4c-494171baf576)|![minipjt2_구인기업정보수정](https://github.com/user-attachments/assets/f33c1e7c-3413-4212-82cb-be5c6090bd66)|
 
 |기업 공고 등록|기업이 등록한 공고|
 |:---:|:---:|
 |![minipjt2_구인기업공고등록](https://github.com/user-attachments/assets/d83914f3-6de6-4131-9b26-402c9dedb400)|![minipjt2_구인기업등록한공고](https://github.com/user-attachments/assets/0e0291cf-5c14-46dc-9aff-c8e38d32ae4f)|

 |등록한 공고 목록|등록한 공고 지원 통계|
 |:---:|:---:|
 |![minipjt2_구인기업등록한공고목록](https://github.com/user-attachments/assets/c58ce2b7-dd9e-4837-acd5-e06a8f4141fa)|![minipjt2_구인기업등록한공고지원통계](https://github.com/user-attachments/assets/2dc3d10d-aca7-41b2-948d-638af97640a7)|
 
 
</div>
</details>

> ### 게시판 페이지

<details>
<summary>게시판 페이지 보기</summary>
<div markdown="1">

 |게시판|게시글 페이지 댓글|
 |:---:|:---:|
 |![minipjt2_게시판페이지](https://github.com/user-attachments/assets/e583211c-4f10-4c91-9b9a-112dbb7d1fff)|![minipjt2_댓글페이지](https://github.com/user-attachments/assets/de766f15-111b-47fd-82a6-d8190e09ce5b)|
 
</div>
</details>

## 기타
> ### DB ERD

<details>
<summary>DB ERD 보기</summary>
<div markdown="1">
  
  |![minipjt2_erd](https://github.com/user-attachments/assets/1280d43c-ff5f-4ab0-8a9c-f001d0b88cb3)|
  |:---:|
  
</div>
</details>

> ### 프로젝트 구조

<details>
<summary>프로젝트 구조 보기</summary>
<div markdown="1">
  
```
📦kosta_mini_pjt2_review
┣ 📂.git
┗ 📂middle-project
┃ ┣ 📂.settings
┃ ┣ 📂src
┃ ┃ ┣ 📂main
┃ ┃ ┃ ┣ 📂java
┃ ┃ ┃ ┃ ┣ 📂appform
┃ ┃ ┃ ┃ ┃ ┣ 📜AppForm.java
┃ ┃ ┃ ┃ ┃ ┣ 📜AppFormDao.java
┃ ┃ ┃ ┃ ┃ ┗ 📜AppFormService.java
┃ ┃ ┃ ┃ ┣ 📂comment
┃ ┃ ┃ ┃ ┃ ┣ 📜Comment.java
┃ ┃ ┃ ┃ ┃ ┣ 📜CommentDao.java
┃ ┃ ┃ ┃ ┃ ┗ 📜CommentService.java
┃ ┃ ┃ ┃ ┣ 📂conn
┃ ┃ ┃ ┃ ┃ ┗ 📜DBConnect.java
┃ ┃ ┃ ┃ ┣ 📂corp
┃ ┃ ┃ ┃ ┃ ┣ 📜Corp.java
┃ ┃ ┃ ┃ ┃ ┣ 📜CorpDao.java
┃ ┃ ┃ ┃ ┃ ┗ 📜CorpService.java
┃ ┃ ┃ ┃ ┣ 📂dataroom
┃ ┃ ┃ ┃ ┃ ┣ 📜Data.java
┃ ┃ ┃ ┃ ┃ ┣ 📜DataDao.java
┃ ┃ ┃ ┃ ┃ ┣ 📜DataroomGetJson.java
┃ ┃ ┃ ┃ ┃ ┗ 📜DataService.java
┃ ┃ ┃ ┃ ┣ 📂fav
┃ ┃ ┃ ┃ ┃ ┣ 📜FavoData.java
┃ ┃ ┃ ┃ ┃ ┣ 📜FavoDataDao.java
┃ ┃ ┃ ┃ ┃ ┗ 📜FavoDataService.java
┃ ┃ ┃ ┃ ┣ 📂handlers
┃ ┃ ┃ ┃ ┃ ┣ 📂appform
┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜AppformAddHandler.java
┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜AppFormDownHandler.java
┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜list.java
┃ ┃ ┃ ┃ ┃ ┣ 📂comment
┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜CommentAddHandler.java
┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜CommentDelHandler.java
┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜CommentEditHandler.java
┃ ┃ ┃ ┃ ┃ ┣ 📂corp
┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜CorpHandler.java
┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜EditHandler.java
┃ ┃ ┃ ┃ ┃ ┣ 📂dataroom
┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜DataroomAddHandler.java
┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜DataroomDetailHandler.java
┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜DataroomDownHandler.java
┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜DataroomFavoHandler.java
┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜DataroomListHandler.java
┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜DataroomSearchHandler.java
┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜DataroomTypeHandler.java
┃ ┃ ┃ ┃ ┃ ┣ 📂mem
┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜IdCheckHandler.java
┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜LoginHandler.java
┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜LogoutHandler.java
┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜MemAddHandler.java
┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜MemOutHandler.java
┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜MyInfoHandler.java
┃ ┃ ┃ ┃ ┃ ┣ 📂MyappList
┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜MyappListAddHandler.java
┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜MyappListDeleteHandler.java
┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜MyappListHandler.java
┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜MyappListRecentListHandler.java
┃ ┃ ┃ ┃ ┃ ┣ 📂offer
┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜CorpCheckHandler.java
┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜OfferCheckHandler.java
┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜OfferHandler.java
┃ ┃ ┃ ┃ ┃ ┣ 📂person
┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜PersonAddHandler.java
┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜PersonDetailHandler.java
┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜PersonEditHandler.java
┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜PersonInfoHandler.java
┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜PersonListHandler.java
┃ ┃ ┃ ┃ ┃ ┣ 📂recruit
┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜IndexListHandler.java
┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜RecruitAddHandler.java
┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜RecruitApiListHandler.java
┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜RecruitDelHandler.java
┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜RecruitDetailHandler.java
┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜RecruitEditHandler.java
┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜RecruitListHandler.java
┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜RecruitMyListHandler.java
┃ ┃ ┃ ┃ ┃ ┣ 📂recruitapply
┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜applyHandler.java
┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜applyListHandler.java
┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜CorpApplyListHandler.java
┃ ┃ ┃ ┃ ┃ ┣ 📂scrap
┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜ScrapAddHandler.java
┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜ScrapDeleteHandler.java
┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜ScrapListHandler.java
┃ ┃ ┃ ┃ ┃ ┗ 📜Handler.java
┃ ┃ ┃ ┃ ┣ 📂mem
┃ ┃ ┃ ┃ ┃ ┣ 📜Mem.java
┃ ┃ ┃ ┃ ┃ ┣ 📜MemDao.java
┃ ┃ ┃ ┃ ┃ ┗ 📜MemService.java
┃ ┃ ┃ ┃ ┣ 📂offer
┃ ┃ ┃ ┃ ┃ ┣ 📜Offer.java
┃ ┃ ┃ ┃ ┃ ┣ 📜OfferDao.java
┃ ┃ ┃ ┃ ┃ ┗ 📜OfferService.java
┃ ┃ ┃ ┃ ┣ 📂page
┃ ┃ ┃ ┃ ┃ ┗ 📜GeneralPage.java
┃ ┃ ┃ ┃ ┣ 📂person
┃ ┃ ┃ ┃ ┃ ┣ 📜MyappList.java
┃ ┃ ┃ ┃ ┃ ┣ 📜MyappListDao.java
┃ ┃ ┃ ┃ ┃ ┣ 📜MyappListService.java
┃ ┃ ┃ ┃ ┃ ┣ 📜Person.java
┃ ┃ ┃ ┃ ┃ ┣ 📜PersonDao.java
┃ ┃ ┃ ┃ ┃ ┣ 📜PersonService.java
┃ ┃ ┃ ┃ ┃ ┣ 📜Scrap.java
┃ ┃ ┃ ┃ ┃ ┣ 📜ScrapDao.java
┃ ┃ ┃ ┃ ┃ ┗ 📜ScrapService.java
┃ ┃ ┃ ┃ ┣ 📂recruit
┃ ┃ ┃ ┃ ┃ ┣ 📂job
┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜Job.java
┃ ┃ ┃ ┃ ┃ ┣ 📂recruitdetail
┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜RecruitDetail.java
┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜RecruitDetailDao.java
┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜RecruitDetailService.java
┃ ┃ ┃ ┃ ┃ ┗ 📂recruitlist
┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜RecruitList.java
┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜RecruitListDao.java
┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜RecruitListService.java
┃ ┃ ┃ ┃ ┣ 📂recruitApply
┃ ┃ ┃ ┃ ┃ ┣ 📜RecruitApply.java
┃ ┃ ┃ ┃ ┃ ┣ 📜RecruitApplyDao.java
┃ ┃ ┃ ┃ ┃ ┣ 📜RecruitApplyService.java
┃ ┃ ┃ ┃ ┃ ┗ 📜RecruitApplyStat.java
┃ ┃ ┃ ┃ ┗ 📂req
┃ ┃ ┃ ┃ ┃ ┗ 📜DispatcherServlet.java
┃ ┃ ┃ ┣ 📂resources
┃ ┃ ┃ ┗ 📂webapp
┃ ┃ ┃ ┃ ┣ 📂app
┃ ┃ ┃ ┃ ┃ ┣ 📂appform
┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜1.png
┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜cat.jpg
┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜classpath
┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜classpath (1)
┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜die1.png
┃ ┃ ┃ ┃ ┃ ┣ 📂image
┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜cat1.jpg
┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜die11.png
┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜Mv.png
┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜sleepingTutle (1).png
┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜sleepingTutle.png
┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜킹냥이.jpg
┃ ┃ ┃ ┃ ┃ ┣ 📂popol
┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜4.png
┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜cat2.jpg
┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜die1.png
┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜die2.png
┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜png2pdf.pdf
┃ ┃ ┃ ┃ ┃ ┗ 📜die.png
┃ ┃ ┃ ┃ ┣ 📂appform
┃ ┃ ┃ ┃ ┃ ┣ 📜add.jsp
┃ ┃ ┃ ┃ ┃ ┗ 📜list.jsp
┃ ┃ ┃ ┃ ┣ 📂apply
┃ ┃ ┃ ┃ ┃ ┗ 📜list.jsp
┃ ┃ ┃ ┃ ┣ 📂bootstrap-5.3.3
┃ ┃ ┃ ┃ ┃ ┗ 📂css
┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜bootstrap-grid.css
┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜bootstrap-grid.css.map
┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜bootstrap-grid.min.css
┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜bootstrap-grid.min.css.map
┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜bootstrap-grid.rtl.css
┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜bootstrap-grid.rtl.css.map
┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜bootstrap-grid.rtl.min.css
┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜bootstrap-grid.rtl.min.css.map
┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜bootstrap-reboot.css
┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜bootstrap-reboot.css.map
┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜bootstrap-reboot.min.css
┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜bootstrap-reboot.min.css.map
┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜bootstrap-reboot.rtl.css
┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜bootstrap-reboot.rtl.css.map
┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜bootstrap-reboot.rtl.min.css
┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜bootstrap-reboot.rtl.min.css.map
┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜bootstrap-utilities.css
┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜bootstrap-utilities.css.map
┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜bootstrap-utilities.min.css
┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜bootstrap-utilities.min.css.map
┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜bootstrap-utilities.rtl.css
┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜bootstrap-utilities.rtl.css.map
┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜bootstrap-utilities.rtl.min.css
┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜bootstrap-utilities.rtl.min.css.map
┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜bootstrap.css
┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜bootstrap.css.map
┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜bootstrap.min.css
┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜bootstrap.min.css.map
┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜bootstrap.rtl.css
┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜bootstrap.rtl.css.map
┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜bootstrap.rtl.min.css
┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜bootstrap.rtl.min.css.map
┃ ┃ ┃ ┃ ┣ 📂corp
┃ ┃ ┃ ┃ ┃ ┣ 📜add.jsp
┃ ┃ ┃ ┃ ┃ ┣ 📜edit.jsp
┃ ┃ ┃ ┃ ┃ ┗ 📜info.jsp
┃ ┃ ┃ ┃ ┣ 📂css
┃ ┃ ┃ ┃ ┃ ┣ 📜chart.css
┃ ┃ ┃ ┃ ┃ ┣ 📜form.css
┃ ┃ ┃ ┃ ┃ ┣ 📜list.css
┃ ┃ ┃ ┃ ┃ ┣ 📜section.css
┃ ┃ ┃ ┃ ┃ ┗ 📜style.css
┃ ┃ ┃ ┃ ┣ 📂dataroom
┃ ┃ ┃ ┃ ┃ ┣ 📜add.jsp
┃ ┃ ┃ ┃ ┃ ┣ 📜detail.jsp
┃ ┃ ┃ ┃ ┃ ┣ 📜down_popup.jsp
┃ ┃ ┃ ┃ ┃ ┗ 📜list.jsp
┃ ┃ ┃ ┃ ┣ 📂HTML(front)
┃ ┃ ┃ ┃ ┃ ┣ 📜form.html
┃ ┃ ┃ ┃ ┃ ┣ 📜list.html
┃ ┃ ┃ ┃ ┃ ┗ 📜main.html
┃ ┃ ┃ ┃ ┣ 📂img
┃ ┃ ┃ ┃ ┃ ┣ 📜54_3_PC_00ARPih.png
┃ ┃ ┃ ┃ ┃ ┣ 📜56_3_PC_OmhsnRO.png
┃ ┃ ┃ ┃ ┃ ┣ 📜58_3_PC_wmhMSI3.png
┃ ┃ ┃ ┃ ┃ ┣ 📜book.png
┃ ┃ ┃ ┃ ┃ ┣ 📜paper.png
┃ ┃ ┃ ┃ ┃ ┗ 📜매치잇.png
┃ ┃ ┃ ┃ ┣ 📂js
┃ ┃ ┃ ┃ ┃ ┣ 📜main.js
┃ ┃ ┃ ┃ ┃ ┗ 📜map.js
┃ ┃ ┃ ┃ ┣ 📂main
┃ ┃ ┃ ┃ ┃ ┗ 📜main.jsp
┃ ┃ ┃ ┃ ┣ 📂mem
┃ ┃ ┃ ┃ ┃ ┣ 📜editmyinfo.jsp
┃ ┃ ┃ ┃ ┃ ┣ 📜join.jsp
┃ ┃ ┃ ┃ ┃ ┣ 📜login.jsp
┃ ┃ ┃ ┃ ┃ ┗ 📜myinfo.jsp
┃ ┃ ┃ ┃ ┣ 📂person
┃ ┃ ┃ ┃ ┃ ┣ 📜detail.jsp
┃ ┃ ┃ ┃ ┃ ┣ 📜info.jsp
┃ ┃ ┃ ┃ ┃ ┣ 📜list.jsp
┃ ┃ ┃ ┃ ┃ ┣ 📜personadd.jsp
┃ ┃ ┃ ┃ ┃ ┗ 📜test.jsp
┃ ┃ ┃ ┃ ┣ 📂recruit
┃ ┃ ┃ ┃ ┃ ┣ 📜apilist.jsp
┃ ┃ ┃ ┃ ┃ ┣ 📜recruitadd.jsp
┃ ┃ ┃ ┃ ┃ ┣ 📜recruitapplylist.jsp
┃ ┃ ┃ ┃ ┃ ┣ 📜recruitdetail.jsp
┃ ┃ ┃ ┃ ┃ ┣ 📜recruitedit.jsp
┃ ┃ ┃ ┃ ┃ ┣ 📜recruitlist.jsp
┃ ┃ ┃ ┃ ┃ ┗ 📜recruitmylist.jsp
┃ ┃ ┃ ┃ ┣ 📂scrap
┃ ┃ ┃ ┃ ┃ ┗ 📜list.jsp
┃ ┃ ┃ ┃ ┣ 📂section
┃ ┃ ┃ ┃ ┃ ┗ 📜info.jsp
┃ ┃ ┃ ┃ ┣ 📂WEB-INF
┃ ┃ ┃ ┃ ┃ ┣ 📂lib
┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜cos.jar
┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜json-simple-1.1.1.jar
┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜jstl-1.2.jar
┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜ojdbc6.jar
┃ ┃ ┃ ┃ ┃ ┣ 📂recruit_files
┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜jobcdnm.csv
┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜regioncdnm.csv
┃ ┃ ┃ ┃ ┃ ┗ 📜commands.properties
┃ ┃ ┃ ┃ ┣ 📜index.jsp
┃ ┃ ┃ ┃ ┗ 📜recruit_index.jsp
┃ ┃ ┗ 📂test
┃ ┃ ┃ ┣ 📂java
┃ ┃ ┃ ┗ 📂resources
┃ ┣ 📂target
┃ ┃ ┣ 📂classes
┃ ┃ ┃ ┣ 📂appform
┃ ┃ ┃ ┃ ┣ 📜AppForm.class
┃ ┃ ┃ ┃ ┣ 📜AppFormDao.class
┃ ┃ ┃ ┃ ┗ 📜AppFormService.class
┃ ┃ ┃ ┣ 📂comment
┃ ┃ ┃ ┃ ┣ 📜Comment.class
┃ ┃ ┃ ┃ ┣ 📜CommentDao.class
┃ ┃ ┃ ┃ ┗ 📜CommentService.class
┃ ┃ ┃ ┣ 📂conn
┃ ┃ ┃ ┃ ┗ 📜DBConnect.class
┃ ┃ ┃ ┣ 📂corp
┃ ┃ ┃ ┃ ┣ 📜Corp.class
┃ ┃ ┃ ┃ ┣ 📜CorpDao.class
┃ ┃ ┃ ┃ ┗ 📜CorpService.class
┃ ┃ ┃ ┣ 📂dataroom
┃ ┃ ┃ ┃ ┣ 📜Data.class
┃ ┃ ┃ ┃ ┣ 📜DataDao.class
┃ ┃ ┃ ┃ ┣ 📜DataroomGetJson.class
┃ ┃ ┃ ┃ ┗ 📜DataService.class
┃ ┃ ┃ ┣ 📂fav
┃ ┃ ┃ ┃ ┣ 📜FavoData.class
┃ ┃ ┃ ┃ ┣ 📜FavoDataDao.class
┃ ┃ ┃ ┃ ┗ 📜FavoDataService.class
┃ ┃ ┃ ┣ 📂handlers
┃ ┃ ┃ ┃ ┣ 📂appform
┃ ┃ ┃ ┃ ┃ ┣ 📜AppformAddHandler.class
┃ ┃ ┃ ┃ ┃ ┣ 📜AppFormDownHandler.class
┃ ┃ ┃ ┃ ┃ ┗ 📜list.class
┃ ┃ ┃ ┃ ┣ 📂comment
┃ ┃ ┃ ┃ ┃ ┣ 📜CommentAddHandler.class
┃ ┃ ┃ ┃ ┃ ┣ 📜CommentDelHandler.class
┃ ┃ ┃ ┃ ┃ ┗ 📜CommentEditHandler.class
┃ ┃ ┃ ┃ ┣ 📂corp
┃ ┃ ┃ ┃ ┃ ┣ 📜CorpHandler.class
┃ ┃ ┃ ┃ ┃ ┗ 📜EditHandler.class
┃ ┃ ┃ ┃ ┣ 📂dataroom
┃ ┃ ┃ ┃ ┃ ┣ 📜DataroomAddHandler.class
┃ ┃ ┃ ┃ ┃ ┣ 📜DataroomDetailHandler.class
┃ ┃ ┃ ┃ ┃ ┣ 📜DataroomDownHandler.class
┃ ┃ ┃ ┃ ┃ ┣ 📜DataroomFavoHandler.class
┃ ┃ ┃ ┃ ┃ ┣ 📜DataroomListHandler.class
┃ ┃ ┃ ┃ ┃ ┣ 📜DataroomSearchHandler.class
┃ ┃ ┃ ┃ ┃ ┗ 📜DataroomTypeHandler.class
┃ ┃ ┃ ┃ ┣ 📂mem
┃ ┃ ┃ ┃ ┃ ┣ 📜IdCheckHandler.class
┃ ┃ ┃ ┃ ┃ ┣ 📜LoginHandler.class
┃ ┃ ┃ ┃ ┃ ┣ 📜LogoutHandler.class
┃ ┃ ┃ ┃ ┃ ┣ 📜MemAddHandler.class
┃ ┃ ┃ ┃ ┃ ┣ 📜MemOutHandler.class
┃ ┃ ┃ ┃ ┃ ┗ 📜MyInfoHandler.class
┃ ┃ ┃ ┃ ┣ 📂MyappList
┃ ┃ ┃ ┃ ┃ ┣ 📜MyappListAddHandler.class
┃ ┃ ┃ ┃ ┃ ┣ 📜MyappListDeleteHandler.class
┃ ┃ ┃ ┃ ┃ ┣ 📜MyappListHandler.class
┃ ┃ ┃ ┃ ┃ ┗ 📜MyappListRecentListHandler.class
┃ ┃ ┃ ┃ ┣ 📂offer
┃ ┃ ┃ ┃ ┃ ┣ 📜CorpCheckHandler.class
┃ ┃ ┃ ┃ ┃ ┣ 📜OfferCheckHandler.class
┃ ┃ ┃ ┃ ┃ ┗ 📜OfferHandler.class
┃ ┃ ┃ ┃ ┣ 📂person
┃ ┃ ┃ ┃ ┃ ┣ 📜PersonAddHandler.class
┃ ┃ ┃ ┃ ┃ ┣ 📜PersonDetailHandler.class
┃ ┃ ┃ ┃ ┃ ┣ 📜PersonEditHandler.class
┃ ┃ ┃ ┃ ┃ ┣ 📜PersonInfoHandler.class
┃ ┃ ┃ ┃ ┃ ┗ 📜PersonListHandler.class
┃ ┃ ┃ ┃ ┣ 📂recruit
┃ ┃ ┃ ┃ ┃ ┣ 📜IndexListHandler.class
┃ ┃ ┃ ┃ ┃ ┣ 📜RecruitAddHandler.class
┃ ┃ ┃ ┃ ┃ ┣ 📜RecruitApiListHandler.class
┃ ┃ ┃ ┃ ┃ ┣ 📜RecruitDelHandler.class
┃ ┃ ┃ ┃ ┃ ┣ 📜RecruitDetailHandler.class
┃ ┃ ┃ ┃ ┃ ┣ 📜RecruitEditHandler.class
┃ ┃ ┃ ┃ ┃ ┣ 📜RecruitListHandler.class
┃ ┃ ┃ ┃ ┃ ┗ 📜RecruitMyListHandler.class
┃ ┃ ┃ ┃ ┣ 📂recruitapply
┃ ┃ ┃ ┃ ┃ ┣ 📜applyHandler.class
┃ ┃ ┃ ┃ ┃ ┣ 📜applyListHandler.class
┃ ┃ ┃ ┃ ┃ ┗ 📜CorpApplyListHandler.class
┃ ┃ ┃ ┃ ┣ 📂scrap
┃ ┃ ┃ ┃ ┃ ┣ 📜ScrapAddHandler.class
┃ ┃ ┃ ┃ ┃ ┣ 📜ScrapDeleteHandler.class
┃ ┃ ┃ ┃ ┃ ┗ 📜ScrapListHandler.class
┃ ┃ ┃ ┃ ┗ 📜Handler.class
┃ ┃ ┃ ┣ 📂mem
┃ ┃ ┃ ┃ ┣ 📜Mem.class
┃ ┃ ┃ ┃ ┣ 📜MemDao.class
┃ ┃ ┃ ┃ ┗ 📜MemService.class
┃ ┃ ┃ ┣ 📂offer
┃ ┃ ┃ ┃ ┣ 📜Offer.class
┃ ┃ ┃ ┃ ┣ 📜OfferDao.class
┃ ┃ ┃ ┃ ┗ 📜OfferService.class
┃ ┃ ┃ ┣ 📂page
┃ ┃ ┃ ┃ ┗ 📜GeneralPage.class
┃ ┃ ┃ ┣ 📂person
┃ ┃ ┃ ┃ ┣ 📜MyappList.class
┃ ┃ ┃ ┃ ┣ 📜MyappListDao.class
┃ ┃ ┃ ┃ ┣ 📜MyappListService.class
┃ ┃ ┃ ┃ ┣ 📜Person.class
┃ ┃ ┃ ┃ ┣ 📜PersonDao.class
┃ ┃ ┃ ┃ ┣ 📜PersonService.class
┃ ┃ ┃ ┃ ┣ 📜Scrap.class
┃ ┃ ┃ ┃ ┣ 📜ScrapDao.class
┃ ┃ ┃ ┃ ┗ 📜ScrapService.class
┃ ┃ ┃ ┣ 📂recruit
┃ ┃ ┃ ┃ ┣ 📂job
┃ ┃ ┃ ┃ ┃ ┗ 📜Job.class
┃ ┃ ┃ ┃ ┣ 📂recruitdetail
┃ ┃ ┃ ┃ ┃ ┣ 📜RecruitDetail.class
┃ ┃ ┃ ┃ ┃ ┣ 📜RecruitDetailDao.class
┃ ┃ ┃ ┃ ┃ ┗ 📜RecruitDetailService.class
┃ ┃ ┃ ┃ ┗ 📂recruitlist
┃ ┃ ┃ ┃ ┃ ┣ 📜RecruitList.class
┃ ┃ ┃ ┃ ┃ ┣ 📜RecruitListDao.class
┃ ┃ ┃ ┃ ┃ ┗ 📜RecruitListService.class
┃ ┃ ┃ ┣ 📂recruitApply
┃ ┃ ┃ ┃ ┣ 📜RecruitApply.class
┃ ┃ ┃ ┃ ┣ 📜RecruitApplyDao.class
┃ ┃ ┃ ┃ ┣ 📜RecruitApplyService.class
┃ ┃ ┃ ┃ ┗ 📜RecruitApplyStat.class
┃ ┃ ┃ ┗ 📂req
┃ ┃ ┃ ┃ ┗ 📜DispatcherServlet.class
┃ ┃ ┣ 📂m2e-wtp
┃ ┃ ┃ ┗ 📂web-resources
┃ ┃ ┃ ┃ ┗ 📂META-INF
┃ ┃ ┃ ┃ ┃ ┣ 📂maven
┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂org.apache.maven.archetypes
┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📂middle-project
┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┣ 📜pom.properties
┃ ┃ ┃ ┃ ┃ ┃ ┃ ┃ ┗ 📜pom.xml
┃ ┃ ┃ ┃ ┃ ┗ 📜MANIFEST.MF
┃ ┃ ┗ 📂test-classes
┃ ┣ 📜.classpath
┃ ┣ 📜.gitignore
┃ ┣ 📜.project
┃ ┗ 📜pom.xml
┣ 📂Servers
┃ ┣ 📂.settings
┃ ┣ 📂Tomcat v9.0 Server at localhost-config
┃ ┗ 📜.project
```

</div>
</details>
