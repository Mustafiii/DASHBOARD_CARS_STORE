<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <script src="https://cdn.tailwindcss.com"></script>
        <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
        <title>Car Details</title>
    </head>

    <body>

        <c:if test="${not empty carDetails}">
            <section class="text-gray-700 body-font overflow-hidden bg-white">
                <div class="container px-5 py-24 mx-auto">
                    <div class="lg:w-4/5 mx-auto flex flex-wrap">

                        <div class="lg:w-1/2 ">
                            <div class="mb-4">
                                <img id="mainImage" alt="Main Image"
                                    class=" w-full h-[600px] object-cover object-center rounded-3xl border border-gray-200"
                                    src="${carDetails.image1}">
                            </div>

                            <div class="flex space-x-2 ml-28">
                                <div class="cursor-pointer" onclick="changeMainImage('${carDetails.image1}')">
                                    <img src="${carDetails.image1}" alt="Image 1" class="w-16 h-16 rounded-lg border">
                                </div>
                                <div class="cursor-pointer" onclick="changeMainImage('${carDetails.image2}')">
                                    <img src="${carDetails.image2}" alt="Image 2" class="w-16 h-16 rounded-lg ">
                                </div>
                                <div class="cursor-pointer" onclick="changeMainImage('${carDetails.image3}')">
                                    <img src="${carDetails.image3}" alt="Image 3" class="w-16 h-16 rounded-lg">
                                </div>
                                <div class="cursor-pointer" onclick="changeMainImage('${carDetails.image4}')">
                                    <img src="${carDetails.image4}" alt="Image 4" class="w-16 h-16 rounded-lg">
                                </div>
                                <div class="cursor-pointer" onclick="changeMainImage('${carDetails.image5}')">
                                    <img src="${carDetails.image5}" alt="Image 5" class="w-16 h-16 rounded-lg">
                                </div>
                            </div>
                        </div>
                        <div class="lg:w-1/2 w-full lg:pl-10 lg:py-6 mt-6 lg:mt-0">
                            <h2 class="text-sm title-font text-gray-500 tracking-widest">CAR NAME</h2>
                            <h1 class="text-gray-900 text-3xl title-font font-medium mb-1">${carDetails.marque_car}</h1>
                            <div class="flex mb-4">
                                <span class="flex items-center">
                                    <svg fill="currentColor" stroke="currentColor" stroke-linecap="round"
                                        stroke-linejoin="round" stroke-width="2" class="w-4 h-4 text-red-500"
                                        viewBox="0 0 24 24">
                                        <path
                                            d="M12 2l3.09 6.26L22 9.27l-5 4.87 1.18 6.88L12 17.77l-6.18 3.25L7 14.14 2 9.27l6.91-1.01L12 2z">
                                        </path>
                                    </svg>
                                    <svg fill="currentColor" stroke="currentColor" stroke-linecap="round"
                                        stroke-linejoin="round" stroke-width="2" class="w-4 h-4 text-red-500"
                                        viewBox="0 0 24 24">
                                        <path
                                            d="M12 2l3.09 6.26L22 9.27l-5 4.87 1.18 6.88L12 17.77l-6.18 3.25L7 14.14 2 9.27l6.91-1.01L12 2z">
                                        </path>
                                    </svg>
                                    <svg fill="currentColor" stroke="currentColor" stroke-linecap="round"
                                        stroke-linejoin="round" stroke-width="2" class="w-4 h-4 text-red-500"
                                        viewBox="0 0 24 24">
                                        <path
                                            d="M12 2l3.09 6.26L22 9.27l-5 4.87 1.18 6.88L12 17.77l-6.18 3.25L7 14.14 2 9.27l6.91-1.01L12 2z">
                                        </path>
                                    </svg>
                                    <svg fill="currentColor" stroke="currentColor" stroke-linecap="round"
                                        stroke-linejoin="round" stroke-width="2" class="w-4 h-4 text-red-500"
                                        viewBox="0 0 24 24">
                                        <path
                                            d="M12 2l3.09 6.26L22 9.27l-5 4.87 1.18 6.88L12 17.77l-6.18 3.25L7 14.14 2 9.27l6.91-1.01L12 2z">
                                        </path>
                                    </svg>
                                    <svg fill="none" stroke="currentColor" stroke-linecap="round"
                                        stroke-linejoin="round" stroke-width="2" class="w-4 h-4 text-red-500"
                                        viewBox="0 0 24 24">
                                        <path
                                            d="M12 2l3.09 6.26L22 9.27l-5 4.87 1.18 6.88L12 17.77l-6.18 3.25L7 14.14 2 9.27l6.91-1.01L12 2z">
                                        </path>
                                    </svg>
                                    <span class="text-gray-600 ml-3">4 Reviews</span>
                                </span>
                                <span class="flex ml-3 pl-3 py-2 border-l-2 border-gray-200">
                                    <a class="text-gray-500">
                                        <svg fill="currentColor" stroke-linecap="round" stroke-linejoin="round"
                                            stroke-width="2" class="w-5 h-5" viewBox="0 0 24 24">
                                            <path d="M18 2h-3a5 5 0 00-5 5v3H7v4h3v8h4v-8h3l1-4h-4V7a1 1 0 011-1h3z">
                                            </path>
                                        </svg>
                                    </a>
                                    <a class="ml-2 text-gray-500">
                                        <svg fill="currentColor" stroke-linecap="round" stroke-linejoin="round"
                                            stroke-width="2" class="w-5 h-5" viewBox="0 0 24 24">
                                            <path
                                                d="M23 3a10.9 10.9 0 01-3.14 1.53 4.48 4.48 0 00-7.86 3v1A10.66 10.66 0 013 4s-4 9 5 13a11.64 11.64 0 01-7 2c9 5 20 0 20-11.5a4.5 4.5 0 00-.08-.83A7.72 7.72 0 0023 3z">
                                            </path>
                                        </svg>
                                    </a>
                                    <a class="ml-2 text-gray-500">
                                        <svg fill="currentColor" stroke-linecap="round" stroke-linejoin="round"
                                            stroke-width="2" class="w-5 h-5" viewBox="0 0 24 24">
                                            <path
                                                d="M21 11.5a8.38 8.38 0 01-.9 3.8 8.5 8.5 0 01-7.6 4.7 8.38 8.38 0 01-3.8-.9L3 21l1.9-5.7a8.38 8.38 0 01-.9-3.8 8.5 8.5 0 014.7-7.6 8.38 8.38 0 013.8-.9h.5a8.48 8.48 0 018 8v.5z">
                                            </path>
                                        </svg>
                                    </a>
                                </span>
                            </div>
                            <p class="leading-relaxed">${carDetails.description}</p>
                            <div class="flex mt-6 items-center pb-5 border-b-2 border-gray-200 mb-5">
                                <div class="flex">
                                    <span class="mr-3">Color </span>

                                    <c:choose>
                                        <c:when test="${carDetails.color == 'black'}">
                                            <button
                                                class="border-2 border-gray-300 bg-black rounded-full w-6 h-6 focus:outline-none"></button>
                                        </c:when>
                                        <c:when test="${carDetails.color == 'yellow'}">
                                            <button
                                                class="border-2 border-gray-300 ml-1 bg-yellow-500 rounded-full w-6 h-6 focus:outline-none"></button>
                                        </c:when>
                                        <c:when test="${carDetails.color == 'red'}">
                                            <button
                                                class="border-2 border-gray-300 ml-1 bg-red-600 rounded-full w-6 h-6 focus:outline-none"></button>
                                        </c:when>
                                        <c:when test="${carDetails.color == 'green'}">
                                            <button
                                                class="border-2 border-gray-300 ml-1 bg-green-500 rounded-full w-6 h-6 focus:outline-none"></button>
                                        </c:when>
                                        <c:when test="${carDetails.color == 'gray'}">
                                            <button
                                                class="border-2 border-gray-300 ml-1 bg-gray-500 rounded-full w-6 h-6 focus:outline-none"></button>
                                        </c:when>
                                        <c:when test="${carDetails.color == 'blue'}">
                                            <button
                                                class="border-2 border-gray-300 ml-1 bg-blue-800 rounded-full w-6 h-6 focus:outline-none"></button>
                                        </c:when>
                                    </c:choose>
                                </div>
                            </div>

                            <div class="flex">
                                <h1 class="text-gray-900 text-3xl title-font font-medium mb-1">MORE INFORMATION</h1>
                            </div>
                            <div class="flex mt-6 items-center pb-5 border-b-2 border-gray-200 mb-5">
                                <div class="flex flex-row">
                                   <div class="flex">
									    <div class="flex flex-col">
									        <span class="mr-3">Matricule:</span>
									        <span class="mr-3">Circulation Date:</span>
									        <span class="mr-3">Weight:</span>
									        <span class="mr-3">Horse Power:</span>
									        <span class="mr-3">Door Number:</span>
									    </div>
									</div>
									<div class="flex">
									    <div class="flex flex-col">
									        <span class="mr-3">${carDetails.matricule}</span>
									        <span class="mr-3">${carDetails.circulation_date}</span>
									        <span class="mr-3">${carDetails.weight}</span>
									        <span class="mr-3">${carDetails.horse_power}</span>
									        <span class="mr-3">${carDetails.door_number}</span>
									    </div>
									</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>


            </section>
        </c:if>

        <script>
            function changeMainImage(imageSrc) {
                document.getElementById('mainImage').src = imageSrc;
            }
        </script>
    </body>

    </html>