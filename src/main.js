import { createApp } from "vue";
import router from "./router";
import "./index.css";
import App from "./App.vue";
import VueApexCharts from "vue-apexcharts";

// Register the Vue ApexCharts component globally
createApp(App).use(router).component("apexchart", VueApexCharts).mount("#app");

// import { createApp } from "vue";
// import router from "./router";
// import "./index.css";
// import App from "./App.vue";

// createApp(App).use(router).mount("#app");
