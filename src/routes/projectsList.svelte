{#if browser}
    <div class="carousel">
        <Carousel autoplay pauseOnFocus particlesToShow={1} arrows={false} autoplayDuration={7000}>
            <div class="test">
                <div class="project">
                    <h3>E-Stock</h3>
                    <a href="http://tvaira.free.fr/projets/cdc-2020/estock-2020.html"><img src="skills/github.svg" alt="github"></a>
                    <div class="project-content">
                        <div class="project-img">
                            <img src="projects/e-stock.png" alt="e-stock"/>
                        </div>
                        <div class="project-text">
                            <p>It is an automated and communicating stock management system.</p>
                            <p>Cabinets will comprise a maximum of 8 racks. Each locker can be fitted with an electric lock to open and close it, and with a scale for automatic item counting.</p>
                            <p>An RFID badge reader is integrated into each cabinet to control access. The e-stock cabinet can be operated from the integrated touch screen.</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="test">
                <div class="project">
                    <h3>HealthTech</h3>
                    <a href="https://github.com/palegger/Health-Tech"><img src="skills/github.svg" alt="github"></a>
                    <div class="project-content">
                        <div class="project-img">
                            <img src="projects/healthTech.png" alt="healthtech"/>
                        </div>
                        <div class="project-text">
                            <p>A device that collects data from an operating room and sends it to an API.</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="test">
                <div class="project">
                    <h3>The Conveyor</h3>
                    <a href="https://github.com/palegger/The-Conveyor"><img src="skills/github.svg" alt="github"></a>
                    <div class="project-content">
                        <div class="project-img">
                            <img src="projects/theConveyor.png" alt="theConveyor"/>
                        </div>
                        <div class="project-text">
                            <p>Here is a conveyor that will allow an inventory management and an online follow-up.</p>
                        </div>
                    </div>
                </div>
            </div>
        </Carousel>
    </div>
{/if}

<script>
    import Carousel from 'svelte-carousel';
    import { browser } from '$app/environment';
</script>

<style lang="scss">
    .test {
        display: flex;
        justify-content: center;
        align-items: center;
        height: 40rem;
    }

    .carousel {
        width: 100%;
    }

    .project {
        color: #FFFFF7;
        margin: 0 1em;
        padding: 2em;
        position: relative;
        background-color: #0E0915;
        background-clip: padding-box;
        border: 5px solid transparent;
        border-radius: 1rem;
        min-width: 75%;
        min-height: 75%;
        max-width: 75%;
        max-height: 75%;
        display: flex;
        flex-direction: column;
        justify-content: space-around;
        height: 100%;
    }

    .project::before {
        content: "";
        position: absolute;
        top: -5px;
        right: -5px;
        bottom: -5px;
        left: -5px;
        z-index: -1;
        background-image: linear-gradient(180deg, #72FFFF, #F808FD);
        border-radius: 1rem;
    }

    .project::after {
        content: "";
        position: absolute;
        top: 5px;
        right: 5px;
        bottom: 5px;
        left: 5px;
        z-index: -1;
        background-image: linear-gradient(180deg, #72FFFF, #F808FD);
        border-radius: 1rem;
        filter: blur(20px);
    }

    h3 {
        font-size: 2.5em;
        margin: 0.2em;
    }

    .project-img {
        min-width: 40%;
        max-width: 50%;
        height: 100%;
    }
        
    .project-img > img {
        object-fit: contain;
        width: 100%;
        height: 100%;
    }

    .project-content {
        height: 70%;
        display: flex;
        flex-direction: row;
        justify-content: space-between;
        align-items: center;
        gap: 1.5em;
    }

    a {
        position: absolute;
        top: 0;
        right: 0;
        padding: 1em;
    }

    a > img {
        height: 3em;
        width: 3em;
    }

    @media screen and (max-width: $mobile) {
        .test {
            height: 30em;
        }

        .project {
            padding: 1em;
            min-width: 80%;
            min-height: 80%;
            max-width: 80%;
            max-height: 80%;
        }

        .project-content {
            flex-direction: column;
            gap: 0.5em;
        }

        .project-text {
            height: 100%;
            overflow: scroll;
        }

        .project-img {
            min-width: 100%;
            max-width: 100%;
            height: 30%;
        }

        h3 {
            margin: 0;
            font-size: 2em;
        }

        p {
            font-size: 1em;
            margin: 0.3em;
        }
    }

    @media screen and (min-width: $extra-large) {

        p {
            font-size: 1.3em;
        }
    }
</style>