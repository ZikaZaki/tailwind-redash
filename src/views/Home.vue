 <template>
  <div class="w-full h-full">
    <!-- <div class="bg-gray-300 rounded-xl h-14">search</div> -->

    <div class="bg-gray-300 rounded-xl mt-4 lg:hidden p-2">
      <button class="block w-32 h-10 bg-blue-600 mx-auto" @click="showSidebar = !showSidebar">
        Toggle sidebar
      </button>
    </div>

    <div class="h-full pb-52 md:pb-24">
      <div class="h-full transform lg:transform-none transition-all duration-300" :class="showSidebar ? '-translate-x-full' : ''">
        <div class="flex h-full mt-4 lg:mt-10 lg:space-x-10">
          <div class="w-full h-full overflow-hidden flex-shrink-0 lg:w-[72%] lg:flex-shrink rounded-xl">
            <Simplebar class="flex w-full h-full overflow-auto">

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

          <div class="flex flex-col items-center p-8 w-full flex-shrink-0 lg:w-[28%] lg:flex-shrink bg-gray-500 rounded-xl">
            <!-- sidebar -->
            <CreditCard />
            <!-- <div class="bg-gray-500 w-full h-full"></div> -->
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import CreditCard from "../components/CreditCard.vue";
import CandlestickChart from "../components/CandlestickChart/CandlestickChart.vue";
import LineChartsContainer from "../components/LineCharts/LineChartsContainer.vue";
import Blog from "../components/Blog.vue";
import SpentTimeChart from "../components/SpentTimeChart/SpentTimeChart.vue";

export default {
  name: 'Home',
  components: { CreditCard, LineChartsContainer, CandlestickChart, Blog, SpentTimeChart },
  data: function(){
    return {
      scrollbarOptions: {
        scrollbars: {
          autoHide: "leave",
          autoHideDelay: 800,
          autoHideScrollbar: true,
          clickScrolling: true,
          dragScrolling: true,
          snapHandle: true,
          touchSupport: true,
          paddingAbsolute: true,
          syncCallbacks: true,
          overflowBehavior: {
            x: "hidden",
            y: "scroll",
          },
        },
      },
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
