<template>
  <div class="relative overflow-hidden flex flex-col w-full mb-1.5 h-32 md:h-28 bg-white rounded-lg shadow-md p-2 md:shadow-lg border-[1px] border-gray-200">
    <ChartCard
      :chartType="chartType"
      :chartData="chartData"
      :chartOptions="chartOptions"
      chartId="orders-chart"
      chartTitle="Orders"
    />
  </div>
</template>

<script>
import ChartCard from "./ChartCard.vue"; // Adjust path based on your location

const type = "line";
const options = {
  maintainAspectRatio: false,
  responsive: true,
  plugins: {
    // title: {
    //   display: true,
    //   text: "ZikaZki"
    // },
    legend: {
      display: false, // Hide the legend (dataset toggle button)
    },
    tooltip: {
      enabled: true,
      mode: "nearest",
      intersect: false,
      backgroundColor: 'rgba(0, 0, 0, 0.8)',
    },
  },
  scales: {
    y: {
      display: false,
      ticks: { padding: 0 },
    },
    x: {
      display: false,
      ticks: { padding: 0 },
    },
  },
  layout: {
    padding: 0,
  },
};

export default {
  name: "OrdersChart",
  components: {
    ChartCard,
  },
  data() {
    return {
      // Replace with actual data
      chartType: type,
      chartData: {
        labels: null,
        datasets: [{
          // label: 'My First Dataset',
          data: null, // Replace with actual data
          fill: 'origin',
          backgroundColor: "rgba(101, 116, 205, 0.2)",
          borderColor: "rgba(101, 116, 205, 1)",
          tension: 0.3,
          pointStyle: 'circle',
          pointRadius: 0,
        }]
      },
      chartOptions: options,
    };
  },
  methods: {
    async fetchData() {
      try {
        const response = await fetch(`${import.meta.env.BASE_URL}/orders-data.json`);
        const data = await response.json();
        this.chartData.labels = data.labels;
        this.chartData.datasets[0].data = data.data;
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

<style scoped>
/* Add any styles for the OrdersChart component if needed */
</style>
