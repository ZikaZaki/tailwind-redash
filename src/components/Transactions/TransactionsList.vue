<template>
  <div class="flex flex-col w-full h-full space-y-5 items-center justify-start overflow-hidden">
    <Transaction v-for="transaction in transactions" :key="transaction.id" :data="transaction" />
  </div>
</template>

<script>
import Transaction from "./Transaction.vue";

export default {
  name: 'TransactionsList',
  components: { Transaction },
  props: {
    transactions: {
      type: Array,
      required: true
    }
  }
}
</script>