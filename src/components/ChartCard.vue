<template>
  <div class="absolute top-2 right-3 flex items-center justify-center self-end text-base font-semibold text-green-500 dark:text-green-500 text-center">
    ▲ 12%
  </div>
  <div class="flex flex-col md:flex-row justify-between items-center space-x-1 ">
    <div :id="chartId" class="w-full h-full"></div>
    <div class="flex flex-col items-center justify-center md:mt-4 md:mb-2">
      <h5 class="leading-none text-xl text-center font-bold text-gray-900 dark:text-white">
        32.4k
      </h5>
      <p class="text-sm uppercase font-semibold text-gray-400 dark:text-gray-300">           
        {{chartTitle ? chartTitle : "Title"}}
      </p>
    </div>
  </div>
</template>

<script>
export default {
  name: "ChartCard",
  props: {
    chartTitle: String,
    chartData: Array,
    chartOptions: Object,
    chartId: String,
  },
  mounted() {
    if (document.getElementById(this.chartId) && typeof ApexCharts !== 'undefined') {
      const chart = new ApexCharts(document.getElementById(this.chartId), this.chartOptions);
      chart.render();
    }
  },
};
</script>

<style scoped>
/* Add any styles for the chart container if needed */
</style>