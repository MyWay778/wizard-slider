<script>
import TheHeader from '@/widgets/TheHeader.vue';
import TheSidebar from '@/widgets/TheSidebar.vue';
import BurgerButton from '@/components/Sidebar/BurgerButton.vue';
import ScrollTip from '@/components/Sidebar/ScrollTip.vue';
import HomePage from '@/pages/HomePage.vue';
import ContentNavigation from '@/features/ContentNavigation.vue';

export default {
  components: {
    TheHeader,
    TheSidebar,
    BurgerButton,
    ScrollTip,
    ContentNavigation,
    HomePage
  }
};
</script>

<template>
  <TheHeader />

  <TheSidebar>
    <BurgerButton />
    <ContentNavigation />
    <ScrollTip text="Скрольте вниз" />
  </TheSidebar>

  <HomePage />
</template>
