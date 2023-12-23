 <template>
  <div class="w-full h-full">
    <!-- <div class="bg-gray-300 rounded-xl h-14">search</div> -->

    <div class="bg-gray-300 rounded-xl mt-4 lg:hidden p-2">
      <button class="block w-32 h-10 bg-blue-600 mx-auto" @click="showSidebar = !showSidebar">
        Toggle sidebar
      </button>
    </div>

    <!-- overflow-hidden here is necessary to hide the sidebar -->
    <div class="overflow-hidden h-full pb-52 lg:pb-24">
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
    
    
              <div class="flex-col space-y-8 space-x-4 lg:space-x-0 mt-4 lg:mt-10">
                <!-- <div class="bg-yellow-300 rounded-xl h-52 w-full"></div> -->
                <!-- <div class="bg-yellow-300 rounded-xl h-52 w-full"></div> -->
                <!-- <SpentTimeChart /> -->
                <!-- <div class="flex bg-white border-2 border-indigo-100 rounded-xl h-96 w-full">
                </div> -->
              </div>
            </Simplebar>
          </div>

          <!-- sidebar -->
          <div class="w-full flex-shrink-0 lg:w-1/4 lg:flex-shrink">
            <SideBar />
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
