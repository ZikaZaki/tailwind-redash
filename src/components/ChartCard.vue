<template>
  <div class="flex w-full items-center justify-center">
    <div class="flex flex-col py-3 space-y-0.5 items-center justify-center text-center relative z-10">
      <h4 class="text-sm font-semibold uppercase text-gray-400 leading-tight">{{chartTitle}}</h4>
      <h3 class="text-2xl text-gray-700 font-semibold leading-tight">{{currentData}}</h3>
      <p v-if="showPercentage" :class="{'text-red-500': percentageChange < 0, 'text-green-500': percentageChange > 0 }" class="text-xs font-semibold leading-tight">
        {{ percentageChange > 0 ? `▲ ${percentageChange} %` : `▼ ${percentageChange} %` }}
      </p>
    </div>
    <div class="absolute inset-x-0 -bottom-2 -left-2 -right-1 overflow-hidden rounded-md">
      <canvas ref="chart" height="70"></canvas>
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
        // return  change > 0 ? `▲ ${change.toFixed(2)} %` : `▼ ${change.toFixed(2)} %`;
        if (change < 0) {
          this.chartData.datasets[0].borderColor = "rgba(239, 68, 68, 1)";
          this.chartData.datasets[0].backgroundColor = "rgba(239, 68, 68, 0.2)";
        } else if (change > 0 && change < 5) {
          this.chartData.datasets[0].borderColor = "rgba(255, 211, 92, 1)";
          this.chartData.datasets[0].backgroundColor = "rgba(255, 211, 92, 0.2)";
        } else {
          this.chartData.datasets[0].borderColor = "rgba(52, 211, 153, 1)";
          this.chartData.datasets[0].backgroundColor = "rgba(52, 211, 153, 0.2)";
        }
        return change.toFixed(2);
      }
      return null;
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

  <!-- props: {
    chartData: {
      type: Object,
      required: true,
    },
    chartOptions: {
      type: Object,
      required: true,
    },
    chartId: {
      type: String,
      required: true,
    },
    chartTitle: {
      type: String,
      required: true,
    },
  },
  data() {
    return {
      chartType: "line",
    };
  }, -->