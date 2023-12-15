<template>
  <div class="relative flex w-full bg-white shrink-0 rounded-lg overflow-hidden">
    <swiper v-bind="swiperOptions">
      <swiper-slide v-for="(slide, index) in slides" :key="index">
        <component :is="slide.component" />
      </swiper-slide>
    </swiper>
    <!-- Swiper-Pagination -->
    <div class="swiper-pagination"></div>
  </div>
</template>

<script>
import { ref } from "vue";
import { Swiper, SwiperSlide } from "swiper/vue";
import { Pagination } from 'swiper/modules';
// import Swiper and modules styles
import 'swiper/css';
import 'swiper/css/navigation';
import 'swiper/css/pagination';

import VisitorsChart from "./VisitorsChart.vue";
import CustomersChart from "./CustomersChart.vue";
import OrdersChart from "./OrdersChart.vue";
// import UsersChart from "./UsersChart.vue";

export default {
  name: "LineChartsContainer",
  components: {
    Swiper,
    SwiperSlide,
    VisitorsChart,
    CustomersChart,
    OrdersChart,
    // UsersChart,
  },
  setup() {
    const slides = ref([
      { component: "VisitorsChart" },
      { component: "CustomersChart" },
      { component: "OrdersChart" },
      // { component: "UsersChart" },
    ]);

    const swiperOptions = ref({
      modules: [Pagination],
      breakpoints: {
        768: {
          slidesPerView: 2,
        },
        1024: {
          slidesPerView: 3,
        },
        1280: {
          slidesPerView: 3,
        },
        1536: {
          slidesPerView: 4,
        },
      },
      spaceBetween: 50,
      initialSlide: 0,
      observer: true,
      resizeObserver: true,
      observeParents: true,
      observeChildren: true,
      observeSlideChildren: true,
      grabCursor: true,
      pagination: {
        type: "bullets",
        el: ".swiper-pagination",
        dynamicBullets: true,
        dynamicMainBullets: 1,
      },
    });
    return {
      slides,
      swiperOptions,
    }
  },
};
</script>

<style scoped>
.swiper-pagination {
  align-items: center;
  justify-content: center;
  align-self: center;
  position: absolute;
  left: 50%;
  bottom: 15px;
  transform: translateX(-50%);
 --swiper-pagination-color: #0070e4;
}
</style>
