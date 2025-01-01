<template>
  <div>
    <button @click="store.commit('chooseO')">O</button>
    <button @click="store.commit('chooseX')">X</button>
  </div>
  <p>{{ status }}</p>
</template>

<script setup>
import { store } from "@/store";
import { computed } from "vue";
const status = computed(() => store.state.status);
</script>

<style scoped>
button {
  padding: 3px 10px;
  margin: 3px;
}
</style>
