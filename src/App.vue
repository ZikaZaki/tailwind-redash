<template>
  <div class="flex h-full">
    <aside>
      <!-- Main - Side-Navbar -->
      <MainSideNav />
    </aside>

    <main class="w-full p-4 lg:p-10">
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
