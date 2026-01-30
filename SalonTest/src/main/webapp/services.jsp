<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Salon Listing</title>

    <!-- Tailwind CSS CDN -->
    <script src="https://cdn.tailwindcss.com"></script>

    <!-- Google Material Icons -->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

    <!-- Custom Tailwind Colors (optional) -->
    <script>
        tailwind.config = {
            theme: {
                extend: {
                    colors: {
                        primary: '#7F5539',
                        'surface-light': '#ffffff',
                        'surface-dark': '#111827'
                    }
                }
            }
        }
    </script>
</head>

<body class="bg-black dark:bg-black text-black">


<div class="container mx-auto px-4 py-10">

    <h2 class="text-3xl font-bold text-center mb-10 text-primary">
        Choose Your Salon
    </h2>

    <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">

        <!-- Salon Card 1 -->
        <div class="bg-surface-light dark:bg-surface-dark rounded-3xl overflow-hidden shadow-lg hover:shadow-2xl transition duration-300 group border border-gray-200 dark:border-gray-800">
            <div class="relative h-56 overflow-hidden">
                <img src="https://lh3.googleusercontent.com/aida-public/AB6AXuBF65H0TDa95NWNlSBh22MXMST6Djali9cjVMF__mPm3M4mRN-SJy-8UcYC-hSFVp0ofqrkxVXclLJF-mPG8u0mfbkZr6QLlm9_qjpuN7_VD8ROfbPzPTejfr6_wbWXJ-hzrDa_MWwxe_TDAHd8Uv7WKsCy7Yc7RhAmjZ78BDv1EH7pQ_5UMdcwx0Ez5iDbsYq4wYVDsOpUDxxZigs5w4QAqX-1ijRpEP3e5wnKU9o2RLBTSWB7utIpc3omnKz5na1jswiwbNgAnK4R"
                     class="w-full h-full object-cover group-hover:scale-105 transition duration-500"
                     alt="Salon">

                <div class="absolute top-4 right-4 bg-white/90 px-3 py-1 rounded-full flex items-center shadow">
                    <span class="material-icons text-yellow-400 text-sm mr-1">star</span>
                    <span class="text-sm font-bold">4.9</span>
                </div>

                <div class="absolute top-4 left-4 bg-primary text-white text-xs font-bold px-3 py-1 rounded-full uppercase">
                    Top Rated
                </div>
            </div>

            <div class="p-6">
                <h3 class="text-xl font-display font-bold text-gray-900 dark:text-white group-hover:text-primary transition">Luxe Spa &amp; Salon</h3>
                <p class="text-gray-500 text-sm flex items-center">
                    <span class="material-icons text-sm mr-1">place</span> Downtown
                </p>

                <div class="flex gap-2 flex-wrap mt-4">
                    <span class="px-3 py-1 bg-gray-100 text-xs rounded-full">Hair</span>
                    <span class="px-3 py-1 bg-gray-100 text-xs rounded-full">Spa</span>
                    <span class="px-3 py-1 bg-gray-100 text-xs rounded-full">Makeup</span>
                </div>

                <div class="flex justify-between items-center mt-6 pt-4 border-t">
                    <div>
                        <span class="text-gray-400 text-sm">Starts from</span>
                        <p class="font-bold text-lg">$65</p>
                    </div>
					<a href="info1.jsp?salonName=Luxe Spa"
                       class="bg-gray-900 dark:bg-white text-white dark:text-gray-900 hover:bg-primary dark:hover:bg-gray-200 px-6 py-2.5 rounded-full font-bold text-sm transition shadow-lg shadow-gray-200/50 dark:shadow-none">
                        Book Now
                    </a> 
                </div>
            </div>
        </div>
        
        <!-- Salon Card 2 -->
        <div class="bg-surface-light dark:bg-surface-dark rounded-3xl overflow-hidden shadow-lg hover:shadow-2xl transition duration-300 group border border-gray-200 dark:border-gray-800">
            <div class="relative h-56 overflow-hidden">
                <img src="https://lh3.googleusercontent.com/aida-public/AB6AXuB5WlLD95deYclMAq-4eH0Yq8iqYQSY8bPTzR1E_ViGf_tCTei2LBoSA8D0ucKp3ccTAyxyV7e0SInGjXrONodanhgfYIZXWD-nYJJfyLIx_pezmL7UdOf9MLaF15DXCu_cPAA7Daa2NOueig2IJ6KO6_uYSb59UecR8FHT0aHJtlkg27KK49N2XuTLZpq2pyN4jQvgp7EmiupAdo_j974_sVAZbNH8spekreT5-CzeO3UclkfXqhNEM-vTK8a0kWEeU2jBln-Bm_HW"
                     class="w-full h-full object-cover group-hover:scale-105 transition duration-500"
                     alt="Salon">

                <div class="absolute top-4 right-4 bg-white/90 px-3 py-1 rounded-full flex items-center shadow">
                    <span class="material-icons text-yellow-400 text-sm mr-1">star</span>
                    <span class="text-sm font-bold">4.4</span>
                </div>    
            </div>

            <div class="p-6">
               <h3 class="text-xl font-display font-bold text-gray-900 dark:text-white group-hover:text-primary transition">Urban Glow Studio</h3>
                <p class="text-gray-500 text-sm flex items-center">
                    <span class="material-icons text-sm mr-1">place</span>West Village, NY
                </p>

                <div class="flex gap-2 flex-wrap mt-4">
                    <span class="px-3 py-1 bg-gray-100 text-xs rounded-full">Nails</span>
                    <span class="px-3 py-1 bg-gray-100 text-xs rounded-full">facial</span>
                    <span class="px-3 py-1 bg-gray-100 text-xs rounded-full">Tan Treatment</span>
                </div>

                <div class="flex justify-between items-center mt-6 pt-4 border-t">
                    <div>
                        <span class="text-gray-400 text-sm">Starts from</span>
                        <p class="font-bold text-lg">$45</p>
                    </div>

                   <a href="info2.jsp?salonName=Luxe Spa"
                       class="bg-gray-900 dark:bg-white text-white dark:text-gray-900 hover:bg-primary dark:hover:bg-gray-200 px-6 py-2.5 rounded-full font-bold text-sm transition shadow-lg shadow-gray-200/50 dark:shadow-none">
                        Book Now
                    </a> 
                </div>
            </div>
        </div>
        
        <!-- Salon Card 3 -->
        <div class="bg-surface-light dark:bg-surface-dark rounded-3xl overflow-hidden shadow-lg hover:shadow-2xl transition duration-300 group border border-gray-200 dark:border-gray-800">
            <div class="relative h-56 overflow-hidden">
                <img src="https://lh3.googleusercontent.com/aida-public/AB6AXuBVARMYniP9wn8cB61DBD3o_yPn7F0nvRiB4YsdePamivV2sZqEa5OvEVu0SgRSS0qLDcppva2lrYAIPEUFt2olMh_lCHOFBDhNyaJBO5C6YfGxKCDrXXXgkxcLCn2N-3KgYpv9KwFo5n8WVR87t945zJSuuNwfgbz-PWvfX3s5Cy0avP43DIEBVkzmiTcYjHy0-ziN9QyJpZcXNrrlj5E35jSK8S6j5qkCJA5t2D9yofiA3JT9KcN3zq9wtH-2efIK4V8QGKnoWT4Z"
                     class="w-full h-full object-cover group-hover:scale-105 transition duration-500"
                     alt="Salon">

                <div class="absolute top-4 right-4 bg-white/90 px-3 py-1 rounded-full flex items-center shadow">
                    <span class="material-icons text-yellow-400 text-sm mr-1">star</span>
                    <span class="text-sm font-bold">4.5</span>
                </div>
            </div>

            <div class="p-6">
               <h3 class="text-xl font-display font-bold text-gray-900 dark:text-white group-hover:text-primary transition">Serenity Wellness</h3>
                <p class="text-gray-500 text-sm flex items-center">
                    <span class="material-icons text-sm mr-1">place</span>Brooklyn, NY
                </p>

                <div class="flex gap-2 flex-wrap mt-4">
                    <span class="px-3 py-1 bg-gray-100 text-xs rounded-full">Massage</span>
                    <span class="px-3 py-1 bg-gray-100 text-xs rounded-full">Aromatherapy</span>
                    <span class="px-3 py-1 bg-gray-100 text-xs rounded-full">Coloring</span>
                </div>

                <div class="flex justify-between items-center mt-6 pt-4 border-t">
                    <div>
                        <span class="text-gray-400 text-sm">Starts from</span>
                        <p class="font-bold text-lg">$50</p>
                    </div>
	 				<a href="info3.jsp?salonName=Luxe Spa"
                       class="bg-gray-900 dark:bg-white text-white dark:text-gray-900 hover:bg-primary dark:hover:bg-gray-200 px-6 py-2.5 rounded-full font-bold text-sm transition shadow-lg shadow-gray-200/50 dark:shadow-none">
                        Book Now
                    </a> 
                   
                </div>
            </div>
        </div>

        <!-- Duplicate this card for other salons -->
        <!-- Change image, name, price, and link -->

    </div>

</div>

</body>
</html>
