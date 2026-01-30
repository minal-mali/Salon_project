<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en"><head>
<meta charset="utf-8"/>
<meta content="width=device-width, initial-scale=1.0" name="viewport"/>
<title>SalonConnect - Book Your Appointment</title>
<script src="https://cdn.tailwindcss.com?plugins=forms,typography"></script>
<link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;600;700&family=Lato:wght@300;400;700&display=swap" rel="stylesheet"/>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet"/>
<script>
        tailwind.config = {
            darkMode: "class",
            theme: {
                extend: {
                    colors: {
                        primary: "#D8A48F", // Soft pastel terracotta/rose gold
                        secondary: "#8FBC8F", // Soft sage green accent
                        "background-light": "#FDFBF7", // Warm off-white
                        "background-dark": "#1F1B1A", // Dark warm charcoal
                        "surface-light": "#FFFFFF",
                        "surface-dark": "#2D2625",
                    },
                    fontFamily: {
                        display: ["Playfair Display", "serif"],
                        body: ["Lato", "sans-serif"],
                    },
                    borderRadius: {
                        DEFAULT: "0.75rem",
                    },
                },
            },
        };
    </script>
<style>
        body {
            font-family: 'Lato', sans-serif;
        }
        h1, h2, h3, h4, h5, h6 {
            font-family: 'Playfair Display', serif;
        }
    </style>
</head>
<body class="bg-background-light dark:bg-background-dark text-gray-800 dark:text-gray-200 transition-colors duration-300">

<nav class="sticky top-0 z-50 bg-surface-light/90 dark:bg-surface-dark/90 backdrop-blur-md border-b border-gray-100 dark:border-gray-800 shadow-sm">
<div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
<div class="flex justify-between h-20 items-center">
<div class="flex items-center">
<span class="material-icons text-primary text-3xl mr-2">spa</span>
<span class="font-display font-bold text-2xl text-gray-900 dark:text-white">SalonConnect</span>
</div>
<div class="hidden md:flex space-x-8 items-center">
<a class="text-gray-600 dark:text-gray-300 hover:text-primary dark:hover:text-primary font-medium transition" href="#">Home</a>
<a class="text-gray-600 dark:text-gray-300 hover:text-primary dark:hover:text-primary font-medium transition" href="#">Explore Salons</a>
<a class="text-gray-600 dark:text-gray-300 hover:text-primary dark:hover:text-primary font-medium transition" href="#">Services</a>
<a class="text-gray-600 dark:text-gray-300 hover:text-primary dark:hover:text-primary font-medium transition" href="#">For Partners</a>
</div>
<div class="flex items-center space-x-4">
<button class="p-2 rounded-full hover:bg-gray-100 dark:hover:bg-gray-700 text-gray-500 dark:text-gray-400" id="theme-toggle">
<span class="material-icons">brightness_4</span>
</button>
<a class="hidden md:block px-5 py-2.5 rounded-full text-sm font-bold text-primary border-2 border-primary hover:bg-primary hover:text-white transition-all" href="UserReg.jsp">Sign In</a>
<a class="px-5 py-2.5 rounded-full text-sm font-bold text-white bg-primary hover:bg-opacity-90 transition shadow-lg shadow-primary/30" href="userlogin.jsp">Join Now</a>
</div>
</div>
</div>
</nav>

<div class="relative bg-background-light dark:bg-background-dark overflow-hidden">
<div class="absolute top-0 right-0 -mr-20 -mt-20 w-96 h-96 rounded-full bg-primary/10 blur-3xl"></div>
<div class="absolute bottom-0 left-0 -ml-20 -mb-20 w-80 h-80 rounded-full bg-secondary/10 blur-3xl"></div>
<div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-20 lg:py-28 relative z-10">
<div class="text-center max-w-3xl mx-auto">
<h1 class="text-5xl md:text-6xl font-display font-bold text-gray-900 dark:text-white mb-6 leading-tight">
    Beauty & Wellness <br/> <span class="text-primary italic">Reimagined</span>
</h1>
<p class="text-xl text-gray-600 dark:text-gray-300 mb-10 leading-relaxed">
                    Book appointments with the best salons, spas, and therapists near you. Manage your beauty schedule effortlessly.
                </p>
