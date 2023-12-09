<template>
  <div class="flex h-full">
    <!-- Main Side-Navbar -->
    <aside>
      <MainSideNav />
    </aside>

    <!-- Header - TopNavigation -->
    <main class="w-full p-4 lg:p-10">
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
