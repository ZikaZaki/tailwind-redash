<template>
  <div class="relative flex flex-col w-full h-40 p-3 bg-white rounded-lg 
  shadow-lg border border-gray-200 overflow-hidden">
    <ChartCard
      :chartType="chartType"
      :chartData="chartData"
      :chartOptions="chartOptions"
      chartId="customers-chart"
      chartTitle="Customers"
    />
  </div>
</template>

<script>
import ChartCard from "./ChartCard.vue";

const type = "line";
const options = {
  maintainAspectRatio: false,
  responsive: true,
  plugins: {
    legend: { display: false },
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
  name: "CustomersChart",
  components: {
    ChartCard,
  },
  data() {
    return {
      chartType: type,
      chartData: {
        labels: null,
        datasets: [{
          data: null,
          fill: true,
          borderCapStyle: 'round',
          backgroundColor: "rgba(101, 116, 205, 0.2)",
          borderColor: "rgba(101, 116, 205, 1)",
          cubicInterpolationMode: 'monotone',
          tension: 0.4,
          spanGaps: true,
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
        const response = await fetch("customers-data.json");
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
/* Add any styles for the CustomersChart component if needed */
</style>
