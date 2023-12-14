<template>
  <div class="w-full h-24 bg-white shadow-lg border border-yellow-600 rounded-xl flex items-center px-5 py-7 space-x-5">
    <div class="bg-indigo-50 p-2 rounded-lg text-blue-800">
      <!-- put line-chart here instead of the SVG -->
      <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" class="w-8">
        <path d="M15.5 2A1.5 1.5 0 0014 3.5v13a1.5 1.5 0 001.5 1.5h1a1.5 1.5 0 001.5-1.5v-13A1.5 1.5 0 0016.5 2h-1zM9.5 6A1.5 1.5 0 008 7.5v9A1.5 1.5 0 009.5 18h1a1.5 1.5 0 001.5-1.5v-9A1.5 1.5 0 0010.5 6h-1zM3.5 10A1.5 1.5 0 002 11.5v5A1.5 1.5 0 003.5 18h1A1.5 1.5 0 006 16.5v-5A1.5 1.5 0 004.5 10h-1z" />
      </svg>

    </div>
    <div>
      <span class="block uppercase text-xs text-gray-400 tracking-wider font-semibold">Visitors</span>
      <span class="text-2xl font-semibold">10,320</span>
    </div>
  </div>
</template>

<script>
export default {
  name: "LineChart",
};
</script>

<style scoped>
/* put styles here */
</style>