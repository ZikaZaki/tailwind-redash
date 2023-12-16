<template>
  <div class="flex w-full h-72">
      <canvas ref="chart" height="auto" class="flex flex-col  min-w-full" ></canvas>
  </div>
</template>

<script>
import Chart from "chart.js/auto";

const customPlugin = {
  id: 'custom_canvas_background_color',
  beforeUpdate: (chart, options) => {
    console.log("HI from custom plugin....................");

    const { ctx } = chart;
    ctx.fillStyle = chart.data.datasets[0].backgroundColor;
    ctx.fillRect(0, 0, chart.width, chart.height);
  },
};

export default {
  data() {
    return {
      chartData: {
        labels: ["Jan", "Feb", "March", "April", "May", "June", "July", "Aug", "Sept", "Oct", "Nov", "Dec"],
        datasets: [{
          label: "Statistics",
          showLine: true,
          maxBarThickness: 6,
          backgroundColor: (ctx) => {
            const { raw: {o, h, l, c} } = ctx;
            // console.log("o: {o}, h: {h}, l: {l}, c: {c}", o, h, l, c)
            if (c > 0) {
              return "rgb(52, 211, 153)";
            } else  {
              return "rgb(239, 68, 68)";
            }
          },
          borderWidth: 0,
          borderRadius: Number.MAX_VALUE,
          borderSkipped: false,
          layout: {
            padding: 0,
          },
          data: [
            {
              x: "Jan",
              o: 10,
              h: 0,
              l: 30,
              c: 20,
              s: [10, 60]
            },
            {
              x: "Feb",
              o: -20,
              h: 10,
              l: -40,
              c: -30,
              s: [-10, -50]
            },
            {
              x: "March",
              o: -30,
              h: 20,
              l: 10,
              c: 20,
              s: [30, -20]
            },
            {
              x: "April",
              o: 30,
              h: 50,
              l: 10,
              c: 40,
              s: [30, 10]
            },
            {
              x: "May",
              o: 50,
              h: 40,
              l: 30,
              c: 40,
              s: [60, 15]
            },
            {
              x: "June",
              o: 10,
              h: 30,
              l: 0,
              c: 20,
              s: [45, 10]
            },
            {
              x: "July",
              o: 70,
              h: 60,
              l: 50,
              c: 60,
              s: [75, 40]
            },
            {
              x: "Aug",
              o: 80,
              h: 70,
              l: 60,
              c: 70,
              s: [80, -10]
            },
            {
              x: "Sept",
              o: -90,
              h: 80,
              l: -70,
              c: -80,
              s: [-85, -10]
            },
            {
              x: "Oct",
              o: 100,
              h: 90,
              l: 80,
              c: 90,
              s: [100, 40]
            },
            {
              x: "Nov",
              o: 110,
              h: 100,
              l: 90,
              c: 100,
              s: [110, 60]
            },
            {
              x: "Dec",
              o: 120,
              h: 110,
              l: 100,
              c: 110,
              s: [120, 90]
            },
          ]
        }],
      },
    };
  },
  mounted() {
    const ctx = this.$refs.chart.getContext('2d');

    // Register custom plugin
    Chart.register(customPlugin);

    this.chart = new Chart(ctx, {
      type: 'bar',
      data: this.chartData,
      options: {
        maintainAspectRatio: false,
        responsive: true,
        parsing: {
          xAxisKey: 'x',
          yAxisKey: 's'
        },
        // plugins: {
        //   legend: {
        //     position: 'top',
        //   },
        //   title: {
        //     display: true,
        //     text: 'Chart.js Bar Chart',
        //   },
        // },
        plugins: [customPlugin],
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
