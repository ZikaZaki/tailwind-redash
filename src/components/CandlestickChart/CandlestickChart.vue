<template>
  <div class="flex rounded-xl bg-indigo-50 w-full h-72 lg:h-96 relative">
    <div class="flex outline-none absolute top-8 right-8 rounded-full bg-white pr-2 border-2 hover:border-indigo-300 select-none">
      <select id="datasetSelector" class="rounded-full py-1 px-2 w-24 bg-white border-none outline-none text-blue-800 font-semibold">
        <option value="0">Year</option>
        <option value="20">2020</option>
        <option value="21">2021</option>
        <option value="22">2022</option>
        <option value="23">2023</option>
        <!-- Add more options as needed -->
      </select>
    </div>
    <canvas ref="candlestickChart" height="auto" class="flex flex-col min-w-full"></canvas>
  </div>
</template>

<script>
import { debounce } from 'lodash';
import { candlestickPlugin } from './candlestickPlugin';

export default {
  name: "CandlestickChart",
  data() {
    return {
      candlestickChart: null,
      chartData: {
        datasets: [
          {
            barThickness: 10,
            borderWidth: 0,
            borderRadius: Number.MAX_VALUE,
            borderSkipped: false,
            // initialize with empty data
            data: [],
            backgroundColor: [],
          },
        ],
      },
    };
  },
  computed: {
    chartType() {
      return "bar";
    },
    chartOptions() {
      // return chart options based on reactive data
      return {
        maintainAspectRatio: false,
        responsive: true,
        layout: {
          padding: {
            top: 40,
            bottom: 40,
            left: 30,
            right: 30,
          },
        },
        parsing: {
          xAxisKey: "month",
          yAxisKey: "scale",
        },
        scales: {
          x: {
            display: true,
            grid: {
              display: false,
            },
          },
          y: {
            grid: {
              display: false,
            },
          },
        },
        plugins: {
          legend: { display: false },
          title: {
            display: true,
            fullSize: true,
            align: "start",
            text: 'Statistics',
            color: "#000000",
            font: {
              size: 16,
              weight: "bold",
            },
            padding: {
              bottom: 30,
            },
          },
          candlestick: candlestickPlugin,
        },
      };
    },
  },
  methods: {
    fetchData: debounce(async function() {
      try {
        const response = await fetch(`${import.meta.env.BASE_URL}/statistics-data.json`);
        const data = await response.json();
        this.chartData.datasets[0].data = data.stats;
        this.updateChartBackgroundColor(this.chartData);

        // Lazy load chart.js after the data is fetched and processed
        import('chart.js').then((module) => {
          this.candlestickChart = new module.Chart(this.$refs.candlestickChart.getContext("2d"), {
            type: this.chartType,
            data: this.chartData,
            options: this.chartOptions,
            plugins: [candlestickPlugin],
          });
        });
      } catch (error) {
        console.error("Error fetching data: ", error);
      }
    }, 300),
    updateChartBackgroundColor(){
      this.chartData.datasets[0].backgroundColor = this.chartData.datasets[0].data.map((item) => { 
        return item.c >= item.o ? "rgba(30, 64, 175, 1)" : "rgba(239, 68, 68, 1)"; 
      });
    },
  },
  mounted() {
    this.fetchData();
  },
  beforeDestroy() {
    if (this.candlestickChart) {
      this.candlestickChart.destroy();
    }
  },
};
</script>

<style scoped>
/* your styles here */
</style>