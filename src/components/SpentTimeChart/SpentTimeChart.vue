<template>
  <div class="relative overflow-hidden flex w-full lg:w-1/2 h-72 bg-white shadow-lg border border-indigo-100 rounded-xl">
    <time-chart
      :chartType="chartType"
      :chartData="chartData"
      :chart-options="chartOptions"
      :chart-title="chartTitle"
      chart-id="spentTimeChart"
    ></time-chart>
  </div>
</template>

<script>
import TimeChart from "./TimeChart.vue";

const type = "line";
const title = "Spent Time";
const options = {
  responsive: true,
  maintainAspectRatio: false,
  layout: { padding: 0 },
  scales: {
    x: {
      display: false,
      grid: { display: false, },
      ticks: {
        color: "rgba(0, 0, 0, 0.5)",
        font: {
          size: 12,
          weight: 600,
        },
      },
    },
    y: {
      beginAtZero: true,
      display: false,
    },
  },
  plugins: {
    legend: { display: false },
    title: {
      display: true,
      fullSize: true,
      align: "start",
      text: "        " + title,
      color: "#000000",
      font: {
        size: 16,
        weight: "bold",
      },
      padding: 20,
    },
    tooltip: {
      position: "nearest",
      interaction: { intersect: false },
      callbacks: {
        label: (context) => {
          const value = context.parsed.y;
          const hours = Math.floor(value);
          const minutes = Math.round((value - hours) * 60);
          return ` ${hours}h ${minutes}min`;
        },
      },
    },
  },
};

export default {
  name: "SpentTimeChart",
  components: {
    TimeChart,
  },
  data() {
    return {
      chartType: type,
      chartTitle: title,
      chartData: {
        labels: ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"],
        datasets: [
          {
            label: "Spent Time",
            // Initialize with empty array
            data: [],
            fill: false,
            borderCapStyle: 'round',
            borderColor: "red",
            pointBackgroundColor: "red",
            pointBorderColor: "red",
            cubicInterpolationMode: 'monotone',
            pointHoverBorderWidth: 3,
            pointRadius: 0,
            pointHoverBackgroundColor: "transparent",
            pointHoverRadius: 6,
            tension: 0.4,
            spanGaps: true,
          },
          {
            label: "Work Load",
            // Initialize with empty array
            data: [],
            fill: true,
            borderCapStyle: 'round',
            borderColor: "rgba(199, 210, 254, 1)",
            borderWidth: 2,
            backgroundColor: "rgba(199, 210, 254, 0.2)",
            pointBorderColor: "rgba(199, 210, 254, 1)",
            cubicInterpolationMode: 'monotone',
            pointRadius: 0,
            pointHoverRadius: 0,
            tension: 0.4,
            spanGaps: true,
          },
        ],
      },
      chartOptions: options,
    };
  },
  methods: {
    async fetchData() {
      try {
        const response = await fetch("spent-time-data.json");
        const data = await response.json();
        // set spent-time data
        this.chartData.datasets[0].data = data.time.data;
        // set workload data
        this.chartData.datasets[1].data = data.workload.data;
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
