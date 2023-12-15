<template>
  <div class="flex justify-center items-center space-x-3 lg:space-x-6">
    <NotificationBell />
    <Avatar />
  </div>
</template>

<script>
import NotificationBell from "./NotificationBell.vue";
import Avatar from "./Avatar.vue";

export default {
  name: "UserAvatar",
  components: { NotificationBell, Avatar },
};
</script>