<template>
  <main class="w-full">
    <!-- About Section -->
    <div v-if="props.selectedCategory === 'About'" class="max-w-4xl mx-auto px-4 sm:px-6 lg:px-8 py-4 lg:py-8">
      <div class="grid grid-cols-1 md:grid-cols-2 gap-12 items-start">
        <div>
          <h2 class="text-2xl font-light mb-4 tracking-wide">ABOUT</h2>
          <div class="space-y-3 text-gray-600 leading-relaxed">
            <p>
                풍경과 스트릿 사진을 주로 하고 있습니다.
            </p>
            <p>
                우리 일상 속의 자주 볼 수 있는 순간들 중에서의
                아름다움을 포착하여 사진을 담는 것을 좋아합니다.
            </p>
          </div>
        </div>
        <div class="space-y-4">
          <div>
            <h3 class="font-medium mb-2">Equipment</h3>
            <p class="text-sm text-gray-600">Canon EOS R6</p>
          </div>
          <div>
            <h3 class="font-medium mb-2">Awards</h3>
            <div class="text-sm text-gray-600 space-y-1">
                <p><b>2022 어린이청소년부 조명박물관장상 장려상 수상</b> / 작품명 - 봄비가 오는 날</p>
            </div>
          </div>
          <div>
            <h3 class="font-medium mb-2">Based in</h3>
            <p class="text-sm text-gray-600">Mopko · Seoul, South Korea</p>
          </div>
          <div>
            <h3 class="font-medium mb-2">Contact</h3>
            <p class="text-sm text-gray-600">
                <a href="mailto:me@hyunsang.dev" class="inline-flex items-center">
                    <svg class="w-4 h-4 mr-1" fill="currentColor" viewBox="0 0 24 24">
                        <path d="M20 4H4c-1.1 0-2 .9-2 2v12c0 1.1.9 2 2 2h16c1.1 0 2-.9 2-2V6c0-1.1-.9-2-2-2zm0 4l-8 5-8-5V6l8 5 8-5v2z"/>
                    </svg>
                    me@hyunsang.dev
                </a>
            </p>
            <p class="text-sm text-gray-600 pt-1">
                <a href="https://instagram.com/park.hyunsang" target="_blank" rel="noopener noreferrer" class="inline-flex items-center">
                    <svg class="w-4 h-4 mr-1" fill="currentColor" viewBox="0 0 24 24">
                        <path d="M12 2.163c3.204 0 3.584.012 4.85.07 3.252.148 4.771 1.691 4.919 4.919.058 1.265.069 1.645.069 4.849 0 3.205-.012 3.584-.069 4.849-.149 3.225-1.664 4.771-4.919 4.919-1.266.058-1.644.07-4.85.07-3.204 0-3.584-.012-4.849-.07-3.26-.149-4.771-1.699-4.919-4.92-.058-1.265-.07-1.644-.07-4.849 0-3.204.013-3.583.07-4.849.149-3.227 1.664-4.771 4.919-4.919 1.266-.057 1.645-.069 4.849-.069zm0-2.163c-3.259 0-3.667.014-4.947.072-4.358.2-6.78 2.618-6.98 6.98-.059 1.281-.073 1.689-.073 4.948 0 3.259.014 3.668.072 4.948.2 4.358 2.618 6.78 6.98 6.98 1.281.058 1.689.072 4.948.072 3.259 0 3.668-.014 4.948-.072 4.354-.2 6.782-2.618 6.979-6.98.059-1.28.073-1.689.073-4.948 0-3.259-.014-3.667-.072-4.947-.196-4.354-2.617-6.78-6.979-6.98-1.281-.059-1.69-.073-4.949-.073zm0 5.838c-3.403 0-6.162 2.759-6.162 6.162s2.759 6.163 6.162 6.163 6.162-2.759 6.162-6.163c0-3.403-2.759-6.162-6.162-6.162zm0 10.162c-2.209 0-4-1.79-4-4 0-2.209 1.791-4 4-4s4 1.791 4 4c0 2.21-1.791 4-4 4zm6.406-11.845c-.796 0-1.441.645-1.441 1.44s.645 1.44 1.441 1.44c.795 0 1.439-.645 1.439-1.44s-.644-1.44-1.439-1.44z"/>
                    </svg>
                    @park.hyunsang
                </a>
            </p>
          </div>
          <div>
            <h3 class="font-medium mb-2">Copyright</h3>
            <div class="text-sm text-gray-600 space-y-1">
              <p>© 2024 HyunSang Park. All rights reserved.</p>
              <p class="text-xs text-gray-500">
                이 웹사이트에 게시된 모든 사진과 콘텐츠는 저작권법의 보호를 받습니다. 
                무단 복제, 배포, 상업적 사용을 금지합니다.
              </p>
            </div>
          </div>
        </div>
      </div>
    </div>



    <!-- Photo Gallery -->
    <div v-else class="w-full pt-8 pr-4 sm:pt-12 sm:pr-6 lg:pt-16 lg:pr-8">
      <!-- Photo Grid -->
      <div class="grid-container px-2 sm:px-3 lg:px-4 py-2 lg:py-4 mx-auto max-w-sm sm:max-w-none">
        <div 
          v-for="(photo, index) in filteredPhotos" 
          :key="index"
          class="grid-item group cursor-pointer"
          @click="openLightbox(index)"
        >
          <div class="w-full overflow-hidden bg-gray-200">
            <img 
              v-if="photo.image"
              :src="photo.image" 
              :alt="`Photo ${index + 1}`"
              class="w-full h-auto object-cover transition-all duration-300 group-hover:scale-105"
              loading="lazy"
            />
          </div>
        </div>
      </div>
      
      <!-- Copyright Footer -->
      <div class="text-center py-8 px-4">
        <p class="text-xs text-gray-400">
          © 2024 HyunSang Park Photography. All rights reserved.
        </p>
      </div>
    </div>

    <!-- Lightbox Modal -->
    <div 
      v-if="lightboxOpen" 
      class="fixed inset-0 bg-white z-50 flex items-center justify-center p-8"
      @click="closeLightbox"
    >
      <!-- Close Button -->
      <button 
        @click="closeLightbox"
        class="absolute top-8 right-8 text-gray-400 hover:text-black z-10"
      >
        <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
          <path stroke-linecap="round" stroke-linejoin="round" stroke-width="1" d="M6 18L18 6M6 6l12 12"></path>
        </svg>
      </button>
      
      <!-- Main Image -->
      <div class="max-w-6xl max-h-[90vh] mx-auto">
        <div class="w-full bg-gray-200 overflow-hidden">
          <img 
            v-if="selectedPhoto?.image"
            :src="selectedPhoto.image" 
            :alt="'Photo'"
            class="w-full h-auto object-contain"
            style="max-height: 80vh;"
          />
        </div>
      </div>
      
      <!-- Navigation Arrows -->
      <button 
        @click.stop="previousPhoto"
        class="absolute left-8 top-1/2 transform -translate-y-1/2 text-gray-400 hover:text-black"
      >
        <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
          <path stroke-linecap="round" stroke-linejoin="round" stroke-width="1" d="M15 19l-7-7 7-7"></path>
        </svg>
      </button>
      
      <button 
        @click.stop="nextPhoto"
        class="absolute right-8 top-1/2 transform -translate-y-1/2 text-gray-400 hover:text-black"
      >
        <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
          <path stroke-linecap="round" stroke-linejoin="round" stroke-width="1" d="M9 5l7 7-7 7"></path>
        </svg>
      </button>
    </div>
  </main>
