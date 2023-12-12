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
        <div class="flex mt-4 lg:mt-10 lg:space-x-10">
          <div class="w-full flex-shrink-0 lg:w-3/4 lg:flex-shrink rounded-xl">
            <div class="flex space-x-4 lg:space-x-10">
              <div class="flex w-full bg-white shadow-lg border-gray-100 rounded-xl">
                <!-- <VisitorsApexChart /> -->
                <UsersChart />
              </div>
              <!-- <div class="bg-gray-300 rounded-xl h-28 w-full"></div> -->
              <div class="bg-gray-300 rounded-xl h-28 w-full"></div>
              <div class="bg-gray-300 rounded-xl h-28 w-full"></div>
            </div>
  
            <div class="bg-gray-300 rounded-xl h-28 mt-4 lg:mt-10 w-full"></div>
  
            <div class="flex space-x-4 lg:space-x-10 mt-4 lg:mt-10">
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
import VisitorsApexChart from "../components/VisitorsApexChart.vue";
import CreditCard from "../components/CreditCard.vue";
import UsersChart from "../components/UsersChart.vue";

export default {
  name: 'Home',
  components: { CreditCard, VisitorsApexChart, UsersChart },
  data: function(){
    return {
      showSidebar: false,
    }
  }
}
</script>