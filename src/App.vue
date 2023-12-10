<template>
  <div class="flex h-full bg-blue-800">
    <aside>
      <!-- Main - Side-Navbar -->
      <MainSideNav />
    </aside>

    <main class="w-full p-4 lg:p-10 lg:rounded-l-[45px] bg-white">
      <!-- Header - TopNavigation -->
      <header>
        <TopNav />
      </header>

      <router-view />
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
