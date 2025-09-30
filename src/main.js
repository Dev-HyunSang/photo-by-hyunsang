import { createApp } from 'vue'
import './style.css'
import App from './App.vue'
import { inject } from '@vercel/speed-insights'
import { inject as injectAnalytics } from '@vercel/analytics'

// Vercel Speed Insights 및 Analytics 초기화
inject()
injectAnalytics()

createApp(App).mount('#app')
