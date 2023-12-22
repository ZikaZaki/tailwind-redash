<template>
  <div class="relative flex w-full bg-white shrink-0 rounded-lg overflow-hidden">
    <swiper v-bind="swiperOptions">
      <swiper-slide v-for="(slide, index) in slides" :key="index" class="min-w-max mb-2">
        <component :is="slide.component" />
      </swiper-slide>
    </swiper>
    <!-- Swiper-Pagination -->
    <div class="swiper-pagination"></div>
  </div>
</template>

<script>
import { ref } from "vue";
// import Swiper and modules styles
import { Swiper, SwiperSlide } from "swiper/vue";
import { Pagination } from 'swiper/modules';
import 'swiper/css';
import 'swiper/css/navigation';
import 'swiper/css/pagination';
// Import LineCharts components
import VisitorsChart from "./VisitorsChart.vue";
import CustomersChart from "./CustomersChart.vue";
import OrdersChart from "./OrdersChart.vue";

export default {
  name: "LineChartsContainer",
  components: {
    Swiper,
    SwiperSlide,
    VisitorsChart,
    CustomersChart,
    OrdersChart,
  },
  setup() {
    const slides = ref([
      { component: "VisitorsChart" },
      { component: "CustomersChart" },
      { component: "OrdersChart" },
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
      padding: 50,
      spaceBetween: 40,
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
