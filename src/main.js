import Simplebar from "simplebar-vue";
import "simplebar-vue/dist/simplebar.min.css";
import { createApp } from "vue";
import router from "./router";
import "./index.css";
import App from "./App.vue";

const app = createApp(App);

// Register...any components
app.component("Simplebar", Simplebar);

// use the router
app.use(router);

// mount the app
app.mount("#app");
// createApp(App).use(router).mount("#app");
