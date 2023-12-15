<template>
  <div class="relative flex w-full h-28 bg-indigo-50 p-1 shrink-0 rounded-2xl border border-outline-variant overflow-hidden">
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

import LineChart from "./LineChart.vue";

export default {
  name: "LineChartsContainer",
  components: {
    Swiper,
    SwiperSlide,
    LineChart,
  },
  setup() {
    const slides = ref([
      { component: "LineChart" },
      { component: "LineChart" },
      { component: "LineChart" },
    ]);

    const swiperOptions = ref({
      modules: [Pagination],
      breakpoints: {
        768: {
          slidesPerView: 2,
          spaceBetween: 30,
        },
        1024: {
          slidesPerView: 3,
          spaceBetween: 30,
        },
        1280: {
          slidesPerView: 3,
          spaceBetween: 30,
        },
        1536: {
          slidesPerView: 4,
          spaceBetween: 30,
        },
      },
      initialSlide: 1,
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
  bottom: 0;
  transform: translateX(-50%);
 --swiper-pagination-color: #0070e4;
}
</style>
