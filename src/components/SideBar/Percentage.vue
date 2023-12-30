<template>
  <div class="relative inline-flex w-full items-center justify-center"
  >
    <svg class="h-40 w-40 rounded-full bg-transparent">
      <circle
        class="text-blue-800 transition-all duration-700 ease-in-out"
        stroke-width="3"
        :stroke-dasharray="circumference"
        :stroke-dashoffset="circumference - percent / 100 * circumference"
        stroke-linecap="round"
        stroke="currentColor"
        fill="white"
        r="75"
        cx="50%"
        cy="50%"
      />
    </svg>
    <div class="absolute shadow-lg inline-flex items-center justify-center top-[50%] left-[50%] transform translate-x-[-50%] translate-y-[-50%] h-24 w-24 bg-gray-50 rounded-full text-center">
      <span class="text-2xl font-black text-blue-800 text-center" v-text="percent"></span>
      <span class="font-bold text-blue-800 text-center">%</span>
    </div>
  </div>
</template>

<script>
export default {
  name: "Percentage",
  data() {
    return {
      circumference: 78 * 2 * Math.PI,
      percent: 0,
    }
  },
  methods: {
    async fetchData() {
      try {
        const response = await fetch("percentage-data.json");
        const data = await response.json();
        this.percent = data.data;
      } catch (error) {
        console.log("Error fetching data: ", error);
      }
    },
  },
  mounted() {
    this.fetchData();
  },
};
</script>
