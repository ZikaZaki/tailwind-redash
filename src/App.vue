<template>
  <div class="flex h-full">
    <!-- Main Navbar -->
    <MainNav />

    <router-view />
  </div>
</template>

<script>
import MainNav from "./components/MainNav.vue";

export default {
  name: "App",
  components: { MainNav },
};
</script>
