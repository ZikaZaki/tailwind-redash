 <template>
  <div class="w-full h-full">
    <div class="rounded-xl mt-4 lg:hidden">
      <button 
        class="flex w-32 h-10 bg-white rounded-lg mx-auto shadow-lg relative focus:outline-none" 
        @click="showSidebar = !showSidebar"
      >
        <div 
          class="w-16 h-full bg-blue-400 absolute top-0 rounded-lg transform duration-300"
          :class="showSidebar ? 'translate-x-full' : ''"
        >
        </div>
        <div
          class="flex justify-center items-center w-16 h-full transform duration-300"
          :class="showSidebar ? 'text-gray-400' : 'text-white'"
        >
          <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" data-slot="icon" class="w-6 h-6">
            <path d="M15.5 2A1.5 1.5 0 0 0 14 3.5v13a1.5 1.5 0 0 0 1.5 1.5h1a1.5 1.5 0 0 0 1.5-1.5v-13A1.5 1.5 0 0 0 16.5 2h-1ZM9.5 6A1.5 1.5 0 0 0 8 7.5v9A1.5 1.5 0 0 0 9.5 18h1a1.5 1.5 0 0 0 1.5-1.5v-9A1.5 1.5 0 0 0 10.5 6h-1ZM3.5 10A1.5 1.5 0 0 0 2 11.5v5A1.5 1.5 0 0 0 3.5 18h1A1.5 1.5 0 0 0 6 16.5v-5A1.5 1.5 0 0 0 4.5 10h-1Z" />
          </svg>

        </div>
        <div
          class="flex justify-center items-center w-16 h-full transform duration-300"
          :class="!showSidebar ? 'text-gray-400' : 'text-white'"
        >
          <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" data-slot="icon" class="w-6 h-6">
            <path fill-rule="evenodd" d="M1 5.25A2.25 2.25 0 0 1 3.25 3h13.5A2.25 2.25 0 0 1 19 5.25v9.5A2.25 2.25 0 0 1 16.75 17H3.25A2.25 2.25 0 0 1 1 14.75v-9.5Zm1.5 5.81v3.69c0 .414.336.75.75.75h13.5a.75.75 0 0 0 .75-.75v-2.69l-2.22-2.219a.75.75 0 0 0-1.06 0l-1.91 1.909.47.47a.75.75 0 1 1-1.06 1.06L6.53 8.091a.75.75 0 0 0-1.06 0l-2.97 2.97ZM12 7a1 1 0 1 1-2 0 1 1 0 0 1 2 0Z" clip-rule="evenodd" />
          </svg>
        </div>
        
      </button>
    </div>

    <!-- overflow-hidden here is necessary to hide the sidebar -->
    <div class="overflow-hidden h-full pb-52 lg:pb-20">
      <div class="h-full transform lg:transform-none transition-all duration-300" :class="showSidebar ? '-translate-x-full' : ''">
        <div class="flex h-full mt-4 lg:mt-10 lg:space-x-10">
          <div class="w-full h-full overflow-hidden flex-shrink-0 lg:w-3/4 lg:flex-shrink rounded-md">
            <Simplebar class="flex w-full h-full overflow-auto" :="{...scrollbarOptions}" @scroll="handleScroll">
              <div class="flex space-x-4 lg:space-x-10"></div>
              
              <!-- Line-Charts Container -->
              <LineChartsContainer />
    
              <!-- Candlestick-Chart Container -->
              <div class="flex bg-indigo-50 border border-indigo-100 rounded-xl mt-4 lg:mt-10 w-full">
                <CandlestickChart />
              </div>
              
              <!-- Blog & Spent-Time Chart Container -->
              <div class="md:flex space-y-5 md:space-y-0 md:space-x-10 mt-4 lg:mt-10">
                <SpentTimeChart />
                <Blog />
              </div>
            </Simplebar>
          </div>

          <!-- sidebar -->
          <div class="w-full flex-shrink-0 lg:w-1/4 lg:flex-shrink">
            <Simplebar class="flex w-full h-full overflow-auto" :="{...scrollbarOptions}">
              <SideBar />
            </Simplebar>
          </div>
          
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import CandlestickChart from "../components/CandlestickChart/CandlestickChart.vue";
import LineChartsContainer from "../components/LineCharts/LineChartsContainer.vue";
import Blog from "../components/Blog.vue";
import SpentTimeChart from "../components/SpentTimeChart/SpentTimeChart.vue";
import SideBar from "../components/SideBar/SideBar.vue";

export default {
  name: 'Home',
  components: { LineChartsContainer, CandlestickChart, Blog, SpentTimeChart, SideBar },
  data() {
    return {
      scrollbarOptions: { autoHide: true },
      showSidebar: false,
    }
  },

  methods: {
    handleScroll: function(e){
      // console.log(e);
    },
  },
};
</script>
