<template>
  <div>
    <div class="topnavAndBanner">
      <Topnav />
      <div class="banner">
        <h1>Zoe UI</h1>
        <h2>一个简单实用的 UI 框架</h2>
        <span class="actions">
          <a href="https://github.com/breeze0814/Zoe-UI">
            <span class="gtb" aria-hidden="true">　</span>
            <span class="gh-text">Start</span>
          </a>
          <router-link to="/doc">开始</router-link>
        </span>
      </div>
    </div>
    <div class="features">
      <ul>
        <li>
          <svg>
            <use xlink:href="#icon-Vue"></use>
          </svg>
          <h3>Vue 3</h3>
          <p>灵活使用了 Vue 3 Composition API</p>
        </li>
        <li>
          <svg>
            <use xlink:href="#icon-ts"></use>
          </svg>
          <h3>TypeScript</h3>
          <p>源代码采用 TypeScript 书写（非严格检查）</p>
        </li>
        <li>
          <svg>
            <use xlink:href="#icon-lights"></use>
          </svg>
          <h3>Easy</h3>
          <p>每个组件的源代码都极其简洁</p>
        </li>
        <li>
          <svg>
            <use xlink:href="#icon-zd"></use>
          </svg>
          <h3>代码易读</h3>
          <p>每个组件的源代码都极其简洁</p>
        </li>
      </ul>
    </div>
  </div>
</template>
<script lang="ts">
import Topnav from "../components/Topnav.vue";
export default {
  components: { Topnav },
};
</script>
<style lang="scss" scoped>
$green: #0f82bb;
$border-radius: 8px;
$color: #007974;
.topnavAndBanner {
  background: radial-gradient(circle, rgba(34,193,195,1) 0%, rgba(47,84,235,1) 100%);
  clip-path: ellipse(80% 60% at 50% 40%);
}
.features {
  margin: 64px auto;
  width: 390px;
  @media (min-width: 800px) {
    width: 800px;
    > ul {
      > li {
        width: 50%;
      }
    }
  }

  @media (min-width: 1200px) {
    width: 1200px;
    > ul {
      > li {
        width: 33.3333%;
      }
    }
  }

  > ul {
    display: flex;
    flex-wrap: wrap;
    > li {
      margin: 16px 0;
      display: grid;
      justify-content: start;
      align-content: space-between;
      grid-template-areas:
        "icon title"
        "icon text";
      grid-template-columns: 80px auto;
      grid-template-rows: 1fr auto;
      > svg {
        grid-area: icon;
        width: 64px;
        height: 64px;
      }
      > h3 {
        grid-area: title;
        font-size: 24px;
        font-weight: 600;
      }
      > p {
        grid-area: text;
      }
    }
  }
}
.banner {
  padding: 100px 0;
  display: flex;
  font-size: 16px;
  justify-content: center;
  align-items: center;
  flex-direction: column;
  > h1 {
    font-weight: bolder;
    font-size: 40px;
  }

  > .actions {

    height: 40px;
    background: 0 0;
    padding: 24px 0;
    a {
      margin: 0 8px;
      background: white;
      color: black;
      display: inline-block;
      padding: 8px 24px;
      border-radius: $border-radius;
      > .gtb {
        background-size: 100% 100%;
        background-repeat: no-repeat;
        background-image: url("../../img/github.svg");
      }
      &:hover {
        text-decoration: none;
      }
    }
  }
}
</style>
