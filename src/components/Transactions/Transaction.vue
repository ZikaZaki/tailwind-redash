<template>
  <div class="flex w-full items-center space-x-4 justify-between">
    <div class="flex items-center justify-center space-x-2">
      <div v-html="data.icon" class="flex items-center justify-center w-10 h-10 bg-white text-red-600 font-bold text-center rounded-lg"></div>
      <div class="flex flex-col">
        <div class="text-sm font-bold text-gray-900">
          {{ data.title }}
        </div>
        <div class="text-xs font-bold text-gray-400">
          {{ data.date }}
        </div>
      </div>
    </div>
    <div class="flex items-center justify-center">
      <div class="text-sm font-bold text-gray-900">
        {{ formatAmount(data.amount, data.type) }}
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: 'Transaction',
  props: {
    data: {
      type: Object,
      required: true
    }
  },
  methods: {
    formatCurrency (value) {
      return new Intl.NumberFormat('en-US', {
        style: 'currency',
        currency: 'USD'
      }).format(value);
    },
    formatAmount (value, type) {
      if (type === "expense") {
        return `-${this.formatCurrency(value)}`;
      } else {
        return this.formatCurrency(value);
      }
    }
  }
}
</script>