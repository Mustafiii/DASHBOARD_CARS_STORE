<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>Update Car</title>

        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script src="https://cdn.tailwindcss.com"></script>
        <link rel="stylesheet" href="https://demos.creative-tim.com/notus-js/assets/styles/tailwind.css">
        <link rel="stylesheet"
            href="https://demos.creative-tim.com/notus-js/assets/vendor/@fortawesome/fontawesome-free/css/all.min.css">

    </head>

    <body class="h-screen w-full flex items-center justify-center bg-gray-600">

        <main class="flex">
            <c:if test="${not empty carDetails}">
                <section class="w-[1700px]  py-1">
                    <div class="lg:w-8/12 px-4 mx-auto mt-6">
                        <div
                            class="relative flex flex-col min-w-0 break-words w-full mb-6 shadow-lg rounded-lg h-[600px] overflow-y-scroll bg-gray-700 border-0">
                            <div class="rounded-t bg-gray-400 mb-0 px-6 py-6 fixed z-50 w-[1100px]">
                                <div class="text-center flex justify-between">
                                    <h6 class="text-blueGray-700 text-xl font-bold">
                                        My Car
                                    </h6>
                                    <p>
                                        <c:out value="${carDetails.marque_car}" />                                
                                    </p>
                                    <a href="/MyCar/ShowCar">
                                        <button type="submit"
                                            class="bg-blue-500 text-white active:bg-blue-600 font-bold uppercase text-xs px-4 py-2 rounded shadow hover:shadow-md outline-none focus:outline-none mr-1 ease-linear transition-all duration-150"
                                            type="button">
                                            See all cars
                                        </button>
                                    </a>

                                </div>
                            </div>
                            <div class="flex-auto px-4 lg:px-10 py-10 pt-10">
                                <form onsubmit="return confirmDelete();" action="UpdateCar" method="post">

                                    <input type="hidden" name="carID" value="${carDetails.id}">
                                    <h6 class="text-blueGray-400 text-sm mt-3 mb-6 font-bold uppercase">
                                        Car Information
                                    </h6>

                                    <input type="hidden" name="id" value="${car.id}">
                                    <div class="flex flex-wrap">
                                        <div class="w-full lg:w-6/12 px-4">
                                            <div class="relative w-full mb-3">
                                                <label class="block uppercase text-gray-300 text-xs font-bold mb-2"
                                                    htmlfor="grid-password">
                                                    Matricule
                                                </label>
                                                <input type="text" value="${carDetails.matricule}" name="matricule"
                                                    class="border-0 px-3 py-3 placeholder-white text-white bg-gray-500 rounded text-sm shadow focus:outline-none focus:ring w-full ease-linear transition-all duration-150"
                                                    required>
                                            </div>
                                        </div>
                                        <div class="w-full lg:w-6/12 px-4">
                                            <div class="relative w-full mb-3">
                                                <label class="block uppercase text-gray-300 text-xs font-bold mb-2"
                                                    htmlfor="grid-password">
                                                    Marque de voiture
                                                </label>
                                                <input type="text" value="${carDetails.marque_car}" name="marque_car"
                                                    class="border-0 px-3 py-3 placeholder-white text-white bg-gray-500 rounded text-sm shadow focus:outline-none focus:ring w-full ease-linear transition-all duration-150"
                                                    required>
                                            </div>
                                        </div>
                                        <div class="w-full lg:w-6/12 px-4">
                                            <div class="relative w-full mb-3">
                                                <label class="block uppercase text-gray-300 text-xs font-bold mb-2"
                                                    htmlfor="grid-password">
                                                    Type de voiture
                                                </label>
                                                <input type="text" value="${carDetails.type_car}" name="type_car"
                                                    class="border-0 px-3 py-3 placeholder-white text-white bg-gray-500 rounded text-sm shadow focus:outline-none focus:ring w-full ease-linear transition-all duration-150"
                                                    required>
                                            </div>
                                        </div>
                                        <div class="w-full lg:w-6/12 px-4">
                                            <div class="relative w-full mb-3">
                                                <label class="block uppercase text-gray-300 text-xs font-bold mb-2"
                                                    htmlfor="grid-password">
                                                    Date de mise en circulation
                                                </label>
                                                <input type="date" value="${carDetails.circulation_date}"
                                                    name="circulation_date"
                                                    class="border-0 px-3 py-3 placeholder-white text-white bg-gray-500 rounded text-sm shadow focus:outline-none focus:ring w-full ease-linear transition-all duration-150"
                                                    required>
                                            </div>
                                        </div>
                                    </div>

                                    <hr class="mt-6 border-b-1 border-blueGray-300">

                                    <h6 class="text-blueGray-400 text-sm mt-3 mb-6 font-bold uppercase">
                                        Additional Information
                                    </h6>
                                    <div class="flex flex-wrap">
                                        <div class="w-full lg:w-12/12 px-4">
                                            <div class="relative w-full mb-3">
                                                <label class="block uppercase text-gray-300 text-xs font-bold mb-2"
                                                    htmlfor="grid-password">
                                                    Poids de voiture
                                                </label>
                                                <input type="text" value="${carDetails.weight}" name="weight"
                                                    class="border-0 px-3 py-3 placeholder-white text-white bg-gray-500 rounded text-sm shadow focus:outline-none focus:ring w-full ease-linear transition-all duration-150"
                                                    required>
                                            </div>
                                        </div>
                                        <div class="w-full lg:w-4/12 px-4">
                                            <div class="relative w-full mb-3">
                                                <label class="block uppercase text-gray-300 text-xs font-bold mb-2"
                                                    htmlfor="grid-password">
                                                    Nombre de chauvaux
                                                </label>
                                                <input type="text" value="${carDetails.horse_power}" name="horse_power"
                                                    class="border-0 px-3 py-3 placeholder-white text-white bg-gray-500 rounded text-sm shadow focus:outline-none focus:ring w-full ease-linear transition-all duration-150"
                                                    required>
                                            </div>
                                        </div>
                                        <div class="w-full lg:w-4/12 px-4">
                                            <div class="relative w-full mb-3">
                                                <label class="block uppercase text-gray-300 text-xs font-bold mb-2"
                                                    htmlfor="grid-password">
                                                    Nombre de porte
                                                </label>
                                                <input type="text" value="${carDetails.door_number}" name="door_number"
                                                    class="border-0 px-3 py-3 placeholder-white text-white bg-gray-500 rounded text-sm shadow focus:outline-none focus:ring w-full ease-linear transition-all duration-150"
                                                    required>
                                            </div>
                                        </div>
                                        <div class="w-full lg:w-4/12 px-4">
                                            <div class="relative w-full mb-3">
                                                <label class="block uppercase text-gray-300 text-xs font-bold mb-2"
                                                    for="car-color">
                                                    Couleur de voiture
                                                </label>
                                                <select name="color" id="car-color"
                                                    class="border-0 px-3 py-3 placeholder-white text-white bg-gray-500 rounded text-sm shadow focus:outline-none focus:ring w-full ease-linear transition-all duration-150"
                                                    required>
                                                    <option value="black" ${carDetails.color=='black' ? 'selected' : ''
                                                        }>Black</option>
                                                    <option value="yellow" ${carDetails.color=='yellow' ? 'selected'
                                                        : '' }>Yellow</option>
                                                    <option value="red" ${carDetails.color=='red' ? 'selected' : '' }>
                                                        Red</option>
                                                    <option value="green" ${carDetails.color=='green' ? 'selected' : ''
                                                        }>Green</option>
                                                    <option value="gray" ${carDetails.color=='gray' ? 'selected' : '' }>
                                                        Gray</option>
                                                    <option value="blue" ${carDetails.color=='blue' ? 'selected' : '' }>
                                                        Blue</option>
                                                </select>

                                            </div>
                                        </div>

                                    </div>

                                    <hr class="mt-6 border-b-1 border-blueGray-300">

                                    <h6 class="text-blueGray-400 text-sm mt-3 mb-6 font-bold uppercase">
                                        Car Description
                                    </h6>
                                    <div class="w-full lg:w-12/12 px-4">
                                        <div class="relative w-full mb-3">
                                            <label class="block uppercase text-gray-300 text-xs font-bold mb-2"
                                                htmlfor="grid-password">
                                                Image path 1
                                            </label>
                                            <input type="text" value="${carDetails.image1}" name="image1"
                                                class="border-0 px-3 py-3 placeholder-white text-white bg-gray-500 rounded text-sm shadow focus:outline-none focus:ring w-full ease-linear transition-all duration-150"
                                                required>
                                        </div>
                                    </div>
                                    <div class="w-full lg:w-12/12 px-4">
                                        <div class="relative w-full mb-3">
                                            <label class="block uppercase text-gray-300 text-xs font-bold mb-2"
                                                htmlfor="grid-password">
                                                Image path 2
                                            </label>
                                            <input type="text" value="${carDetails.image2}" name="image2"
                                                class="border-0 px-3 py-3 placeholder-white text-white bg-gray-500 rounded text-sm shadow focus:outline-none focus:ring w-full ease-linear transition-all duration-150"
                                                required>
                                        </div>
                                    </div>
                                    <div class="w-full lg:w-12/12 px-4">
                                        <div class="relative w-full mb-3">
                                            <label class="block uppercase text-gray-300 text-xs font-bold mb-2"
                                                htmlfor="grid-password">
                                                Image path 3
                                            </label>
                                            <input type="text" value="${carDetails.image3}" name="image3"
                                                class="border-0 px-3 py-3 placeholder-white text-white bg-gray-500 rounded text-sm shadow focus:outline-none focus:ring w-full ease-linear transition-all duration-150"
                                                required>
                                        </div>
                                    </div>
                                    <div class="w-full lg:w-12/12 px-4">
                                        <div class="relative w-full mb-3">
                                            <label class="block uppercase text-gray-300 text-xs font-bold mb-2"
                                                htmlfor="grid-password">
                                                Image path 4
                                            </label>
                                            <input type="text" value="${carDetails.image4}" name="image4"
                                                class="border-0 px-3 py-3 placeholder-white text-white bg-gray-500 rounded text-sm shadow focus:outline-none focus:ring w-full ease-linear transition-all duration-150"
                                                required>
                                        </div>
                                    </div>
                                    <div class="w-full lg:w-12/12 px-4">
                                        <div class="relative w-full mb-3">
                                            <label class="block uppercase text-gray-300 text-xs font-bold mb-2"
                                                htmlfor="grid-password">
                                                Image path 5
                                            </label>
                                            <input type="text" value="${carDetails.image5}" name="image5"
                                                class="border-0 px-3 py-3 placeholder-white text-white bg-gray-500 rounded text-sm shadow focus:outline-none focus:ring w-full ease-linear transition-all duration-150"
                                                required>
                                        </div>
                                    </div>
                                    <div class="flex flex-wrap">
                                        <div class="w-full lg:w-12/12 px-4">
                                            <div class="relative w-full mb-3">
                                                <label class="block uppercase text-gray-300 text-xs font-bold mb-2"
                                                    htmlfor="grid-password">
                                                    Description
                                                </label>
                                                <textarea name="description"
                                                    class="border-0 px-3 py-3 placeholder-blueGray-300 text-white bg-gray-500 rounded text-sm shadow focus:outline-none focus:ring w-full ease-linear transition-all duration-150"
                                                    rows="4" required>
                                                    <c:out value="${carDetails.description}" />
                                                </textarea>
                                                <button type="submit"
                                                    class="mt-6 bg-blue-500 text-white active:bg-blue-600 font-bold uppercase text-xs px-4 py-2 rounded shadow hover:shadow-md outline-none focus:outline-none mr-1 ease-linear transition-all duration-150"
                                                    type="button">
                                                    Update Car
                                                </button>
                                            </div>
                                        </div>
                                    </div>

                                </form>
                            </div>
                        </div>
                    </div>
                </section>
            </c:if>
        </main>

    </body>
    <script>
    function confirmDelete() {
        return confirm("Are you sure you want to delete this car?");
    }</script>

    </html>