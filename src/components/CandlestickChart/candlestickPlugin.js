export const candlestickPlugin = {
  id: "custom_candlestick_plugin",
  beforeDatasetsDraw: (chart, args, pluginOptions) => {
    const {
      ctx,
      data,
      scales: { y },
    } = chart;

    const datasetMeta = chart.getDatasetMeta(0);

    ctx.save();
    ctx.lineWidth = 2;

    data.datasets[0].data.forEach((datapoint, index) => {
      const { x, y: yPoint } = datasetMeta.data[index];
      const { l, h } = datapoint;

      // Change the color of the line based on the open/close values
      ctx.strokeStyle =
        datapoint.c > datapoint.o
          ? "rgba(165, 180, 252, 0.4)"
          : "rgba(239, 68, 68, 0.6)";

      ctx.beginPath();
      ctx.moveTo(x, yPoint);
      ctx.lineTo(x, y.getPixelForValue(l));
      ctx.stroke();

      ctx.beginPath();
      ctx.moveTo(x, yPoint);
      ctx.lineTo(x, y.getPixelForValue(h));
      ctx.stroke();
    });

    ctx.restore();
  },
};
