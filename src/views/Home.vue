 <template>
  <div class="w-full">
    <!-- <div class="bg-gray-300 rounded-xl h-14">search</div> -->

    <div class="bg-gray-300 rounded-xl mt-4 lg:hidden p-2">
      <button class="block w-32 h-10 bg-blue-600 mx-auto" @click="showSidebar = !showSidebar">
        Toggle sidebar
      </button>
    </div>

    <div class="overflow-hidden">
      <div class="transform lg:transform-none transition-all duration-300" :class="showSidebar ? '-translate-x-full' : ''">
        <div class="flex mt-4 lg:mt-8 lg:space-x-10">
          <div class="w-full flex-shrink-0 lg:w-3/4 lg:flex-shrink rounded-xl">
            <!-- Line-Charts Container -->
            <LineChartsContainer />

  
            <div class="bg-gray-300 rounded-xl h-28 mt-4 lg:mt-8 w-full"></div>
  
            <div class="flex space-x-4 lg:space-x-10 mt-4 lg:mt-8">
              <div class="bg-gray-300 rounded-xl h-28 w-full"></div>
              <div class="bg-gray-300 rounded-xl h-28 w-full"></div>
            </div>
          </div>
          <div class="flex justify-center items-center w-full flex-shrink-0 lg:w-1/4 lg:flex-shrink bg-gray-300 rounded-xl h-52">
            <!-- sidebar -->
            <CreditCard />
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import CreditCard from "../components/CreditCard.vue";
import LineChart from "../components/LineChart.vue";
import VisitorsChart from "../components/VisitorsChart.vue";
import LineChartsContainer from "../components/LineChartsContainer.vue";

export default {
  name: 'Home',
  components: { CreditCard, VisitorsChart, LineChart, LineChartsContainer },
  data: function(){
    return {
      showSidebar: false,
    }
  }
}
</script>