</template>

<script setup>
import { ref, computed, onMounted } from 'vue'

const props = defineProps({
  selectedCategory: {
    type: String,
    default: 'Landscapes'
  }
})

const lightboxOpen = ref(false)
const selectedPhotoIndex = ref(0)
const allPhotos = ref([])

// 동적으로 이미지 로드하는 함수
async function loadImages() {
  const photos = []
  
  try {
    // src/assets/images/landscapes 폴더의 모든 이미지 가져오기
    const landscapeModules = import.meta.glob('@/assets/images/landscapes/*.(jpg|jpeg|png|webp)', { 
      eager: true,
      query: '?url',
      import: 'default'
    })
    
    for (const path in landscapeModules) {
      const imagePath = landscapeModules[path]
      photos.push({
        category: 'Landscapes',
        image: imagePath
      })
    }
    
    // src/assets/images/travel 폴더의 모든 이미지 가져오기
    const travelModules = import.meta.glob('@/assets/images/travel/*.(jpg|jpeg|png|webp)', { 
      eager: true,
      query: '?url',
      import: 'default'
    })
    
    for (const path in travelModules) {
      const imagePath = travelModules[path]
      photos.push({
        category: 'Travel',
        image: imagePath
      })
    }
    
    console.log('Loaded photos:', photos.length)
    
  } catch (error) {
    console.warn('이미지 로딩 중 오류:', error)
  }
  
  // 만약 assets에서 이미지를 못 찾았다면 public 폴더 이미지들을 사용
  if (photos.length === 0) {
    console.log('Using public folder images as fallback')
    const publicImages = [
      '/images/landscapes/2H6A8555.jpg',
      '/images/landscapes/2H6A8621.jpg',
      '/images/landscapes/2H6A8629.jpg',
      '/images/landscapes/2H6A8670.jpg',
      '/images/landscapes/2H6A8684.jpg',
      '/images/landscapes/2H6A8704.jpg',
      '/images/landscapes/2H6A8731.jpg',
      '/images/landscapes/2H6A8769.jpg',
      '/images/landscapes/2H6A8795.jpg',
      '/images/landscapes/2H6A8803.jpg',
      '/images/landscapes/2H6A8904.jpg',
      '/images/landscapes/2H6A8930.jpg',
      '/images/landscapes/PHS_2154.jpg',
      '/images/landscapes/PHS_2163.jpg',
      '/images/landscapes/PHS_2187.jpg',
      '/images/landscapes/PHS_2202.jpg',
      '/images/landscapes/PHS_2206.jpg',
      '/images/landscapes/PHS_2488-향상됨-노이즈 감소.jpg',
      '/images/landscapes/PHS_2591.jpg',
      '/images/landscapes/PHS_2736.jpg',
      '/images/landscapes/PHS_2738.jpg',
      '/images/landscapes/PHS_2893.jpg',
      '/images/landscapes/PHS_2925.jpg',
      '/images/landscapes/PHS_3023.jpg',
      '/images/landscapes/PHS_3738.jpg',
      '/images/landscapes/PHS_3742.jpg',
      '/images/landscapes/PHS_3773.jpg',
      '/images/landscapes/PHS_4852.jpg',
      '/images/landscapes/PHS_4900.jpg',
      '/images/landscapes/PHS_4905.jpg',
      '/images/landscapes/PHS_5044-Enhanced-NR.jpg',
      '/images/landscapes/PHS_6290.jpg',
      '/images/landscapes/PHS_6298.jpg',
      '/images/landscapes/PHS_6354.jpg',
      '/images/landscapes/PHS_6479.jpg',
      '/images/landscapes/PHS_9557.jpg',
      '/images/landscapes/PHS_9602-향상됨-노이즈 감소.jpg'
    ]
    
    for (const imagePath of publicImages) {
      photos.push({
        category: 'Landscapes',
        image: imagePath
      })
    }
  }
  
  allPhotos.value = photos
}

