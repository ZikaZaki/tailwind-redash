<template>
  <!-- space-x-4 lg:space-x-10 -->
  <!-- :observe-parents="true"
      :observe-children="true"
      :observer="true"
      :resize-observer="true"
      :observe-slide-children="true"
      :free-mode="enabled" -->
  <div class="chart-container swiper-container mx-auto block w-full shrink-0 overflow-hidden rounded-2xl border border-outline-variant sm:mx-0">
    <swiper
      :modules="modules"
      :slides-per-view="slidesPerView"
      :space-between="spaceBetween"
      :pagination="pagination"
      :loop="true"
      :centerInsufficientSlides="true"
      :centeredSlidesBounds="true"
      :centeredSlides="true"
      :breakpoints="breakpoints"


      
      
   
      
    >
    <swiper-slide v-for="(chart, index) in charts" :key="index">
      <component :is="chart.component" />
    </swiper-slide>
      <div class="swiper-pagination">
        <span class="swiper-pagination-bullet"></span>
        <span class="swiper-pagination-bullet"></span>
        <span class="swiper-pagination-bullet"></span>
        <span class="swiper-pagination-bullet"></span>
      </div>
    </swiper>
    <!-- <template v-if="isMobile"> -->
    <!-- </template> -->
    <!-- <div v-else class="flex space-x-4 lg:space-x-10">
      <component v-for="(chart, index) in charts" :key="index" :is="chart.component" />
    </div> -->
  </div>
</template>

<script>
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
  data() {
    return {
      modules: [Pagination],
      charts: [
        { component: "LineChart" },
        { component: "LineChart" },
        { component: "LineChart" },
        { component: "LineChart" },
      ],
      isMobile: false,
     
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
          slidesPerView: 4,
          spaceBetween: 30,
        },
        1536: {
          slidesPerView: 5,
          spaceBetween: 30,
        },
      },
     
      spaceBetween: 45,
      pagination: {
        el: ".swiper-pagination",
        type: "bullets",
        bulletClass: "swiper-pagination-bullet",
        bulletActiveClass: "swiper-pagination-bullet-active",
        hideClass: "swiper-pagination-hidden",
        dynamicBullets: true,
        dynamicMainBullets: 0,
        clickable: false,
      },
    };
  },
  methods: {
    updateSlidesPerView() {
      if (this.isMobile) {
        // Set slidesPerView to 2 for mobile
        this.slidesPerView = 2;
      } else {
        // Set slidesPerView to desired value for non-mobile
        this.slidesPerView = 3; // Adjust desired value
      }
    },
    checkScreenWidth() {
      setTimeout(() => {
        this.isMobile = window.innerWidth <= 768; // Adjust breakpoint here
        // this.updateSlidesPerView();
      }, 100);
    },


  },
  // Use MutationObserver for efficient updates
  mounted() {
    const observer = new MutationObserver(() => this.checkScreenWidth());
    observer.observe(document.documentElement, { childList: true });

    this.checkScreenWidth();
    window.addEventListener("resize", this.checkScreenWidth);
  },
  beforeDestroy() {
    observer.disconnect();
    window.removeEventListener("resize", this.checkScreenWidth);
  },
};
</script>

<style scoped>
:root {
    --color-primary-shade: #004892;
    --color-primary-tint: #0070e4;
    --color-primary-rgb: 0,92,187;
    --color-primary: #005cbb;
    --color-on-primary: #fff;
    --color-primary-container: #d7e3ff;
    --color-on-primary-container: #001b3f;
    --color-secondary: #565e71;
    --color-on-secondary: #fff;
    --color-secondary-container: #dae2f9;
    --color-on-secondary-container: #131c2b;
    --color-surface: #fff;
    --color-on-surface: #1a1b1f;
    --color-surface-variant: #e0e2ec;
    --color-on-surface-variant: #44474e;
    --color-outline: #74777f;
    --color-outline-variant: #c4c6d0;
    --color-inverse-surface: #2f3033;
    --color-inverse-on-surface: #f2f0f4;
    --color-inverse-primary: #abc7ff;
    --color-surface-0: #f3f5f9;
    --color-surface-1: #f0f3fc;
    --color-surface-2: #e9eefa;
    --color-surface-3: #e1eaf8;
    --color-surface-4: #dfe8f7;
    --color-surface-5: #dae5f5;
    --color-code: #6f43c0;
    --color-pre-bg: #21242a;
    --color-pre-color: #e3e2e6;
    --color-red: #c0000a;
    --color-green: #006e24;
    --color-orange: #8c5000;
}
/* put styles here */


