<template>
  <div class="rounded-lg shadow-sm mb-4">
    <div class="rounded-lg bg-white shadow-lg md:shadow-xl relative overflow-hidden">
      <div class="px-3 pt-8 pb-10 text-center relative z-10">
        <h4 class="text-sm uppercase text-gray-500 leading-tight">{{chartTitle}}</h4>
        <h3 class="text-3xl text-gray-700 font-semibold leading-tight my-3">{{currentData}}</h3>
        <p v-if="showPercentage" :class="{ 'text-green-500': isPositiveChange, 'text-red-500': isNegativeChange }" class="text-xs leading-tight">
          {{ percentageChange }}
        </p>
      </div>
      <div class="absolute bottom-0 inset-x-0">
        <canvas ref="chart"></canvas>
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
  data() {
    return {
      previousData: null,
      currentData: null,
    };
  },
  computed: {
    percentageChange() {
      if (this.currentData && this.previousData) {
        const change = ((this.currentData - this.previousData) / this.previousData) * 100;
        return  change > 0 ? `▲ ${change.toFixed(2)} %` : `▼ ${change.toFixed(2)} %`;
      }
      return null;
    },
    isPositiveChange() {
      return ((this.currentData - this.previousData) / this.previousData) * 100 > 0;
    },
    isNegativeChange() {
      return ((this.currentData - this.previousData) / this.previousData) * 100 < 0;
    },
    showPercentage() {
      return this.percentageChange !== null;
    },
  },
  methods: {
    renderChart() {
      if (!this.chart) {
        this.chart = new Chart(this.$refs.chart.getContext("2d"), {
          type: this.chartType,
          data: this.chartData,
          options: this.chartOptions,
        });
      } 
      else {
        this.chart.update({
          data: this.chartData,
          options: this.chartOptions,
        });
      }
    },
  },
  watch: {
    chartData: {
      handler(newData) {
        [this.previousData, this.currentData] = newData.datasets[0].data.slice(-2);
        this.renderChart(this.chartType, newData, this.chartOptions);
      },
      deep: true,
    },
  },
  mounted() {
    this.renderChart(this.chartType, this.chartData, this.chartOptions);
  },
};
</script>

<style scoped>
/* Add any styles for the ChartCard if needed */
</style>
