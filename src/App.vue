<template>
  <div class="flex w-full h-screen rounded-b-full lg:rounded-none bg-blue-800">
    <aside>
      <!-- Main - Side-Navbar -->
      <MainSideNav />
    </aside>

    <main class="w-full p-4 lg:px-12 lg:py-10 lg:rounded-l-[45px] bg-white overflow-hidden">
      <!-- Header - TopNavigation -->
      <header>
        <TopNav />
      </header>
      <!-- Router-View -->
      <div id="view-wrapper" class="w-full">
        <router-view />
      </div>
    </main>
  </div>
</template>

<script>
import MainSideNav from "./components/MainSideNav.vue";
import TopNav from "./components/TopNav/TopNav.vue";

export default {
  name: "App",
  components: { MainSideNav, TopNav },
};
</script>