.swiper-pagination-bullet {
  width: 8px;
  height: 8px;
  background: var(--color-primary);
  border-radius: 50%;
  transform: scale(0.75);
}

.swiper-pagination-bullet-active {
  width: 8px;
  height: 8px;
  background: var(--color-primary);
  border-radius: 50%;
  transform: scale(1);
}



/*
.motion-pagination .swiper-pagination {
    transform: translateX(-50%);
    display: flex;
    align-items: center;
    position: absolute;
    left: 50%;
    bottom: 24px;
}
.motion-pagination .swiper-pagination span {
    min-width: 8px;
    min-height: 18px;
    background-color: white;
    background: #005cbb;
    border-radius: 50%;
    transform: scale(.75);
}
.motion * {
    transform-style: preserve-3d;
}

.motion{
  padding:0 24px;
  height:240px;
  position:relative;
  overflow:hidden;
  perspective:1200px;
  transform-style:preserve-3d;
  border:1px solid var(--color-outline-variant)
}

.page{
  background:var(--color-surface);
  width:320px;
  height:100%;
  position:relative;
  top:0;
  display:flex;
  flex-direction:column;
  align-items:center;
  justify-content:center;
  padding:0 16px;
  overflow:hidden;
}
.swiper{
  display:flex;
  align-items:center;
  justify-content:flex-start;
  width:100%;
}
.swiper .wrapper{
  transform:translateX(-50%);
    width:100%;height:100%;display:flex;align-items:center;justify-content:flex-start
}
.swiper-slide{
  height:200px;width:160px;margin-right:16px;flex-shrink:0
}
.swiper-slide-bg{
  background:var(--color-surface-2);
  border-radius:16px;width:100%;height:100%
}
.motion{border:none;padding:0;height:100%}
.motion-pagination .swiper-pagination{
  transform:translateX(-50%);
  display:flex;
  align-items:center;position:absolute;left:50%;bottom:24px;
}
.motion-pagination .swiper-pagination span{
  width:8px;height:8px;background:var(--color-primary);border-radius:50%;transform:scale(.75)
}
.motion-pagination .swiper-pagination span:nth-child(2){
  transform:scale(1)}
.motion-pagination .swiper-pagination span:nth-child(4){
  transform:scale(0)}
.motion-pagination .swiper-pagination span+span{margin-left:4px}
.motion-pagination .swiper-pagination span:first-child{animation:motion-pagination-pagination-1 2s infinite}
.motion-pagination .swiper-pagination span:nth-child(2){animation:motion-pagination-pagination-2 2s infinite}
.motion-pagination .swiper-pagination span:nth-child(3){animation:motion-pagination-pagination-3 2s infinite}
.motion-pagination .swiper-pagination span:nth-child(4){animation:motion-pagination-pagination-4 2s infinite}
.motion-pagination .swiper-slide{animation:motion-pagination 2s infinite}
@keyframes motion-pagination{0%{transform:translateX(0)}50%{transform:translateX(-50%)}100%{transform:translateX(-50%)}}
@keyframes motion-pagination-pagination-1{0%{transform:translateX(0) scale(.75)}100%,50%{transform:translateX(-12px) scale(0)}}
@keyframes motion-pagination-pagination-2{0%{transform:translateX(0) scale(1)}100%,50%{transform:translateX(-12px) scale(.75)}}
@keyframes motion-pagination-pagination-3{0%{transform:translateX(0) scale(.75)}100%,50%{transform:translateX(-12px) scale(1)}}
@keyframes motion-pagination-pagination-4{0%{transform:translateX(0) scale(0)}100%,50%{transform:translateX(-12px) scale(.75)}} */
</style>
