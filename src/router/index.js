import { createRouter, createWebHashHistory } from "vue-router";
import Home from "../views/Home.vue";

const routes = [
  {
    path: "/",
    name: "Home",
    component: Home,
  },
  {
    path: "/reports",
    name: "Reports",
    component: Home,
    // component: () => import("../views/Home.vue"),
  },
  {
    path: "/messages",
    name: "Messages",
    component: Home,
  },
  {
    path: "/payments",
    name: "Payments",
    component: Home,
  },
];

const router = createRouter({
  history: createWebHashHistory(),
  routes,
});

export default router;
