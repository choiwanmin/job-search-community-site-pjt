# MatchIt<br/>(구인 및 구직을 위한 채용 사이트)
*※ 기존에 수행한 https://github.com/choiwanmin/kosta_final_pjt_restapi_backend 프로젝트를 정비 및 정리*

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
* 
* 개발 기간 :
* 개발 구성원 :
> ### 프로젝트 목표
* 팀 목표 :
* 개인 목표 : 기술적으로 DB 및 DBMS에 중심을 두고 프로젝트 참여를 목표

## 기술 스택
 |구분|사용 기술|
 |:---|:---|
 |Front-End||
 |Back-End||
 |Data Analysis||
 |DBMS||
 |Storage||
 |Server||
 |IDE||
 |SCM||
 |Etc.||

## 주요 기능

## 주요 작업 내용
> ### 데이터 수집(워크넷 API를 활용한 채용 정보 수집)

## 프로젝트 아키텍쳐

## 클라이언트 화면 UI
*※ 2024/00/00 기준 데이터 UI*

## 기타
> ### DB ERD

> ### 프로젝트 구조
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
