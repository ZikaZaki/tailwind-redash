<template>
  <div class="flex lg:space-x-12 items-center" role="navigation">
    <div class="hidden lg:w-[48%] lg:block">
      <Search />
    </div>
    <div class="w-full lg:w-[51%]">
      <div class="flex justify-between items-center">
        <div class="lg:hidden">
          <router-link to="/" class="flex justify-center items-center w-12 h-12 rounded-xl bg-gray-50">
            <svg viewBox="185.229 115.9863 132.3825 143.2766" xmlns="http://www.w3.org/2000/svg" class="h-12 w-12">
              <g transform="matrix(1, 0, 0, 1, -20.224897384643583, 1.482199668884249)">
                <rect x="30.775" y="91.941" width="77.297" height="37.264" style="stroke-width: 0px; stroke: rgb(111, 89, 89); paint-order: stroke; fill: rgb(58, 153, 250);" transform="matrix(0.999979, -0.006416, 0.74423, 0.995246, 122.675204, 38.693554)"/>
                <path d="M 239.393 495.07 L 258.207 526.871 L 213.625 526.871 L 239.393 495.07 Z" style="stroke: rgb(0, 0, 0); stroke-width: 0px; fill: rgb(251, 176, 59);" transform="matrix(1, 0, 0.002872, -1, 67.685977, 700.358032)"/>
                <rect x="34.331" y="99.085" width="86.224" height="40.159" style="stroke: rgb(0, 0, 0); stroke-width: 0px; fill: rgb(138, 39, 220);" transform="matrix(0.620163, 0.784473, -1.253989, 0.02625, 377.324132, 144.341105)"/>
                <path d="M 116.307 185.295 L 160.599 222.679 L 79.179 222.679 L 116.307 185.295 Z" style="stroke: rgb(0, 0, 0); stroke-width: 0px; fill: rgb(254, 73, 153);" transform="matrix(-0.620144, -0.784488, 0.637358, -0.806265, 176.949168, 484.292502)"/>
              </g>
            </svg>
          </router-link>
        </div>
        <TopNavLinks />
        <UserAvatar />
      </div>
    </div>
  </div>
</template>

<script>
import Search from "../Search.vue";
import TopNavLinks from "./TopNavLinks.vue";
import UserAvatar from "../UserAvatar/UserAvatar.vue";

export default {
  name: "TopNav",
  components: { Search, TopNavLinks, UserAvatar },
};
</script>