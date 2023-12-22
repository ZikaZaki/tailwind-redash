<template>
  <div class="absolute block h-full -inset-x-2 bottom-[-8px]">
    <canvas ref="timeChart"></canvas>
    <div class="labels absolute inset-x-0 bottom-4 py-2">
      <div class="flex justify-around gap-2 items-center text-xs font-semibold text-gray-400">
        <span>Sun</span>
        <span>Mon</span>
        <span>Tue</span>
        <span>Wed</span>
        <span>Thu</span>
        <span>Fri</span>
        <span>Sat</span>
      </div>
    </div>
  </div>
</template>

<script>
import Chart from "chart.js/auto";

export default {
  props: {
    chartTitle: String,
    chartType: String,
    chartData: Object,
    chartOptions: Object,
    chartId: String,
  },
  methods: {
    renderChart() {
      if (!this.timeChart) {
        this.timeChart = new Chart(this.$refs.timeChart.getContext("2d"), {
          type: this.chartType,
          data: this.chartData,
          options: this.chartOptions,
        });
      } 
      else {
        this.timeChart.update({
          data: this.chartData,
          options: this.chartOptions,
        });
      }
    },
  },
  watch: {
    chartData: {
      handler(newData) {
        this.renderChart(this.chartType, newData, this.chartOptions);
      },
      deep: true,
    },
  },
  mounted() {
    this.renderChart(this.chartType, this.chartData, this.chartOptions);
  },
  beforeDestroy() {
    if (this.timeChart) {
      this.timeChart.destroy();
    }
  },
};
</script>

<style scoped>
/* Add any custom styles here */
</style>