const filteredPhotos = computed(() => {
  if (props.selectedCategory === 'About') {
    return []
  }
  return allPhotos.value.filter(photo => photo.category === props.selectedCategory)
})

const selectedPhoto = computed(() => {
  return filteredPhotos.value[selectedPhotoIndex.value]
})

function openLightbox(index) {
  selectedPhotoIndex.value = index
  lightboxOpen.value = true
  document.body.style.overflow = 'hidden'
}

function closeLightbox() {
  lightboxOpen.value = false
  document.body.style.overflow = 'auto'
}

function nextPhoto() {
  selectedPhotoIndex.value = (selectedPhotoIndex.value + 1) % filteredPhotos.value.length
}

function previousPhoto() {
  selectedPhotoIndex.value = selectedPhotoIndex.value === 0 
    ? filteredPhotos.value.length - 1 
    : selectedPhotoIndex.value - 1
}

onMounted(async () => {
  // 이미지 로드
  await loadImages()
  // Setup grid layout
  setupGrid()
})

function setupGrid() {
  const style = document.createElement('style')
  style.textContent = `
    .grid-container {
      columns: 1;
      column-gap: 4px;
      padding: 0;
      margin: 0 auto;
      text-align: center;
    }
    
    @media (min-width: 640px) {
      .grid-container {
        columns: 2;
        column-gap: 6px;
        text-align: left;
      }
    }
    
    @media (min-width: 768px) {
      .grid-container {
        columns: 3;
        column-gap: 8px;
      }
    }
    
    @media (min-width: 1024px) {
      .grid-container {
        columns: 4;
        column-gap: 8px;
      }
    }
    
    @media (min-width: 1280px) {
      .grid-container {
        columns: 4;
        column-gap: 10px;
      }
    }
    
    .grid-item {
      display: inline-block;
      width: 100%;
      margin-bottom: 4px;
      break-inside: avoid;
      text-align: left;
    }
    
    @media (min-width: 640px) {
      .grid-item {
        margin-bottom: 6px;
      }
    }
    
    @media (min-width: 768px) {
      .grid-item {
        margin-bottom: 8px;
      }
    }
    
    @media (min-width: 1024px) {
      .grid-item {
        margin-bottom: 8px;
      }
    }
    
    @media (min-width: 1280px) {
      .grid-item {
        margin-bottom: 10px;
      }
    }
  `
  document.head.appendChild(style)
}
</script>