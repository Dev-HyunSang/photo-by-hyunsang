<template>
  <!-- Desktop Sidebar -->
  <aside class="fixed left-0 top-0 h-full w-48 bg-white z-40 hidden lg:block">
    <div class="flex flex-col h-full p-8">
      <!-- Logo -->
      <div class="mb-12">
        <h1 class="text-2xl font-light tracking-wider text-black leading-tight">
          HyunSang<br>Park
        </h1>
      </div>
      
      <!-- Navigation -->
      <nav class="flex-1">
        <ul class="space-y-4">
          <li v-for="category in categories" :key="category.name">
            <button 
              @click="$emit('categoryChange', category.value)"
              :class="[
                'block w-full text-left text-sm font-light tracking-wide transition-colors duration-200 uppercase',
                props.selectedCategory === category.value 
                  ? 'text-black' 
                  : 'text-gray-500 hover:text-black'
              ]"
            >
              {{ category.name }}
            </button>
          </li>
        </ul>
      </nav>
    </div>
  </aside>

  <!-- Mobile Header/Menu -->
  <div class="lg:hidden">
    <!-- Mobile Header -->
    <header class="fixed top-0 left-0 right-0 bg-white z-50">
      <div class="flex justify-between items-center h-16 px-4">
        <!-- Logo -->
        <h1 class="text-lg font-light tracking-wide text-black">
          HyunSang Park
        </h1>
        
        <!-- Menu Button -->
        <button 
          @click="isMobileMenuOpen = !isMobileMenuOpen"
          class="text-gray-500 hover:text-black focus:outline-none"
        >
          <svg class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
            <path v-if="!isMobileMenuOpen" stroke-linecap="round" stroke-linejoin="round" stroke-width="1" d="M4 6h16M4 12h16M4 18h16" />
            <path v-else stroke-linecap="round" stroke-linejoin="round" stroke-width="1" d="M6 18L18 6M6 6l12 12" />
          </svg>
        </button>
      </div>
    </header>

    <!-- Mobile Menu Overlay -->
    <div 
      v-if="isMobileMenuOpen"
      class="fixed inset-0 bg-black bg-opacity-50 z-40"
      @click="isMobileMenuOpen = false"
    ></div>

    <!-- Mobile Menu -->
    <div 
      :class="[
        'fixed top-0 right-0 h-full w-80 bg-white z-50 transform transition-transform duration-300 ease-in-out',
        isMobileMenuOpen ? 'translate-x-0' : 'translate-x-full'
      ]"
    >
      <div class="flex flex-col h-full">
        <!-- Mobile Menu Header -->
        <div class="flex justify-between items-center h-16 px-6">
          <h2 class="text-lg font-light tracking-wide text-black">Menu</h2>
          <button 
            @click="isMobileMenuOpen = false"
            class="text-gray-500 hover:text-black"
          >
            <svg class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="1" d="M6 18L18 6M6 6l12 12" />
            </svg>
          </button>
        </div>
        
        <!-- Mobile Navigation -->
        <nav class="flex-1 p-6">
          <ul class="space-y-6">
            <li v-for="category in categories" :key="category.name">
              <button 
                @click="handleMobileSelection(category.value)"
                :class="[
                  'block w-full text-left text-lg font-light tracking-wide transition-colors duration-200 uppercase',
                  props.selectedCategory === category.value 
                    ? 'text-black' 
                    : 'text-gray-500 hover:text-black'
                ]"
              >
                {{ category.name }}
              </button>
            </li>
          </ul>
        </nav>
      </div>
    </div>
  </div>
</template>

<script setup>
import { ref } from 'vue'

const props = defineProps({
  selectedCategory: {
    type: String,
    default: 'Landscapes'
  }
})

const emit = defineEmits(['categoryChange'])

const isMobileMenuOpen = ref(false)

const categories = [
  { name: 'Landscapes', value: 'Landscapes' },
  { name: 'Travel', value: 'Travel' },
  { name: 'About', value: 'About' }
]

function handleMobileSelection(value) {
  emit('categoryChange', value)
  isMobileMenuOpen.value = false
}
</script>