<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>Insert title here</title>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script src="https://cdn.tailwindcss.com"></script>
        <link rel="stylesheet" href="https://demos.creative-tim.com/notus-js/assets/styles/tailwind.css">
        <link rel="stylesheet"
            href="https://demos.creative-tim.com/notus-js/assets/vendor/@fortawesome/fontawesome-free/css/all.min.css">
    </head>

    <body class="h-screen w-full flex items-center justify-center bg-gray-600">
        <div id="carDetails" class="w-[1100px]  h-[220px] ">

            <div class="relative overflow-x-auto shadow-md sm:rounded-lg">
                <a href="/MyCar/AddCar">
                    <button type="submit"
                        class="mb-10 bg-blue-500 text-white active:bg-blue-600 font-bold uppercase text-xs px-4 py-2 rounded shadow hover:shadow-md outline-none focus:outline-none mr-1 ease-linear transition-all duration-150"
                        type="button">
                        Add more cars
                    </button>
                </a>
                <table class="w-full text-sm text-left text-gray-500 dark:text-gray-400">
                    <thead class="text-xs text-gray-700 uppercase bg-gray-50 dark:bg-gray-700 dark:text-gray-400  ">
                        <tr class="">
                            <th scope="col" class="px-4 py-3">
                                Matricule
                            </th>
                            <th scope="col" class="px-6 py-3">
                                Marque de voiture
                            </th>
                            <th scope="col" class="px-6 py-3">
                                Type de voiture
                            </th>
                            <th scope="col" class="px-6 py-3">
                                Couleur de voiture
                            </th>
                            <th scope="col" class="px-12 py-3 ">
                                action
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="car" items="${cars}">
                            <tr
                                class="carRow bg-white border-b dark:bg-gray-800 dark:border-gray-700 hover:bg-gray-50 dark:hover:bg-gray-600">
                                <td class="w-32 px-4 py-3">
                                    <c:out value="${car.matricule}" />
                                </td>
                                <td class="px-6  font-semibold text-gray-900 dark:text-white">
                                    <c:out value="${car.marque_car}" />
                                </td>
                                <td class="px-6 font-semibold text-gray-900 dark:text-white">
                                    <c:out value="${car.type_car}" />
                                </td>
                                <td class="px-6 pl-16 font-semibold text-gray-900 dark:text-white">
                                    <c:choose>
                                        <c:when test="${car.color == 'black'}">
                                            <button
                                                class="border-2 border-gray-300 ml-1 bg-black rounded-full w-6 h-6 focus:outline-none"></button>
                                        </c:when>
                                        <c:when test="${car.color == 'yellow'}">
                                            <button
                                                class="border-2 border-gray-300 ml-1 bg-yellow-500 rounded-full w-6 h-6 focus:outline-none"></button>
                                        </c:when>
                                        <c:when test="${car.color == 'red'}">
                                            <button
                                                class="border-2 border-gray-300 ml-1 bg-red-600 rounded-full w-6 h-6 focus:outline-none"></button>
                                        </c:when>
                                        <c:when test="${car.color == 'green'}">
                                            <button
                                                class="border-2 border-gray-300 ml-1 bg-green-600 rounded-full w-6 h-6 focus:outline-none"></button>
                                        </c:when>
                                        <c:when test="${car.color == 'gray'}">
                                            <button
                                                class="border-2 border-gray-300 ml-1 bg-gray-500 rounded-full w-6 h-6 focus:outline-none"></button>
                                        </c:when>
                                        <c:when test="${car.color == 'blue'}">
                                            <button
                                                class="border-2 border-gray-300 ml-1 bg-blue-800 rounded-full w-6 h-6 focus:outline-none"></button>
                                        </c:when>
                                    </c:choose>
                                </td>

                                <td class="px-6 ">
                                    <button>
                                        <a href="CarDetailsServlet?carID=${car.id}">
                                            <p
                                                class="text-right text-green-600 hover:bg-green-400 md:grid flex p-1 ml-0 rounded-lg">
                                                <span class="text-xl">
                                                    <svg xmlns="http://www.w3.org/2000/svg" height="24px"
                                                        viewBox="0 0 24 24" width="24px" fill="#00AB84">
                                                        <path d="M0 0h24v24H0z" fill="none" />
                                                        <path
                                                            d="M12 4.5C7 4.5 2.73 7.61 1 12c1.73 4.39 6 7.5 11 7.5s9.27-3.11 11-7.5c-1.73-4.39-6-7.5-11-7.5zM12 17c-2.76 0-5-2.24-5-5s2.24-5 5-5 5 2.24 5 5-2.24 5-5 5zm0-8c-1.66 0-3 1.34-3 3s1.34 3 3 3 3-1.34 3-3-1.34-3-3-3z"
                                                            onmouseover="this.setAttribute('fill', '#000000')"
                                                            onmouseout="this.setAttribute('fill', '#00AB84')" />
                                                    </svg>
                                                </span>
                                            </p>
                                        </a>
                                    </button>


                                    <button>
                                        <a href="UpdateCar?carID=${car.id}">
                                            <p
                                                class="text-right text-green-600 hover:bg-yellow-400 md:grid flex p-1 ml-0 rounded-lg">
                                                <span class="text-xl">
                                                    <svg xmlns="http://www.w3.org/2000/svg" height="24px"
                                                        viewBox="0 0 24 24" width="24px" fill="none">
                                                        <g>
                                                            <rect fill="none" height="24" width="24" x="0" />
                                                        </g>
                                                        <g>
                                                            <g>
                                                                <g>
                                                                    <path
                                                                        d="M21,10.12h-6.78l2.74-2.82c-2.73-2.7-7.15-2.8-9.88-0.1c-2.73,2.71-2.73,7.08,0,9.79s7.15,2.71,9.88,0 C18.32,15.65,19,14.08,19,12.1h2c0,1.98-0.88,4.55-2.64,6.29c-3.51,3.48-9.21,3.48-12.72,0c-3.5-3.47-3.53-9.11-0.02-12.58 s9.14-3.47,12.65,0L21,3V10.12z M12.5,8v4.25l3.5,2.08l-0.72,1.21L11,13V8H12.5z"
                                                                        fill="#FFD700"
                                                                        onmouseover="this.style.fill='#000000'"
                                                                        onmouseout="this.style.fill='#FFD700'" />
                                                                </g>
                                                            </g>
                                                        </g>
                                                    </svg>
                                                </span>
                                            </p>
                                        </a>
                                    </button>


                                    <button>
                                        <form onsubmit="return confirmDelete();" action="DeleteCar" method="post">
                                            <input type="hidden" name="carID" value="${car.id}">
                                            <button type="submit">

                                                <p
                                                    class="text-red-600 hover:bg-red-400 md:grid flex p-1 ml-0 rounded-lg">
                                                    <span class="text-lg">
                                                        <svg xmlns="http://www.w3.org/2000/svg" height="24px"
                                                            viewBox="0 0 24 24" width="24px">
                                                            <path d="M0 0h24v24H0z" fill="none" />
                                                            <path
                                                                d="M19 6.41L17.59 5 12 10.59 6.41 5 5 6.41 10.59 12 5 17.59 6.41 19 12 13.41 17.59 19 19 17.59 13.41 12z"
                                                                fill="#dc2626" />
                                                        </svg>
                                                    </span>
                                                </p>
                                            </button>
                                        </form>
                                    </button>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
        <script>

            function deleteCar(carID) {
                var xhttp = new XMLHttpRequest();
                xhttp.onreadystatechange = function () {
                    if (this.readyState == 4 && this.status == 200) {
                        alert(this.responseText);
                    }
                };
                xhttp.open("POST", "DeleteCar?carID=" + carID, true);
                xhttp.send();
            }

            function confirmDelete() {
                return confirm("Are you sure you want to delete this car?");
            }
        </script>

    </body>

    </html>