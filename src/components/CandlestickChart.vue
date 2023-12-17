<template>
  <div class="flex w-full h-72 relative">
    <div class="absolute top-6 right-10 rounded-full bg-white pr-1">
      <select id="datasetSelector" class="rounded-full py-1 px-2 w-24 bg-white border-none outline-none text-blue-800 font-semibold">
        <option value="0">Year</option>
        <option value="20">2020</option>
        <option value="21">2021</option>
        <option value="22">2022</option>
        <option value="23">2023</option>
        <!-- Add more options as needed -->
      </select>
    </div>
      <canvas ref="chart" height="auto" class="flex flex-col  min-w-full" ></canvas>
  </div>
</template>

<script>
import Chart from "chart.js/auto";

const candlestickPlugin = {
  id: "custom_candlestick_plugin",
  beforeDatasetsDraw: (chart, args, pluginOptions) => {
    console.log("HI from CandleStick custom plugin....................");
    const { ctx, data, chartArea: { top, bottom, left, right, width, height }, scales: { x, y } } = chart;

    ctx.save();
    ctx.lineWidth = 1.5;
    // set color to be dark gray
    ctx.strokeStyle = "rgba(0, 0, 0, 0.3)";

    // console.log(chart.getDatasetMeta(0).data[0]);

    data.datasets[0].data.forEach((datapoint, index) => {
      ctx.beginPath();
      ctx.moveTo(chart.getDatasetMeta(0).data[index].x, chart.getDatasetMeta(0).data[index].y);
      ctx.lineTo(chart.getDatasetMeta(0).data[index].x, y.getPixelForValue(data.datasets[0].data[index].l));
      ctx.stroke();

      ctx.beginPath();
      ctx.moveTo(chart.getDatasetMeta(0).data[index].x, chart.getDatasetMeta(0).data[index].y);
      ctx.lineTo(chart.getDatasetMeta(0).data[index].x, y.getPixelForValue(data.datasets[0].data[index].h));
      ctx.stroke();
    });
  },
};

export default {
  data() {
    return {
      chartData: {
        datasets: [{
          maxBarThickness: 6,
          backgroundColor: (ctx) => {
            const { raw: {o, h, l, c} } = ctx;
            // console.log("o: {o}, h: {h}, l: {l}, c: {c}", o, h, l, c)
            if (c >= o) {
              // return "rgb(52, 211, 153)";
              return "rgb(30 64 175)";
            } else {
              return "rgb(239, 68, 68)";
            }
          },
          borderWidth: 0,
          borderRadius: Number.MAX_VALUE,
          borderSkipped: false,

          data: [
            {
              month: "Jan",
              o: 54.23,
              h: 68.97,
              l: 0,
              c: 41.06,
              scale: [54.32, 41.06],
            },
            {
              month: "Feb",
              o: 41.06,
              h: 54.32,
              l: 0,
              c: 31.79,
              scale: [41.06, 31.79],
            },
            {
              month: "March",
              o: 31.79,
              h: 60.32,
              l: 3.79,
              c: 31.96,
              scale: [31.79, 31.96],
            },
            {
              month: "April",
              o: 31.96,
              h: 81.32,
              l: 10.79,
              c: 41.35,
              scale: [31.96, 41.35],
            },
            {
              month: "May",
              o: 41.35,
              h: 88.08,
              l: 15.79,
              c: 48.40,
              scale: [41.35, 48.40],
            },
            {
              month: "June",
              o: 48.40,
              h: 100,
              l: 92.88,
              c: 80.42,
              scale: [48.40, 80.42],
            },
            {
              month: "July",
              o: 80.42,
              h: 100,
              l: 96.79,
              c: 92.40,
              scale: [80.42, 92.40],
            },
            {
              month: "Aug",
              o: 92.40,
              h: 78.28,
              l: 17.79,
              c: 62.82,
              scale: [92.40, 62.82],
            },
            {
              month: "Sept",
              o: 62.82,
              h: 32.32,
              l: 5.89,
              c: 33.67,
              scale: [62.82, 33.67],
            },
            {
              month: "Oct",
              o: 33.67,
              h: 37.05,
              l: 11.09,
              c: 27.27,
              scale: [33.67, 27.27],
            },
            {
              month: "Nov",
              o: 27.27,
              h: 57.32,
              l: 15.79,
              c: 33.46,
              scale: [27.27, 33.46],
            },
            {
              month: "Dec",
              o: 33.46,
              h: 78.13,
              l: 32.32,
              c: 47.97,
              scale: [33.46, 47.79],
            }
          ]
        }],
      },
    };
  },
  mounted() {
    const ctx = this.$refs.chart.getContext('2d');

    // Register custom plugin
    Chart.register(candlestickPlugin);

    this.chart = new Chart(ctx, {
      type: 'bar',
      data: this.chartData,
      options: {
        maintainAspectRatio: false,
        responsive: true,
        layout: { padding: 20, },
        parsing: {
          xAxisKey: 'month',
          yAxisKey: 'scale'
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
          legend: { display: false},
          title: {
            display: true,
            fullSize: false,
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
          // Add custom plugins here
          candlestick: candlestickPlugin,
        },
      },
    });
  },
  methods: {
    // randomizeData() {
    //   this.chartData.datasets.forEach((dataset) => {
    //     dataset.data = Utils.numbers(NUMBER_CFG);
    //   });
    //   this.chart.update();
    // },
  },
};
</script>

<style>
  /* Add any custom styles here */
</style>



<!-- datasets: [
  {
    label: 'Fully Rounded',
    data: [65, 59, 80, 81, 56, 55, 40],
    // borderColor: 'rgb(255, 99, 132)',
    // backgroundColor:  'rgba(255, 99, 132, 0.2)',
    backgroundColor:  '(255, 99, 132)',
    maxBarThickness: 6,
    borderWidth: 0,
    borderRadius: Number.MAX_VALUE,
    borderSkipped: false,
  },
  {
    label: 'Small Radius',
    data: [-35, -40, -60, -50, -35, -20, -45],
    borderColor: 'rgb(54, 162, 235)',
    backgroundColor: 'rgba(54, 162, 235, 0.2)',
    borderWidth: 2,
    borderRadius: 5,
    borderSkipped: false,
  },
], -->

<!-- <template>
  <div class="flex w-full h-full p-2 items-center justify-center rounded-lg">
    <div class="flex flex-col py-3 space-y-0.5 items-center justify-center text-center relative z-10">
      <h4 class="text-sm font-semibold uppercase text-gray-400 leading-tight">{{chartTitle}}</h4>
      <h3 class="text-2xl text-gray-700 font-semibold leading-tight">{{currentData}}</h3>
      <p v-if="showPercentage" :class="{'text-red-500': percentageChange < 0, 'text-green-500': percentageChange > 0 }" class="text-xs font-semibold leading-tight">
        {{ percentageChange > 0 ? `▲ ${percentageChange} %` : `▼ ${percentageChange} %` }}
      </p>
    </div>
    <div class="absolute flex inset-x-[-2px] bottom-[-2px]">
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
</script> -->
