<template>
  <div class="absolute block h-full inset-x-[-8px] bottom-[-8px]">
    <canvas ref="timeChart"></canvas>
    <div class="labels absolute inset-x-0 bottom-4 py-2">
      <div class="flex justify-around text-xs font-semibold text-gray-400">
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