<div class="bg-surface-light dark:bg-surface-dark p-3 rounded-full shadow-xl shadow-gray-200/50 dark:shadow-black/30 max-w-4xl mx-auto flex flex-col md:flex-row items-center border border-gray-100 dark:border-gray-700">
<div class="flex-1 w-full md:w-auto px-4 py-2 border-b md:border-b-0 md:border-r border-gray-200 dark:border-gray-700 flex items-center">
<span class="material-icons text-gray-400 mr-3">search</span>
<input class="w-full bg-transparent border-none focus:ring-0 text-gray-700 dark:text-gray-200 placeholder-gray-400 dark:placeholder-gray-500" placeholder="Service (e.g. Haircut, Massage)" type="text"/>
</div>
<div class="flex-1 w-full md:w-auto px-4 py-2 flex items-center">
<span class="material-icons text-gray-400 mr-3">location_on</span>
<input class="w-full bg-transparent border-none focus:ring-0 text-gray-700 dark:text-gray-200 placeholder-gray-400 dark:placeholder-gray-500" placeholder="Location or Zip Code" type="text"/>
</div>
<button class="w-full md:w-auto bg-primary hover:bg-opacity-90 text-white font-bold py-3 px-8 rounded-full transition shadow-md mt-3 md:mt-0">
                        Search
                    </button>
</div>
</div>
</div>
</div>

<section class="py-16 bg-white dark:bg-surface-dark">
<div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
<div class="text-center mb-12">
<h2 class="text-3xl font-display font-bold text-gray-900 dark:text-white mb-4">Explore by Service</h2>
<p class="text-gray-500 dark:text-gray-400">Discover top-rated professionals for every need</p>
</div>
<div class="grid grid-cols-2 md:grid-cols-3 lg:grid-cols-6 gap-6">
<a class="group flex flex-col items-center p-6 rounded-2xl bg-background-light dark:bg-background-dark hover:shadow-lg hover:-translate-y-1 transition duration-300 border border-transparent hover:border-primary/20" href="#">
<div class="w-16 h-16 rounded-full bg-pink-100 dark:bg-pink-900/30 flex items-center justify-center mb-4 text-primary group-hover:bg-primary group-hover:text-white transition">
<span class="material-icons text-3xl">content_cut</span>
</div>
<span class="font-medium text-gray-700 dark:text-gray-200 group-hover:text-primary transition">Haircuts</span>
</a>
<a class="group flex flex-col items-center p-6 rounded-2xl bg-background-light dark:bg-background-dark hover:shadow-lg hover:-translate-y-1 transition duration-300 border border-transparent hover:border-primary/20" href="#">
<div class="w-16 h-16 rounded-full bg-blue-100 dark:bg-blue-900/30 flex items-center justify-center mb-4 text-blue-500 group-hover:bg-blue-500 group-hover:text-white transition">
<span class="material-icons text-3xl">spa</span>
</div>
<span class="font-medium text-gray-700 dark:text-gray-200 group-hover:text-blue-500 transition">Massage</span>
</a>
<a class="group flex flex-col items-center p-6 rounded-2xl bg-background-light dark:bg-background-dark hover:shadow-lg hover:-translate-y-1 transition duration-300 border border-transparent hover:border-primary/20" href="#">
<div class="w-16 h-16 rounded-full bg-purple-100 dark:bg-purple-900/30 flex items-center justify-center mb-4 text-purple-500 group-hover:bg-purple-500 group-hover:text-white transition">
<span class="material-icons text-3xl">brush</span>
</div>
<span class="font-medium text-gray-700 dark:text-gray-200 group-hover:text-purple-500 transition">Nail Care</span>
</a>
<a class="group flex flex-col items-center p-6 rounded-2xl bg-background-light dark:bg-background-dark hover:shadow-lg hover:-translate-y-1 transition duration-300 border border-transparent hover:border-primary/20" href="#">
<div class="w-16 h-16 rounded-full bg-orange-100 dark:bg-orange-900/30 flex items-center justify-center mb-4 text-orange-500 group-hover:bg-orange-500 group-hover:text-white transition">
<span class="material-icons text-3xl">face</span>
</div>
<span class="font-medium text-gray-700 dark:text-gray-200 group-hover:text-orange-500 transition">Facials</span>
</a>
<a class="group flex flex-col items-center p-6 rounded-2xl bg-background-light dark:bg-background-dark hover:shadow-lg hover:-translate-y-1 transition duration-300 border border-transparent hover:border-primary/20" href="#">
<div class="w-16 h-16 rounded-full bg-green-100 dark:bg-green-900/30 flex items-center justify-center mb-4 text-green-500 group-hover:bg-green-500 group-hover:text-white transition">
<span class="material-icons text-3xl">self_improvement</span>
</div>
<span class="font-medium text-gray-700 dark:text-gray-200 group-hover:text-green-500 transition">Wellness</span>
</a>
<a class="group flex flex-col items-center p-6 rounded-2xl bg-background-light dark:bg-background-dark hover:shadow-lg hover:-translate-y-1 transition duration-300 border border-transparent hover:border-primary/20" href="#">
<div class="w-16 h-16 rounded-full bg-gray-100 dark:bg-gray-800 flex items-center justify-center mb-4 text-gray-500 group-hover:bg-gray-500 group-hover:text-white transition">
<span class="material-icons text-3xl">grid_view</span>
</div>
<span class="font-medium text-gray-700 dark:text-gray-200 group-hover:text-gray-500 transition">View All</span>
</a>
</div>
</div>
</section>

