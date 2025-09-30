<script setup>
import { ref } from 'vue'
import Sidebar from './components/Sidebar.vue'
import MinimalGallery from './components/MinimalGallery.vue'

const selectedCategory = ref('Landscapes')
const galleryRef = ref(null)

function handleCategoryChange(category) {
  selectedCategory.value = category
}
</script>

<template>
  <div class="min-h-screen bg-white">
    <!-- Sidebar -->
    <Sidebar 
      :selectedCategory="selectedCategory"
      @categoryChange="handleCategoryChange"
    />
    
    <!-- Main Content -->
    <div class="lg:ml-48 pt-16 lg:pt-0">
      <MinimalGallery 
        :selectedCategory="selectedCategory"
      />
    </div>
  </div>
</template>
