<template>
  <div class="flex w-full h-full">
    <canvas ref="timeChart"></canvas>
  </div>
</template>

<script>
import Chart from "chart.js/auto";

export default {
  props: ["chartData", "options"],
  mounted() {
    const ctx = this.$refs.timeChart.getContext("2d");

    new Chart(ctx, {
      type: "line",
      data: this.chartData,
      options: this.options,
    });
  },
};
</script>

<style>
/* Add any custom styles here */
</style>