<section class="py-20 bg-background-light dark:bg-background-dark">
<div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
<div class="flex justify-between items-end mb-12">
<div>
<h2 class="text-3xl font-display font-bold text-gray-900 dark:text-white mb-2">Featured Salons</h2>
<p class="text-gray-500 dark:text-gray-400">Handpicked top-rated salons near you</p>
</div>
<a class="hidden md:flex items-center text-primary font-bold hover:underline" href="#">
                    View all salons <span class="material-icons text-sm ml-1">arrow_forward</span>
</a>
</div>
<div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
<div class="bg-surface-light dark:bg-surface-dark rounded-3xl overflow-hidden shadow-lg hover:shadow-2xl transition duration-300 group border border-gray-100 dark:border-gray-800">
<div class="relative h-56 overflow-hidden">
<img alt="Elegant salon interior with modern chairs and lighting" class="w-full h-full object-cover group-hover:scale-105 transition duration-500" src="https://lh3.googleusercontent.com/aida-public/AB6AXuB5WlLD95deYclMAq-4eH0Yq8iqYQSY8bPTzR1E_ViGf_tCTei2LBoSA8D0ucKp3ccTAyxyV7e0SInGjXrONodanhgfYIZXWD-nYJJfyLIx_pezmL7UdOf9MLaF15DXCu_cPAA7Daa2NOueig2IJ6KO6_uYSb59UecR8FHT0aHJtlkg27KK49N2XuTLZpq2pyN4jQvgp7EmiupAdo_j974_sVAZbNH8spekreT5-CzeO3UclkfXqhNEM-vTK8a0kWEeU2jBln-Bm_HW"/>
<div class="absolute top-4 right-4 bg-white dark:bg-black/70 backdrop-blur-sm px-3 py-1 rounded-full flex items-center shadow-sm">
<span class="material-icons text-yellow-400 text-sm mr-1">star</span>
<span class="text-sm font-bold text-gray-800 dark:text-white">4.9</span>
</div>
<div class="absolute top-4 left-4 bg-primary text-white text-xs font-bold px-3 py-1 rounded-full uppercase tracking-wide">
                            Top Rated
                        </div>
</div>
<div class="p-6">
<div class="flex justify-between items-start mb-2">
<div>
<h3 class="text-xl font-display font-bold text-gray-900 dark:text-white group-hover:text-primary transition">Luxe Spa & Salon</h3>
<p class="text-gray-500 dark:text-gray-400 text-sm flex items-center mt-1">
<span class="material-icons text-sm mr-1">place</span> Downtown, New York
                                </p>
