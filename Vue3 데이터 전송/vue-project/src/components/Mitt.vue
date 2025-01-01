<template>
  <div>
    <button @click="clickBtn('O')">O</button>
    <button @click="clickBtn('X')">X</button>
  </div>
  <p>{{ status }}</p>
</template>

<script setup>
import { emitter } from "../mitt";

const props = defineProps({
  status: String,
});

const clickBtn = (choice) => {
  emitter.emit("clickBtn", choice);
};
</script>

<style scoped>
button {
  padding: 3px 10px;
  margin: 3px;
}
</style>
