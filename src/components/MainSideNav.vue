<template>
  <!-- fixed lg:static bottom-0 w-full lg:w-24 lg:h-full z-10 -->
  <div class="fixed lg:static bottom-0 w-full lg:w-20 lg:h-full z-10" role="navigation">
    <!-- rounded-t-full -->
    <div class="relative w-full lg:w-20 h-full rounded-full lg:rounded-none bg-blue-800">
      <router-link to="/" class="group hidden absolute top-10 left-1/2 transform -translate-x-1/2 lg:flex lg:justify-center lg:items-center w-14 h-14 rounded-xl hover:bg-white">
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
      </router-link>

      <div class="flex lg:flex-col items-center justify-center h-full space-x-4 lg:space-x-0 lg:space-y-4 py-2 lg:py-4">
        <router-link to="/"  class="group">
          <div class="flex justify-center items-center w-10 h-10 lg:w-14 lg:h-14 text-white opacity-50 rounded-xl group-hover:bg-white group-hover:opacity-100 group-hover:text-blue-800 transform group-hover:-translate-y-8 group-hover:lg:-translate-y-0 group-hover:lg:translate-x-8 duration-500 group-hover:shadow-xl" :class="{ 'active-link': $route.path === '/' }">
            <svg
              xmlns="http://www.w3.org/2000/svg" 
              viewBox="0 0 20 20" 
              fill="currentColor" 
              class="w-6 h-6"
            >
              <path fill-rule="evenodd" d="M9.293 2.293a1 1 0 011.414 0l7 7A1 1 0 0117 11h-1v6a1 1 0 01-1 1h-2a1 1 0 01-1-1v-3a1 1 0 00-1-1H9a1 1 0 00-1 1v3a1 1 0 01-1 1H5a1 1 0 01-1-1v-6H3a1 1 0 01-.707-1.707l7-7z" clip-rule="evenodd" />
            </svg>
          </div>
        </router-link>
        <router-link to="/reports" class="group">
          <div class="flex justify-center items-center w-10 h-10 lg:w-14 lg:h-14 text-white opacity-50 rounded-xl group-hover:bg-white group-hover:opacity-100 group-hover:text-blue-800 transform group-hover:-translate-y-8 group-hover:lg:-translate-y-0 group-hover:lg:translate-x-8 duration-500 group-hover:shadow-xl" :class="{ 'active-link': $route.path === '/reports' }">
            <svg
              xmlns="http://www.w3.org/2000/svg"
              viewBox="0 0 20 20"
              fill="currentColor"
              class="w-6 h-6"
            >
              <path d="M12 9a1 1 0 01-1-1V3c0-.553.45-1.008.997-.93a7.004 7.004 0 015.933 5.933c.078.547-.378.997-.93.997h-5z" />
              <path d="M8.003 4.07C8.55 3.992 9 4.447 9 5v5a1 1 0 001 1h5c.552 0 1.008.45.93.997A7.001 7.001 0 012 11a7.002 7.002 0 016.003-6.93z" />
            </svg>
          </div>
        </router-link>
        <router-link to="/messages" class="group">
          <div class="flex justify-center items-center w-10 h-10 lg:w-14 lg:h-14 text-white opacity-50 rounded-xl group-hover:bg-white group-hover:opacity-100 group-hover:text-blue-800 transform group-hover:-translate-y-8 group-hover:lg:-translate-y-0 group-hover:lg:translate-x-8 duration-500 group-hover:shadow-xl" :class="{ 'active-link': $route.path === '/messages' }">
            <svg
              xmlns="http://www.w3.org/2000/svg"
              viewBox="0 0 20 20"
              fill="currentColor"
              class="w-6 h-6"
            >
              <path fill-rule="evenodd" d="M10 2c-2.236 0-4.43.18-6.57.524C1.993 2.755 1 4.014 1 5.426v5.148c0 1.413.993 2.67 2.43 2.902.848.137 1.705.248 2.57.331v3.443a.75.75 0 001.28.53l3.58-3.579a.78.78 0 01.527-.224 41.202 41.202 0 005.183-.5c1.437-.232 2.43-1.49 2.43-2.903V5.426c0-1.413-.993-2.67-2.43-2.902A41.289 41.289 0 0010 2zm0 7a1 1 0 100-2 1 1 0 000 2zM8 8a1 1 0 11-2 0 1 1 0 012 0zm5 1a1 1 0 100-2 1 1 0 000 2z" clip-rule="evenodd" />
            </svg>
          </div>
        </router-link>
        <router-link to="/payments" class="group">
          <div class="flex justify-center items-center w-10 h-10 lg:w-14 lg:h-14 text-white opacity-50 rounded-xl group-hover:bg-white group-hover:opacity-100 group-hover:text-blue-800 transform group-hover:-translate-y-8 group-hover:lg:-translate-y-0 group-hover:lg:translate-x-8 duration-500 group-hover:shadow-xl" :class="{ 'active-link': $route.path === '/payments' }">
            <svg
              xmlns="http://www.w3.org/2000/svg"
              viewBox="0 0 20 20"
              fill="currentColor"
              class="w-6 h-6"
            >
              <path fill-rule="evenodd" d="M2.5 4A1.5 1.5 0 001 5.5V6h18v-.5A1.5 1.5 0 0017.5 4h-15zM19 8.5H1v6A1.5 1.5 0 002.5 16h15a1.5 1.5 0 001.5-1.5v-6zM3 13.25a.75.75 0 01.75-.75h1.5a.75.75 0 010 1.5h-1.5a.75.75 0 01-.75-.75zm4.75-.75a.75.75 0 000 1.5h3.5a.75.75 0 000-1.5h-3.5z" clip-rule="evenodd" />
            </svg>
          </div>
        </router-link>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "MainSideNav",
  methods: {
    isActive(route) {
      return this.$route.path === route;
    }
  }
};
</script>

<style scoped>
/* Active NavLink Styling  */
.active-link {
  @apply bg-white group-hover:text-red-500 text-red-500 opacity-100 transform -translate-y-8 lg:-translate-y-0 lg:translate-x-8 duration-500 shadow-xl;
}
</style>
