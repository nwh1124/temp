<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ include file="../part/mainLayoutHead.jspf"%>

<section class="section-1">
	<div class="bg-white shadow-md rounded container mx-auto p-8 mt-8">
		<div>
			<c:forEach items="${experts}" var="expert">
				<c:set var="detailUrl" value="detail?id=${expert.id}" />
				<div class="flex items-center mt-10">
					<a href="${detailUrl}" class="font-bold">NO. ${expert.id}</a>
					<a href="${detailUrl}" class="ml-2 font-light text-gray-600">${expert.regDate}</a>
					<div class="flex-grow"></div>
				</div>
				<div class="mt-2">
					<a href="${detailUrl}" class="mt-2 text-gray-600 block">
						<span
							class="inline-flex justify-center items-center px-2 rounded-full bg-green-500 text-white">아이디</span>
						<span>${expert.loginId}</span>
					</a>
					<a href="${detailUrl}" class="mt-2 text-gray-600 block">
						<span
							class="inline-flex justify-center items-center px-2 rounded-full bg-green-500 text-white">이름</span>
						<span>${expert.name}</span>
					</a>
					<a href="${detailUrl}" class="mt-2 text-gray-600 block">
						<span
							class="inline-flex justify-center items-center px-2 rounded-full bg-green-500 text-white">지역</span>
						<span>${expert.region}</span>
					</a>
					<a href="${detailUrl}" class="mt-2 text-gray-600 block">
						<span
							class="inline-flex justify-center items-center px-2 rounded-full bg-green-500 text-white">인증상태</span>
						<span>${expert.acknowledgment_step}</span>
					</a>
				</div>
				<div class="flex items-center mt-4">
					<a href="expertDetail?id=${expert.id}"
						class="text-blue-500 hover:underline" title="회원상세정보">
						<span>
							<i class="fas fa-info"></i>
							<span class="hidden sm:inline">회원 상세 정보</span>
						</span>
					</a>
					<a href="modify?id=${expert.id}"
						class="ml-2 text-blue-500 hover:underline">
						<span>
							<i class="fas fa-edit"></i>
							<span class="hidden sm:inline">수정</span>
						</span>
					</a>
					<a onclick="if ( !confirm('탈퇴시키시겠습니까?') ) return false;"
						href="doDelete?id=${expert.id}"
						class="ml-2 text-blue-500 hover:underline">
						<span>
							<i class="fas fa-trash"></i>
							<span class="hidden sm:inline">강제탈퇴</span>
						</span>
					</a>
					<div class="flex-grow"></div>
					<div>
						<a class="flex items-center">
							<img
								src="https://images.unsplash.com/photo-1492562080023-ab3db95bfbce?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=731&amp;q=80"
								alt="avatar" class="mx-4 w-10 h-10 object-cover rounded-full">
							<h1 class="text-gray-700 font-bold hover:underline">${expert.name}</h1>
						</a>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
</section>

<%@ include file="../part/mainLayoutFoot.jspf"%>