<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ include file="../part/mainLayoutHead.jspf"%>

<section class="section-1">
	<div class="bg-white shadow-md rounded container mx-auto p-8 mt-8">
		<div>
			<c:forEach items="${clients}" var="client">
				<c:set var="detailUrl" value="detail?id=${client.id}" />
				<div class="flex items-center mt-10">
					<a href="${detailUrl}" class="font-bold">NO. ${client.id}</a>
					<a href="${detailUrl}" class="ml-2 font-light text-gray-600">${client.regDate}</a>
					<div class="flex-grow"></div>
				</div>
				<div class="mt-2">
					<a href="${detailUrl}" class="mt-2 text-gray-600 block">
						<span
							class="inline-flex justify-center items-center px-2 rounded-full bg-green-500 text-white">아이디</span>
						<span>${client.loginId}</span>
					</a>
					<a href="${detailUrl}" class="mt-2 text-gray-600 block">
						<span
							class="inline-flex justify-center items-center px-2 rounded-full bg-green-500 text-white">이름</span>
						<span>${client.name}</span>
					</a>
					<a href="${detailUrl}" class="mt-2 text-gray-600 block">
						<span
							class="inline-flex justify-center items-center px-2 rounded-full bg-green-500 text-white">지역</span>
						<span>${client.region}</span>
					</a>
				</div>
				<div class="flex items-center mt-4">
					<a href="detail?id=${client.id}"
						class="text-blue-500 hover:underline" title="자세히 보기">
						<span>
							<i class="fas fa-info"></i>
							<span class="hidden sm:inline">자세히 보기</span>
						</span>
					</a>
					<a href="modify?id=${client.id}"
						class="ml-2 text-blue-500 hover:underline">
						<span>
							<i class="fas fa-edit"></i>
							<span class="hidden sm:inline">수정</span>
						</span>
					</a>
					<a onclick="if ( !confirm('삭제하시겠습니까?') ) return false;"
						href="doDelete?id=${client.id}"
						class="ml-2 text-blue-500 hover:underline">
						<span>
							<i class="fas fa-trash"></i>
							<span class="hidden sm:inline">삭제</span>
						</span>
					</a>
					<div class="flex-grow"></div>
					<div>
						<a class="flex items-center">
							<img
								src="https://images.unsplash.com/photo-1492562080023-ab3db95bfbce?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=731&amp;q=80"
								alt="avatar" class="mx-4 w-10 h-10 object-cover rounded-full">
							<h1 class="text-gray-700 font-bold hover:underline">${client.name}</h1>
						</a>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
</section>

<%@ include file="../part/mainLayoutFoot.jspf"%>