</div>
</div>
<div class="flex gap-2 mb-6 mt-3 flex-wrap">
<span class="px-3 py-1 bg-gray-100 dark:bg-gray-800 text-gray-600 dark:text-gray-300 text-xs rounded-full">Hair Styling</span>
<span class="px-3 py-1 bg-gray-100 dark:bg-gray-800 text-gray-600 dark:text-gray-300 text-xs rounded-full">Spa</span>
<span class="px-3 py-1 bg-gray-100 dark:bg-gray-800 text-gray-600 dark:text-gray-300 text-xs rounded-full">Makeup</span>
</div>
<div class="flex items-center justify-between pt-4 border-t border-gray-100 dark:border-gray-700">
<div class="text-sm">
<span class="text-gray-400">Starts from</span>
<span class="block font-bold text-gray-900 dark:text-white text-lg">$45</span>
</div>
<button class="bg-gray-900 dark:bg-white text-white dark:text-gray-900 hover:bg-primary dark:hover:bg-gray-200 px-6 py-2.5 rounded-full font-bold text-sm transition shadow-lg shadow-gray-200/50 dark:shadow-none">
                                Book Now
                            </button>
</div>
</div>
</div>
<div class="bg-surface-light dark:bg-surface-dark rounded-3xl overflow-hidden shadow-lg hover:shadow-2xl transition duration-300 group border border-gray-100 dark:border-gray-800">
<div class="relative h-56 overflow-hidden">
<img alt="Minimalist salon interior with plants" class="w-full h-full object-cover group-hover:scale-105 transition duration-500" src="https://lh3.googleusercontent.com/aida-public/AB6AXuBF65H0TDa95NWNlSBh22MXMST6Djali9cjVMF__mPm3M4mRN-SJy-8UcYC-hSFVp0ofqrkxVXclLJF-mPG8u0mfbkZr6QLlm9_qjpuN7_VD8ROfbPzPTejfr6_wbWXJ-hzrDa_MWwxe_TDAHd8Uv7WKsCy7Yc7RhAmjZ78BDv1EH7pQ_5UMdcwx0Ez5iDbsYq4wYVDsOpUDxxZigs5w4QAqX-1ijRpEP3e5wnKU9o2RLBTSWB7utIpc3omnKz5na1jswiwbNgAnK4R"/>
<div class="absolute top-4 right-4 bg-white dark:bg-black/70 backdrop-blur-sm px-3 py-1 rounded-full flex items-center shadow-sm">
<span class="material-icons text-yellow-400 text-sm mr-1">star</span>
<span class="text-sm font-bold text-gray-800 dark:text-white">4.8</span>
</div>
</div>
<div class="p-6">
<div class="flex justify-between items-start mb-2">
<div>
<h3 class="text-xl font-display font-bold text-gray-900 dark:text-white group-hover:text-primary transition">Urban Glow Studio</h3>
<p class="text-gray-500 dark:text-gray-400 text-sm flex items-center mt-1">
<span class="material-icons text-sm mr-1">place</span> West Village, NY
                                </p>
</div>
</div>
<div class="flex gap-2 mb-6 mt-3 flex-wrap">
<span class="px-3 py-1 bg-gray-100 dark:bg-gray-800 text-gray-600 dark:text-gray-300 text-xs rounded-full">Nails</span>
<span class="px-3 py-1 bg-gray-100 dark:bg-gray-800 text-gray-600 dark:text-gray-300 text-xs rounded-full">Facials</span>
</div>
<div class="flex items-center justify-between pt-4 border-t border-gray-100 dark:border-gray-700">
<div class="text-sm">
<span class="text-gray-400">Starts from</span>
<span class="block font-bold text-gray-900 dark:text-white text-lg">$30</span>
</div>
<button class="bg-gray-900 dark:bg-white text-white dark:text-gray-900 hover:bg-primary dark:hover:bg-gray-200 px-6 py-2.5 rounded-full font-bold text-sm transition shadow-lg shadow-gray-200/50 dark:shadow-none">
                                Book Now
                            </button>
