<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
	.chart-item {
        margin: 10px;
        border: 1px solid black;
        padding: 10px;
        display: flex;
        align-items: center;
        justify-content: space-between;
    }
    .chart-item img {
        margin-right: 10px;
        width: 100px;
        height: 100px;
    }
    .chart-item .title {
        font-size: 20px;
        font-weight: bold;
    }
    .chart-item .artist {
        margin-top: 5px;
        font-size: 18px;
    }
    .chart-item .album {
        margin-top: 5px;
        font-size: 16px;
    }
    .chart-item .likes {
        margin-top: 5px;
        font-size: 16px;
    }
    .chart-item .date {
        margin-top: 5px;
        font-size: 16px;
    }
</style>
<body>
${title }
	<span class="thumbnail">
		<img width="156" height="156" src="">
	</span>
	<h1>음원 차트</h1>

    <div class="chart">
        <c:forEach items="${model.trackInfoList}" var="track"> 
        <div class="chart-item">
            <img src="${track.album_image}">
            <div class="text">
                <div class="title">${track.title }</div>
                <div class="artist">${track.artist}</div>
                <div class="album">${track.album}</div>
                <div class="likes">${track.like_count}</div>
            </div>
        </div>
        </c:forEach>
    </div>
		


</body>
</html>