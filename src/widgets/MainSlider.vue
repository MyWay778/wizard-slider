<script>
import Swiper from 'swiper';

import ArrowVue from '@/shared/ArrowVue.vue';
import MainSliderCount from '@/components/MainSlider/MainSliderCount.vue';
import MainSliderControls from '@/components/MainSlider/MainSliderControls.vue';
import LinkVue from '@/shared/LinkVue.vue';

export default {
  name: 'MainSlider',

  components: {
    ArrowVue,
    MainSliderCount,
    MainSliderControls,
    LinkVue
  },

  props: {
    slides: {
      type: Array,
      required: true
    }
  },

  data() {
    return {
      swiper: null,
      currentSlide: 1,
      totalSlides: this.slides.length
    };
  },

  mounted() {
    this.swiper = new Swiper(this.$refs.slider, {
      // Слушатели слайдера навешиваются на внешний контейнер <section class="swiper">
      touchEventsTarget: 'container'
    });

    // Удерживаем промежуточный слой с облаками в центре экрана
    this.swiper.on('setTranslate', (_, value) => {
      this.$refs.background.style.transform = `translateX(${-value}px)`;
    });

    // Устраняем скачки промежуточного слоя с облаками при смене слайдов
    this.swiper.on('setTransition', (_, value) => {
      this.$refs.background.style.transitionDuration = `${value}ms`;
    });

    this.swiper.on('slideChange', (swiper) => {
      this.currentSlide = swiper.activeIndex + 1;
    });
  },

  methods: {
    onPrevSlide() {
      this.swiper.slidePrev();
    },

    onNextSlide() {
      this.swiper.slideNext();
    }
  },

  computed: {
    isPrevDisabled() {
      return this.currentSlide === 1;
    },
    isNextDisabled() {
      return this.currentSlide === this.totalSlides;
    },
    slideUrl() {
      const currentSlideIndex = this.currentSlide - 1;
      return this.slides[currentSlideIndex].url;
    }
  }
};
</script>

<template>
  <section class="main-slider swiper" ref="slider">
    <!-- Статичный контент слайдера -->
    <div class="container main-slider-content">
      <h2 class="main-slider-title">Они должны что-то знать</h2>

      <MainSliderCount class="main-slider-count" :current="currentSlide" :total="totalSlides" />

      <MainSliderControls
        @prev-slide="onPrevSlide"
        @next-slide="onNextSlide"
        :prevDisabled="isPrevDisabled"
        :nextDisabled="isNextDisabled" />

      <div class="main-slider-footer">
        <LinkVue class="main-slider-link" :to="slideUrl">
          <span>Искать промокод</span>
          <ArrowVue :width="2.6" />
        </LinkVue>
      </div>
    </div>

    <!-- Слайды -->
    <div class="main-slider-slides swiper-wrapper">
      <div v-for="slide in slides" :key="slide.id" class="main-slider-slide swiper-slide">
        <img class="main-slider-slide__image-slide" :src="slide.image" alt="Картинка слайда" />
        <p class="main-slider-slide-text">
          {{ slide.description }}
        </p>
      </div>

      <!-- Промежуточный слой с облаками, между картинкой слайда и описанием -->
      <img
        ref="background"
        class="main-slider-middle-background"
        src="/images/clouds.webp"
        alt="Облака" />
    </div>
  </section>
</template>

<style>
.main-slider {
  position: relative;
  height: 100vh;
  overflow: hidden;
  background: linear-gradient(
      180deg,
      rgba(255, 255, 255, 1) 0%,
      rgba(255, 255, 255, 0.8) 6%,
      rgba(255, 255, 255, 0) 12%
    ),
    center / cover url(/images/sky.webp) no-repeat;
  touch-action: pan-y;
}

.container._main-slider {
  height: 100%;
}

.main-slider-content.container {
  position: relative;
  z-index: 2;
  padding-top: 7rem;
  width: 62.7%;
  max-width: calc(90.2rem + var(--container-padding));
  display: flex;
  flex-direction: column;
  align-items: center;
  height: 100%;
  padding-bottom: 6.3%;
}

@media (max-height: 699px) {
  .main-slider-content.container {
    padding-top: 5rem;
    padding-bottom: 1.3%;
  }
}

.main-slider-title {
  text-align: center;
  white-space: nowrap;
  font-family: 'Futura', sans-serif;
  font-weight: bold;
  font-size: 4.5rem;
  line-height: 7.2rem;
  letter-spacing: -0.7px;
  text-transform: uppercase;
  color: var(--color-orange);
}

@media (max-height: 699px) {
  .main-slider-title {
    line-height: 1.3;
  }
}

.main-slider-count {
  margin-top: 2rem;
}

@media (max-height: 699px) {
  .main-slider-count {
    margin-top: 0;
  }
}

.main-slider-middle-background {
  position: absolute;
  inset: 0;
  z-index: 1;
  width: 100%;
  height: 100%;
  object-fit: cover;
  background: linear-gradient(0deg, white 12%, transparent 40%);
}

.main-slider-footer {
  margin-top: auto;
}

.main-slider-link {
  display: flex;
  align-items: center;
  justify-content: center;
  column-gap: 1.8rem;
  transition: color var(--transition-duration);
}

.main-slider-link:hover {
  color: var(--color-active);
}

.main-slider-button {
  display: flex;
  column-gap: 1.6rem;
  font-size: 1.5rem;
}

.main-slider-slides {
  display: flex;
  position: absolute;
  inset: 0;
}

.main-slider-slide {
  position: relative;
  flex-shrink: 0;
  width: 100%;
  height: 100%;
}

.main-slider-slide__image-slide {
  position: absolute;
  top: 35%;
  left: 50%;
  transform: translateX(-50%);
}

.main-slider-slide__image-clouds {
  position: absolute;
  width: 100%;
  height: 100%;
  object-fit: cover;
}

.main-slider-slide-text {
  position: absolute;
  top: 65%;
  left: 50%;
  width: 80%;
  max-width: 90rem;
  z-index: 2;
  transform: translateX(-50%);
  font-size: 2rem;
  font-weight: 300;
  line-height: 3.2rem;
  text-align: center;
  letter-spacing: 0.4px;
}
</style>