</div>
</div>
</div>
<div class="bg-surface-light dark:bg-surface-dark rounded-3xl overflow-hidden shadow-lg hover:shadow-2xl transition duration-300 group border border-gray-100 dark:border-gray-800">
<div class="relative h-56 overflow-hidden">
<img alt="Close up of beauty products and spa setup" class="w-full h-full object-cover group-hover:scale-105 transition duration-500" src="https://lh3.googleusercontent.com/aida-public/AB6AXuBVARMYniP9wn8cB61DBD3o_yPn7F0nvRiB4YsdePamivV2sZqEa5OvEVu0SgRSS0qLDcppva2lrYAIPEUFt2olMh_lCHOFBDhNyaJBO5C6YfGxKCDrXXXgkxcLCn2N-3KgYpv9KwFo5n8WVR87t945zJSuuNwfgbz-PWvfX3s5Cy0avP43DIEBVkzmiTcYjHy0-ziN9QyJpZcXNrrlj5E35jSK8S6j5qkCJA5t2D9yofiA3JT9KcN3zq9wtH-2efIK4V8QGKnoWT4Z"/>
<div class="absolute top-4 right-4 bg-white dark:bg-black/70 backdrop-blur-sm px-3 py-1 rounded-full flex items-center shadow-sm">
<span class="material-icons text-yellow-400 text-sm mr-1">star</span>
<span class="text-sm font-bold text-gray-800 dark:text-white">4.7</span>
</div>
</div>
<div class="p-6">
<div class="flex justify-between items-start mb-2">
<div>
<h3 class="text-xl font-display font-bold text-gray-900 dark:text-white group-hover:text-primary transition">Serenity Wellness</h3>
<p class="text-gray-500 dark:text-gray-400 text-sm flex items-center mt-1">
<span class="material-icons text-sm mr-1">place</span> Brooklyn, NY
                                </p>
</div>
</div>
<div class="flex gap-2 mb-6 mt-3 flex-wrap">
<span class="px-3 py-1 bg-gray-100 dark:bg-gray-800 text-gray-600 dark:text-gray-300 text-xs rounded-full">Massage</span>
<span class="px-3 py-1 bg-gray-100 dark:bg-gray-800 text-gray-600 dark:text-gray-300 text-xs rounded-full">Aromatherapy</span>
</div>
<div class="flex items-center justify-between pt-4 border-t border-gray-100 dark:border-gray-700">
<div class="text-sm">
<span class="text-gray-400">Starts from</span>
<span class="block font-bold text-gray-900 dark:text-white text-lg">$65</span>
</div>
<button class="bg-gray-900 dark:bg-white text-white dark:text-gray-900 hover:bg-primary dark:hover:bg-gray-200 px-6 py-2.5 rounded-full font-bold text-sm transition shadow-lg shadow-gray-200/50 dark:shadow-none">
                                Book Now
                            </button>
</div>
</div>
</div>
</div>
<div class="mt-8 text-center md:hidden">
<a class="inline-flex items-center text-primary font-bold hover:underline" href="#">
                    View all salons <span class="material-icons text-sm ml-1">arrow_forward</span>
</a>
</div>
</div>
</section>

<section class="py-20 bg-primary/5 dark:bg-surface-dark border-t border-gray-100 dark:border-gray-800">
<div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
<div class="lg:grid lg:grid-cols-2 lg:gap-16 items-center">
<div class="mb-10 lg:mb-0 relative">
<div class="absolute inset-0 bg-primary/20 rounded-3xl transform rotate-3 scale-105 z-0"></div>
<img alt="Person using phone to book appointment" class="relative z-10 rounded-3xl shadow-2xl w-full object-cover h-[500px]" src="https://lh3.googleusercontent.com/aida-public/AB6AXuAemEEYZE9uUGHoP_gHXAIv4Jn35VjAaSzGlDv1GBttJKe3caWYITPrn3OJgAoNBTQIj2uzamlCcFn9OjGcmvL1J_U1kQHljUgOH_zWkeQJsyHuu2JOZ_TKy1iazGqfKTvPJoe7LQIVQ41o15NDjqJUE1KaDzRzvZyni-p7PtP3WEEvefV-punynavtBK3uUQZfwN9QfKUG96aZArUrVkDoYilT209JrZ3BWTmCmuj3GT0toU-s_XbJLPAK_yNl6-TZaVcaurS2R8wd"/>
</div>
<div>
<h2 class="text-3xl font-display font-bold text-gray-900 dark:text-white mb-6">Seamless Booking, Verified Salons</h2>
<p class="text-lg text-gray-600 dark:text-gray-300 mb-6">
                        Say goodbye to endless phone calls and scheduling conflicts. Our platform connects you directly with the best salons in town.
                    </p>
