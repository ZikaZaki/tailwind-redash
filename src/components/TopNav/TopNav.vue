<template>
  <div class="flex" role="navigation">
    <div class="w-1/2">
      <Search />
    </div>
    <div class="w-1/2"></div>
  </div>
</template>

<script>
import Search from "./Search.vue";

export default {
  name: "TopNav",
  components: { Search },
};
</script>