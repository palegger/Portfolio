<script>
    import Carousel from 'svelte-carousel';
    import { browser } from '$app/environment';
</script>
  
{#if browser}
    <div class="carousel">
        <Carousel autoplay pauseOnFocus particlesToShow={5} >
            <img src="skills/arduino.svg" alt="logo" />
            <img src="skills/cpp.svg" alt="logo" />
            <img src="skills/github.svg" alt="logo" />
            <img src="skills/nodejs.svg" alt="logo" />
            <img src="skills/platformio.svg" alt="logo" />
            <img src="skills/qt.svg" alt="logo" />
            <img src="skills/svelte.svg" alt="logo" />
            <img src="skills/tailwind.svg" alt="logo" />
        </Carousel>
    </div>
{/if}

<style lang="scss">
    img {
        height: 50px;
        padding-bottom: 1em;
    }

    .carousel {
        width: 60%;
        padding-top: 1em;
    }

    @media screen and (max-width: $projectWidth) {
        .carousel {
            width: 100%;
        }
    }
</style>