<ul class="space-y-6">
<li class="flex items-start">
<div class="flex-shrink-0 bg-primary/20 rounded-full p-2 mt-1">
<span class="material-icons text-primary text-xl">check_circle</span>
</div>
<div class="ml-4">
<h4 class="text-lg font-bold text-gray-900 dark:text-white">Real-time Availability</h4>
<p class="text-gray-500 dark:text-gray-400 text-sm mt-1">See therapist schedules instantly and book slots that work for you.</p>
</div>
</li>
<li class="flex items-start">
<div class="flex-shrink-0 bg-primary/20 rounded-full p-2 mt-1">
<span class="material-icons text-primary text-xl">verified_user</span>
</div>
<div class="ml-4">
<h4 class="text-lg font-bold text-gray-900 dark:text-white">Verified Reviews</h4>
<p class="text-gray-500 dark:text-gray-400 text-sm mt-1">Make informed decisions based on genuine ratings from real customers.</p>
</div>
</li>
<li class="flex items-start">
<div class="flex-shrink-0 bg-primary/20 rounded-full p-2 mt-1">
<span class="material-icons text-primary text-xl">notifications_active</span>
</div>
<div class="ml-4">
<h4 class="text-lg font-bold text-gray-900 dark:text-white">Smart Reminders</h4>
<p class="text-gray-500 dark:text-gray-400 text-sm mt-1">Get automated email and SMS notifications so you never miss a pampering session.</p>
</div>
</li>
</ul>
</div>
</div>
</div>
</section>

<section class="py-20">
<div class="max-w-5xl mx-auto px-4 sm:px-6 lg:px-8">
<div class="bg-gradient-to-r from-gray-900 to-gray-800 dark:from-gray-800 dark:to-gray-900 rounded-[2rem] p-10 md:p-16 text-center relative overflow-hidden shadow-2xl">
<div class="absolute top-0 right-0 -mr-16 -mt-16 w-64 h-64 bg-primary/20 rounded-full blur-3xl"></div>
<div class="absolute bottom-0 left-0 -ml-16 -mb-16 w-64 h-64 bg-secondary/20 rounded-full blur-3xl"></div>
<div class="relative z-10">
<h2 class="text-3xl md:text-4xl font-display font-bold text-white mb-6">Are you a Salon Owner?</h2>
<p class="text-gray-300 text-lg mb-8 max-w-2xl mx-auto">
                        Streamline your operations, manage appointments efficiently, and grow your customer base with our all-in-one management solution.
                    </p>
<div class="flex flex-col sm:flex-row justify-center gap-4">
<!-- <button class="bg-primary hover:bg-primary/90 text-white font-bold py-3 px-8 rounded-full transition shadow-lg transform hover:-translate-y-1">
                            Register Your Business
                        </button> -->
<form action="salonReg.jsp" method="post">
    <button type="submit"
        class="bg-primary hover:bg-primary/90 text-white font-bold py-3 px-8 rounded-full transition shadow-lg transform hover:-translate-y-1">
        Register Your Business
    </button>
</form>

<button class="bg-transparent border-2 border-white/30 text-white hover:bg-white/10 font-bold py-3 px-8 rounded-full transition">
                            Learn More
                        </button>
</div>
</div>
</div>
</div>
</section>

<footer class="bg-white dark:bg-surface-dark border-t border-gray-100 dark:border-gray-800 pt-16 pb-8">
<div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
<div class="grid grid-cols-1 md:grid-cols-4 gap-12 mb-12">
<div class="col-span-1 md:col-span-1">
<div class="flex items-center mb-4">
<span class="material-icons text-primary text-2xl mr-2">spa</span>
<span class="font-display font-bold text-xl text-gray-900 dark:text-white">SalonConnect</span>
</div>
<p class="text-gray-500 dark:text-gray-400 text-sm mb-6">
                        Making beauty and wellness accessible, transparent, and easy to book for everyone.
                    </p>
