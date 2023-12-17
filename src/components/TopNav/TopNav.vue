<template>
  <div class="flex lg:space-x-12 items-center" role="navigation">
    <div class="hidden lg:w-[47%] lg:block">
      <Search />
    </div>
    <div class="w-full lg:w-1/2">
      <div class="flex justify-between items-center">
        <div class="lg:hidden">
          <router-link to="/" class="flex justify-center items-center w-12 h-12 rounded-xl bg-gray-50">
            <svg
              xmlns="http://www.w3.org/2000/svg"
              viewBox="0 0 256 381"
              preserveAspectRatio="xMidYMid"
              class="h-12 w-12 text-white"
            >
              <path d="M131.015 126.065l117.088.003-117.088 115.396V126.065" fill="#FFF" class="fill-gray-400" />
              <path d="M.002 256.489h116.672L.002 374.955V256.489M.001 119.581L121.948 0l.061 121.501L.001 243.185V119.581M256.001 131.733v124.388L131.02 380.188V255.832l124.981-124.099z"  class="fill-[#F7852F]"/>
              <path d="M121.909 246.908l-113.513-.003L121.909 133.32v113.588" class="fill-[#1746A2]"/>
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