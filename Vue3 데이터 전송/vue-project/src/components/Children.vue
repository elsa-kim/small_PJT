<template>
  <div>
    <button @click="$emit('clickO')">O</button>
    <button @click="$emit('clickX')">X</button>
  </div>
  <p>{{ status }}</p>
</template>

<script setup>
const props = defineProps({
  status: String,
});
</script>

<style scoped>
button {
  padding: 3px 10px;
  margin: 3px;
}
</style>
