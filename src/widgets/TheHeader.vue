<script>
export default {
  name: 'TheHeader'
};
</script>

<template>
  <header class="header">
    <div class="container container_header">
      <div class="logo">
        <a class="logo__link" href="/" aria-label="На главную">
          <img src="/images/logo.svg" width="183" height="26" alt="Логотип КиноПоиск" />
        </a>
      </div>
    </div>
  </header>
</template>

<style>
.header {
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  z-index: 10;
}

.container_header {
  display: flex;
  justify-content: center;
  align-items: center;
  padding-top: 2.4rem;
}

.logo__link {
  display: flex;
}
</style>
