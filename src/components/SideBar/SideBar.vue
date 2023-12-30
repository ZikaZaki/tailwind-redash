<template>
  <div class="relative flex flex-col w-full h-full items-center rounded-xl p-4 bg-indigo-50 border border-indigo-100 space-y-3 overflow-y-auto">
    <!-- Edit button -->
    <div class="absolute right-6 flex w-full justify-end">
      <svg  
        xmlns="http://www.w3.org/2000/svg"
        viewBox="0 0 24 24" 
        fill="currentColor" 
        class="h-6 w-6 text-gray-400 hover:text-gray-500 hover:cursor-pointer"
        >
        <path fill-rule="evenodd" clip-rule="evenodd" d="M19.2071 2.79312C17.9882 1.57417 16.0119 1.57417 14.7929 2.79312L5.68463 11.9014C5.30015 12.2859 5.0274 12.7676 4.89552 13.2951L4.02988 16.7577C3.94468 17.0985 4.04453 17.459 4.29291 17.7073C4.54129 17.9557 4.90178 18.0556 5.24256 17.9704L8.70513 17.1047C9.23263 16.9729 9.71437 16.7001 10.0988 16.3156L19.2071 7.20733C20.4261 5.98838 20.4261 4.01207 19.2071 2.79312ZM16.2071 4.20733C16.645 3.76943 17.355 3.76943 17.7929 4.20733C18.2308 4.64524 18.2308 5.35522 17.7929 5.79312L8.68463 14.9014C8.55647 15.0296 8.39589 15.1205 8.22006 15.1644L6.37439 15.6259L6.83581 13.7802C6.87976 13.6044 6.97068 13.4438 7.09884 13.3156L16.2071 4.20733Z"/>
        <path d="M5 20C4.44772 20 4 20.4477 4 21C4 21.5523 4.44772 22 5 22H19C19.5523 22 20 21.5523 20 21C20 20.4477 19.5523 20 19 20H5Z"/>
      </svg>
    </div>
    <Percentage />
    <!-- CreditCard Container -->
    <div class="flex flex-col w-full space-y-1">
      <div class="flex justify-between p-2">
        <span class="text-lg font-bold">My Card</span>
        <button class="text-gray-400 text-lg font-bold tracking-widest hover:text-gray-500 hover:cursor-pointer">...</button>
      </div>
      <CreditCard />
    </div>
    <!-- Transactions Container -->
    <div class="flex flex-col w-full h-80">
      <div class="flex justify-between p-2">
        <span class="text-lg font-bold">Transactions</span>
        <button class="flex items-center justify-center border border-red-500 bg-red-600 h-8 w-8 rounded-lg text-white text-xl font-bold tracking-widest hover:bg-white hover:text-red-600 hover:cursor-pointer">
          <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" class="w-5 h-5">
            <path d="M10.75 4.75a.75.75 0 0 0-1.5 0v4.5h-4.5a.75.75 0 0 0 0 1.5h4.5v4.5a.75.75 0 0 0 1.5 0v-4.5h4.5a.75.75 0 0 0 0-1.5h-4.5v-4.5Z" />
          </svg>
        </button>
      </div>
      <Simplebar class="flex w-full h-full overflow-auto" :="{...scrollbarOptions}">
        <TransactionsList :transactions="transactions" />
      </Simplebar>
    </div>
  </div>
</template>

<script>
import Percentage from "./Percentage.vue";
import CreditCard from "./CreditCard.vue";
import TransactionsList from "../Transactions/TransactionsList.vue";

export default {
  name: "SideBar",
  components: { Percentage, CreditCard, TransactionsList },
  data () {
    return {
      transactions: [],
      scrollbarOptions: { autoHide: false },
    }
  },
  methods: {
    async fetchData() {
      try {
        const response = await fetch("transactions-data.json");
        const data = await response.json();
        this.transactions = data;
      } catch (error) {
        console.log("Error fetching data: ", error);
      }
    }
  },
  mounted () {
    this.fetchData();
  }
};
</script>