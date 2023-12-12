<template>
  <div class="relative flex flex-col gap-1 w-full bg-white rounded-lg shadow dark:bg-gray-800 px-2 py-1 md:px-3 md:py-2 overflow-hidden">
    <ChartCard
      :chart-title="chartTitle"
      :chart-data="chartData"
      :chart-options="chartOptions"
      chart-id="users-area-chart"
    />
    </div>
</template>

<script>
import ChartCard from "./ChartCard.vue";

// The ChartData
// const chartTitle = "New users";
// const chartData = [6500, 6418, 6456, 6526, 6356, 6456];

const chartData = [
  {
    name: "new visitors",
    data: [6500, 6418, 6456, 6526, 6356, 6456], // Replace with actual data
    color: "#1A56DB",
  }
];
 
// Replace with actual data
export default {
  name: "UsersChart",
  components: {
    ChartCard,
  },
  data() {
    return {
      chartTitle: "visitors",
      chartOptions: {
        chart: {
          height: "100%",
          maxWidth: "100%",
          type: "area",
          fontFamily: "Inter, sans-serif",
          dropShadow: {
            enabled: false,
          },
          toolbar: {
            show: false,
          },
        },
        tooltip: {
          enabled: true,
          x: {
            show: false,
          },
        },
        fill: {
          type: "gradient",
          gradient: {
            opacityFrom: 0.55,
            opacityTo: 0,
            shade: "#1C64F2",
            gradientToColors: ["#1C64F2"],
          },
        },
        dataLabels: {
          enabled: false,
        },
        stroke: {
          width: 6,
        },
        grid: {
          show: false,
          strokeDashArray: 4,
          padding: {
            left: 0,
            right: 0,
            top: 0,
            bottom: 0,
          },
        },
        series: chartData,
        // series: [
        //   {
        //     name: chartTitle,
        //     data: chartData ? chartData : [],
        //     // name: this.chartTitle,
        //     // data: this.chartData,
        //     // data: [6500, 6418, 6456, 6526, 6356, 6456], // Replace with actual data
        //     color: "#1A56DB",
        //   }
        // ],
        xaxis: {
          categories: [
            "01 February",
            "02 February",
            "03 February",
            "04 February",
            "05 February",
            "06 February",
            "07 February",
          ],
          labels: {
            show: false,
          },
          axisBorder: {
            show: true,
          },
          axisTicks: {
            show: true,
          },
        },
        yaxis: {
          show: false,
        },
      },
    };
  },
};
</script>

<style scoped>
/* Add any additional styles for the chart container or other elements if needed */
</style>
