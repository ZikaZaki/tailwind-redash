<template>
  <div class="w-full lg:w-1/2 bg-white shadow-lg border border-gray-200 rounded-xl p-5 space-y-5">
    <div class="flex items-center">
      <div class="w-10 h-10 rounded-full overflow-hidden mr-3">
        <img
          src="/src/assets/user.jpg"
          alt=" user"
          class="w-full h-full object-cover"
        >
      </div>
      <div>
        <span class="block">Lilly Donovan</span>
        <div class="text-gray-400 text-xs">Business trainer</div>
      </div>
    </div>
    <h3 class="text-lg font-semibold">
      <a href="#" class="hover:text-blue-800">
        How to properly manage your personal budget?
      </a>
    </h3>
    <div class="flex items-center space-x-4 md:space-x-8">
      <div class="flex items-center space-x-2">
        <div class="w-6 text-blue-800">
          <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20"       fill="currentColor" data-slot="icon" class="w-5 h-5">
            <path fill-rule="evenodd" d="M2 10a8 8 0 1 1 16 0 8 8 0 0 1-16 0Zm6.39-2.908a.75.75 0 0 1 .766.027l3.5 2.25a.75.75 0 0 1 0 1.262l-3.5 2.25A.75.75 0 0 1 8 12.25v-4.5a.75.75 0 0 1 .39-.658Z" clip-rule="evenodd" />
          </svg>
        </div>
        <span class="text-sm text-gray-600">Video</span>
      </div>
      <div class="flex items-center space-x-2">
        <div class="w-6 text-blue-300">
          <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" data-slot="icon" class="w-5 h-5">
            <path fill-rule="evenodd" d="M10 18a8 8 0 1 0 0-16 8 8 0 0 0 0 16Zm.75-13a.75.75 0 0 0-1.5 0v5c0 .414.336.75.75.75h4a.75.75 0 0 0 0-1.5h-3.25V5Z" clip-rule="evenodd" />
          </svg>
        </div>
        <span class="text-sm text-gray-600">15 min</span>
      </div>
      <div class="flex items-center space-x-2">
        <div class="w-6 text-red-500">
          <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" data-slot="icon" class="w-5 h-5">
            <path fill-rule="evenodd" d="M10.868 2.884c-.321-.772-1.415-.772-1.736 0l-1.83 4.401-4.753.381c-.833.067-1.171 1.107-.536 1.651l3.62 3.102-1.106 4.637c-.194.813.691 1.456 1.405 1.02L10 15.591l4.069 2.485c.713.436 1.598-.207 1.404-1.02l-1.106-4.637 3.62-3.102c.635-.544.297-1.584-.536-1.65l-4.752-.382-1.831-4.401Z" clip-rule="evenodd" />
          </svg>
        </div>
        <span class="text-sm text-gray-600">112 likes</span>
      </div>
    </div>
    <div class="flex justify-between items-center">
      <div class="text-gray-600 font-semibold">5 days ago</div>
      <a href="#" class="bg-blue-800 text-white rounded-full hover:bg-red-500 px-4 py-3 flex items-center space-x-3">
        <span>Connect</span>
        <span class="w-4 h-4">
          <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" data-slot="icon" class="w-5 h-5">
            <path fill-rule="evenodd" d="M8.22 5.22a.75.75 0 0 1 1.06 0l4.25 4.25a.75.75 0 0 1 0 1.06l-4.25 4.25a.75.75 0 0 1-1.06-1.06L11.94 10 8.22 6.28a.75.75 0 0 1 0-1.06Z" clip-rule="evenodd" />
          </svg>
        </span>
      </a>
    </div>
  </div>
</template>

<script>
export default {
  name: "Blog",
}
</script>

<style scoped>
</style>
