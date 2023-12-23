<template>
  <div id="cardContainer" class="flex w-full min-h-[160px] max-w-sm self-center h-44 items-center justify-center">
    <div id="card" class="group w-full h-full text-white cursor-pointer">
      <div id="cardInner" class="text-white font-[inconsolata] text-shadow rounded-2xl shadow-md shadow-black/40 w-full h-full relative transition-all duration-500 [transform-style:preserve-3d] group-hover:[transform:rotateY(180deg)]">
        <div id="cardFront" class="w-full h-full rounded-xl bg-gradient-to-tr from-blue-800 to-pink-600 absolute top-0 left-0 py-4 px-4 overflow-hidden z-[1]">
          <img src="/src/assets/world.svg" alt="world-map" class="w-full absolute top-0 left-0 opacity-25 z-[-1]">
          <div id="row" class="flex items-center justify-between">
            <img src="/src/assets/chip.png" alt="card-chip" class="w-10 h-7">
            <img src="/src/assets/visa.png" alt="visa-logo" class="w-12">
          </div>
          <div id="row" class="flex items-center justify-around text-lg mt-9 leading-none">
            <p>5422</p>
            <p>2150</p>
            <p>2858</p>
            <p>6420</p>
          </div>
          <div id="row" class="flex items-center justify-between text-sm font-light text-justify opacity-80 mt-6 uppercase">
            <p>CARD HOLDER</p>
            <p>VALID TILL</p>
          </div>
          <div id="row" class="flex items-center justify-between leading-none opacity-85  uppercase text-justify">
            <p>ZACK ALI</p>
            <p>10 / 25</p>
          </div>
        </div>
        <div id="cardBack" class="w-full h-full rounded-xl bg-gradient-to-tr from-blue-800 to-pink-600 absolute top-0 left-0 py-3 px-4 overflow-hidden z-[1] [transform:rotateY(180deg)] backface-hidden">
          <img src="/src/assets/world.svg" alt="world-map" class="w-full absolute top-0 left-0 opacity-25 z-[-1]">
          <div id="cardBar" class="h-8 -mx-5 mt-2 bg-gradient-to-br from-gray-800 to-black/90"></div>
          <div id="ccv-row" class="flex mt-8">
            <div class="flex-1">
              <img src="/src/assets/pattern.png" alt="car-pattern" class="block w-full min-h-full leading-none">
            </div>
            <div class="flex items-center justify-center px-3  bg-white text-center">
              <span class="text-black text-sm font-semibold">284</span>
            </div>
          </div>
          <div id="row" class="flex items-center justify-end mt-6">
            <img src="/src/assets/visa.png" alt="visa-logo" class="w-12">
          </div>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  name: "CreditCard",
};
</script>