<div class="flex space-x-4">
<a class="text-gray-400 hover:text-primary transition" href="#"><span class="material-icons text-xl">facebook</span></a>
<a class="text-gray-400 hover:text-primary transition" href="#"><span class="material-icons text-xl">camera_alt</span></a> 
<a class="text-gray-400 hover:text-primary transition" href="#"><span class="material-icons text-xl">alternate_email</span></a> 
</div>
</div>
<div>
<h4 class="font-bold text-gray-900 dark:text-white mb-4">For Customers</h4>
<ul class="space-y-2 text-sm text-gray-500 dark:text-gray-400">
<li><a class="hover:text-primary transition" href="#">Search Salons</a></li>
<li><a class="hover:text-primary transition" href="#">Gift Cards</a></li>
<li><a class="hover:text-primary transition" href="#">My Bookings</a></li>
<li><a class="hover:text-primary transition" href="#">Help Center</a></li>
</ul>
</div>
<div>
<h4 class="font-bold text-gray-900 dark:text-white mb-4">For Businesses</h4>
<ul class="space-y-2 text-sm text-gray-500 dark:text-gray-400">
<li><a class="hover:text-primary transition" href="#">Partner with Us</a></li>
<li><a class="hover:text-primary transition" href="#">Business Login</a></li>
<li><a class="hover:text-primary transition" href="#">Success Stories</a></li>
<li><a class="hover:text-primary transition" href="#">Pricing</a></li>
</ul>
</div>
<div>
<h4 class="font-bold text-gray-900 dark:text-white mb-4">Contact</h4>
<ul class="space-y-2 text-sm text-gray-500 dark:text-gray-400">
<li class="flex items-center"><span class="material-icons text-xs mr-2">email</span> support@salonconnect.com</li>
<li class="flex items-center"><span class="material-icons text-xs mr-2">phone</span> +1 (555) 123-4567</li>
<li class="flex items-center"><span class="material-icons text-xs mr-2">place</span> 123 Beauty Blvd, CA</li>
</ul>
</div>
</div>
<div class="border-t border-gray-100 dark:border-gray-800 pt-8 flex flex-col md:flex-row justify-between items-center text-sm text-gray-400 dark:text-gray-500">
<p>© 2023 SalonConnect. All rights reserved.</p>
<div class="flex space-x-6 mt-4 md:mt-0">
<a class="hover:text-gray-600 dark:hover:text-gray-300" href="#">Privacy Policy</a>
<a class="hover:text-gray-600 dark:hover:text-gray-300" href="#">Terms of Service</a>
</div>
</div>
</div>
</footer>

<script>
        const themeToggleBtn = document.getElementById('theme-toggle');
        const darkIcon = '<span class="material-icons">dark_mode</span>';
        const lightIcon = '<span class="material-icons">light_mode</span>';
        // Check local storage or system preference
        if (localStorage.getItem('color-theme') === 'dark' || (!('color-theme' in localStorage) && window.matchMedia('(prefers-color-scheme: dark)').matches)) {
            document.documentElement.classList.add('dark');
            themeToggleBtn.innerHTML = lightIcon;
        } else {
            document.documentElement.classList.remove('dark');
            themeToggleBtn.innerHTML = darkIcon;
        }
        themeToggleBtn.addEventListener('click', function() {
            // if set via local storage previously
            if (localStorage.getItem('color-theme')) {
                if (localStorage.getItem('color-theme') === 'light') {
                    document.documentElement.classList.add('dark');
                    localStorage.setItem('color-theme', 'dark');
                    this.innerHTML = lightIcon;
                } else {
                    document.documentElement.classList.remove('dark');
                    localStorage.setItem('color-theme', 'light');
                    this.innerHTML = darkIcon;
                }
            } else {
                // if NOT set via local storage previously
                if (document.documentElement.classList.contains('dark')) {
                    document.documentElement.classList.remove('dark');
                    localStorage.setItem('color-theme', 'light');
                    this.innerHTML = darkIcon;
                } else {
                    document.documentElement.classList.add('dark');
                    localStorage.setItem('color-theme', 'dark');
                    this.innerHTML = lightIcon;
                }
            }
        });
    </script>

</body></html>