<template>
  <a-scene embedded arjs>
    <!-- Marker associato a pattern o a tipo 'hiro' o 'barcode' -->
    <a-marker preset="hiro">
      <a-entity gltf-model="src/assets/models/avatar.glb" position="0 0 0" rotation="0 0 0" />
      <a-box position="0 0.5 0" material="color: blue;"></a-box>
    </a-marker>

    <!-- Camera -->
    <a-entity camera></a-entity>
  </a-scene>
</template>

<script setup>
// Nessuna logica JS ancora, stiamo solo montando la scena
</script>

<style scoped>
/* Assicuriamoci che la scena occupi tutto */
a-scene {
  width: 100%;
  height: 100vh;
}
</style>
