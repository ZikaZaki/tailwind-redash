<template>
  <div class="flex h-full">
    <div class="fixed lg:static bottom-0 w-full lg:w-24 lg:h-full z-10">
      <!-- relative w-full lg:w-24 h-full bg-blue-800 -->
      <div class="relative w-full lg:w-20 h-full bg-blue-800">
        <a href="#" class="group hidden absolute top-10 left-1/2 transform -translate-x-1/2 lg:flex lg:justify-center lg:items-center w-14 h-14 rounded-xl hover:bg-white">
          <svg
            xmlns="http://www.w3.org/2000/svg"
            viewBox="0 0 256 381"
            preserveAspectRatio="xMidYMid"
            class="h-12 w-12 text-white"
          >
            <path d="M131.015 126.065l117.088.003-117.088 115.396V126.065" fill="#FFF" class="group-hover:fill-gray-400" />
            <path d="M.002 256.489h116.672L.002 374.955V256.489M.001 119.581L121.948 0l.061 121.501L.001 243.185V119.581M256.001 131.733v124.388L131.02 380.188V255.832l124.981-124.099z"  class="fill-[#F7852F]"/>
            <path d="M121.909 246.908l-113.513-.003L121.909 133.32v113.588" class="fill-[#1746A2]"/>
          </svg>
        </a>
  
        <MainNav />
      </div>
    </div>

    <router-view />
  </div>
</template>

<script>
import MainNav from "./components/MainNav.vue";

export default {
  name: "App",
  components: { MainNav },
};
</script>
