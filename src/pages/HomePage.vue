<script>
import MainSlider from '@/widgets/MainSlider.vue';

export default {
  name: 'HomePage',

  components: {
    MainSlider
  },

  data() {
    return {
      slides: [
        {
          id: 1,
          image: '/images/racer.png',
          description: `Для примера мы показали вам его лицо. В первой серии он прячется в подвале за мониторами,
            и пусть борода не собьёт вас с толку. Найдите героя и нажмите на паузу — ему не терпится
            отдать вам промокод.`,
          url: '#1'
        },
        {
          id: 2,
          image: '/images/man2.png',
          description: `Lorem ipsum dolor sit amet, consectetur adipiscing elit,
            sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
            Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.`,
          url: '#2'
        },
        {
          id: 3,
          image: '/images/racer.png',
          description: `Слайд 3`,
          url: '#3'
        }
      ]
    };
  }
};
</script>

<template>
  <main>
    <MainSlider :slides="slides" />
  </main>
</template>
