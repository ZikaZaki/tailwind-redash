<template>
  <div class="flex w-full h-full">
    <time-chart
      :chart-data="chartData"
      :options="chartOptions"
    ></time-chart>
  </div>
</template>

<script>
import TimeChart from "./TimeChart.vue";

export default {
  components: {
    TimeChart,
  },
  data() {
    return {
      chartData: {
        labels: ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"],
        datasets: [
          {
            label: "Spent Time",
            data: [
              2.8, 2.2, 3.3, 2.75,
              4.3, 4.1, 5.2
            ], // Replace with your actual data
            fill: false,
            borderCapStyle: 'round',
            borderColor: "red",
            // backgroundColor: "rgba(199, 210, 254, 0.2)",
            pointBackgroundColor: "red",
            pointBorderColor: "red",
            cubicInterpolationMode: 'monotone',
            pointHoverBorderWidth: 3,
            pointRadius: 4,
            pointHoverBackgroundColor: "transparent",
            pointHoverRadius: 6,
            tension: 0.4,
          },
          {
            label: "Work Load",
            data: [
              1.4, 2.75, 2.0, 3.3,
              1.95, 3.6, 3.8
            ], // Replace with your actual data
            fill: true,
            borderCapStyle: 'round',
            // borderColor: "rgba(75, 192, 192, 1)",
            borderColor: "rgba(199, 210, 254, 1)",
            borderWidth: 2,
            backgroundColor: "rgba(199, 210, 254, 0.2)",
            // pointBackgroundColor: "rgba(75, 192, 192, 1)",
            pointBorderColor: "rgba(199, 210, 254, 1)",
            cubicInterpolationMode: 'monotone',
            pointRadius: 0,
            pointHoverRadius: 0,
            tension: 0.4,
          },
        ],
      },
      chartOptions: {
        layout: {
          padding: {
            top: 20,
            bottom: 20,
            left: 30,
            right: 30,
          }
        },
        responsive: true,
        maintainAspectRatio: false,
        scales: {
          x: {
            display: true,
            grid: { display: false },
            ticks: {
              color: "rgba(0, 0, 0, 0.5)",
              font: {
                size: 12,
                weight: 600,
              },
              // align: "end",
            },
          },
          y: {
            beginAtZero: true,
            display: true,
          },
        },
        plugins: {

          legend: {
            display: false,
          },
          tooltip: {
            callbacks: {
              label: (context) => {
                const value = context.parsed.y;
                const hours = Math.floor(value);
                const minutes = Math.round((value - hours) * 60);
                return ` ${hours}h ${minutes}min`;
              },

              position: "nearest",
              // set backgrond to red
              backgroundColor: "red",

              color: "red",
              // backgroundColor: "rgba(0, 0, 0, 0.8)",
            },
          },
        },
      },
    };
  },
};
</script>