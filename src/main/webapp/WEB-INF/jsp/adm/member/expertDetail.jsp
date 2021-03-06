<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ include file="../part/mainLayoutHead.jspf"%>

<style>
:root { -
	-main-color: #4a76a8;
}

.bg-main-color {
	background-color: var(- -main-color);
}

.text-main-color {
	color: var(- -main-color);
}

.border-main-color {
	border-color: var(- -main-color);
}
</style>
<link href="https://unpkg.com/tailwindcss@^1.0/dist/tailwind.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/gh/alpinejs/alpine@v2.x.x/dist/alpine.min.js"
	defer></script>

<div class="bg-gray-100">
	<div class="w-full text-white bg-main-color">
		<div x-data="{ open: false }"
			class="flex flex-col max-w-screen-xl px-4 mx-auto md:items-center md:justify-between md:flex-row md:px-6 lg:px-8">

			<div class="container mx-auto my-5 p-5">
				<div class="md:flex no-wrap md:-mx-2 ">
					<!-- Left Side -->
					<div class="w-full md:w-3/12 md:mx-2">
						<!-- Profile Card -->
						<div class="bg-white p-3 border-t-4 border-green-400">
							<div class="image overflow-hidden">
								<c:if test="${expert.extra__thumbImg != null}">
									<img class="h-auto w-full mx-auto"
										src="${expert.extra__thumbImg}" alt="" />
								</c:if>
								<c:if test="${expert.extra__thumbImg == null}">
									<img class="h-auto w-full mx-auto"
										src="https://via.placeholder.com/500x500?text=NoImage" alt="" />
								</c:if>
							</div>
							<h1 class="text-gray-900 font-bold text-xl leading-8 my-1">${expert.name}</h1>
						</div>
						<!-- End of profile card -->
						<div class="my-4"></div>
					</div>
					<!-- Right Side -->
					<div class="w-full md:w-9/12 mx-2 h-64">
						<!-- Profile tab -->
						<!-- About Section -->
						<div class="bg-white p-3 shadow-sm rounded-sm">
							<div
								class="flex items-center space-x-2 font-semibold text-gray-900 leading-8">
								<span clas="text-green-500">
									<svg class="h-5" xmlns="http://www.w3.org/2000/svg" fill="none"
										viewBox="0 0 24 24" stroke="currentColor">
                                <path stroke-linecap="round"
											stroke-linejoin="round" stroke-width="2"
											d="M16 7a4 4 0 11-8 0 4 4 0 018 0zM12 14a7 7 0 00-7 7h14a7 7 0 00-7-7z" />
                            </svg>
								</span>
								<span class="tracking-wide">About</span>
							</div>
							<div class="text-gray-700">
								<div class="text-sm">
									<div class="grid grid-cols-2">
										<div class="px-4 py-2 font-semibold">????????????</div>
										<div class="px-4 py-2">${expert.regDate}</div>
									</div>
									<div class="grid grid-cols-2">
										<div class="px-4 py-2 font-semibold">??????</div>
										<div class="px-4 py-2">${expert.name}</div>
									</div>
									<div class="grid grid-cols-2">
										<div class="px-4 py-2 font-semibold">?????????</div>
										<div class="px-4 py-2">${expert.loginId}</div>
									</div>
									<div class="grid grid-cols-2">
										<div class="px-4 py-2 font-semibold">??????</div>
										<div class="px-4 py-2">${expert.region}</div>
									</div>
									<div class="grid grid-cols-2">
										<div class="px-4 py-2 font-semibold">????????????</div>
										<div class="px-4 py-2">${expert.cellphoneNo}</div>
									</div>
									<div class="grid grid-cols-2">
										<div class="px-4 py-2 font-semibold">???????????????</div>
										<div class="px-4 py-2">${expert.email}</div>
									</div>
									<div class="grid grid-cols-2">
										<div class="px-4 py-2 font-semibold">??????</div>
										<div class="px-4 py-2">${expert.career}</div>
									</div>
									<div class="grid grid-cols-2">
										<div class="px-4 py-2 font-semibold">?????????</div>
										<div class="px-4 py-2">${expert.license}</div>
									</div>
									<div class="grid grid-cols-2">
										<div class="px-4 py-2 font-semibold">?????? ??????</div>
										<div class="px-4 py-2">${expert.acknowledgment_step}</div>
									</div>
									<div class="grid grid-rows-2">
										<div class="px-4 py-2 font-semibold">?????? ??????</div>
										<div class="px-4 py-2">${expert.extra__licenseImg}</div>
									</div>
									<div class="grid grid-cols-2">
										<div class="px-4 py-2 font-semibold">?????? ??????</div>
										<div class="grid grid-cols-2 px-4 py-2">
											<form action="doConfirmExpert" method="POST">
												<input type="hidden" name="confirm" value="Y" />
												<input type="hidden" name="expertId" value="${expert.id}" />
												<button
													class="inline-block px-5 py-1 text-xs font-medium leading-6 text-center text-white uppercase transition bg-blue-700 rounded shadow ripple hover:shadow-lg hover:bg-blue-800 focus:outline-none"
													type="submit" onclick="history.back();">??????</button>
											</form>
											<form action="doConfirmExpert" method="POST">
												<input type="hidden" name="confirm" value="N" />
												<input type="hidden" name="expertId" value="${expert.id}" />
												<button
													class="inline-block px-5 py-1 text-xs font-medium leading-6 text-center text-white uppercase transition bg-red-500 rounded shadow ripple hover:shadow-lg hover:bg-red-600 focus:outline-none"
													type="submit" onclick="history.back();">??????</button>
											</form>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- End of about section -->

						<div class="my-4"></div>

					</div>
					<!-- End of profile tab -->
				</div>
			</div>
		</div>
	</div>
</div>

<%@ include file="../part/mainLayoutFoot.jspf"%>