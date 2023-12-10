<template>
  <div class="lg:relative">
    <button
      @click="isOpen = !isOpen" 
      class="flex w-12 h-12 rounded-full overflow-hidden focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-blue-800 focus:ring-offset-white">
      <img 
        src="/src/assets/user.jpg" 
        alt="user profile"
        class="w-12 h-12 object-cover"
      >
    </button>

    <button
      v-if="isOpen"
      @click="isOpen = false"
      class="fixed inset-0 w-full h-full bg-opacity-40 z-30 cursor-default"
      tabindex="-1"
    ></button>

    <transition
      enter-active-class="transition duration-100 ease-out transform"
      enter-from-class="scale-95 opacity-0"
      enter-to-class="scale-100 opacity-100"
      leave-active-class="transition duration-75 ease-in transform"
      leave-from-class="scale-100 opacity-100"
      leave-to-class="scale-95 opacity-0"
    >
      <div 
        v-if="isOpen"
        class="absolute right-0 z-40 mt-2 w-full lg:w-48"
      >
        <div class="bg-white mx-4 lg:mx-0 rounded-md shadow-lg py-1 ring-1 ring-black ring-opacity-5">
          <div class="lg:hidden p-3">
            <Search />
          </div>

          <div class="lg:hidden border-b">
            <a href="#" class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-100">
              Feedback
            </a>
            <a href="#" class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-100">
              Contacts
            </a>
            <a href="#" class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-100">
              Help
            </a>  
          </div>

          <a href="#" class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-100">
            Profile
          </a>
          <a href="#" class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-100">
            Settings
          </a>
          <a href="#" class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-100">
            Logout
          </a>
        </div>
      </div>
    </transition>
  </div>
</template>

<script>
import Search from "../Search.vue";

export default {
    name: "Avatar",
    components: { Search },
    data() {
      return {
        isOpen: false,
      };
    },
};
</script>