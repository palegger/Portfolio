<div class="global">
    <Navbar />
    <div class="home section" id="home">
        <img class="homeimg" src="text-home.svg" alt="text-home" />
    </div>
    <div class="project section" id="projects">
        <ProjectsList />
        <Skills />
        <a class="see-more" href="https://github.com/palegger" target="_blank">TO SEE MORE CLICK HERE</a>
    </div>
    <div class="section contact" id="contact">
        <div class="header-contact">
            <h1>To contact me</h1>
            <h2>Please fill this form</h2>
        </div>
        <Form />
        <div>
            <a href="https://www.linkedin.com/in/pierre-antoine-legger-286b4b1b7/" target="_blank"><button class="linkedin"><img src="linkedin.svg" alt="" width="15px" height="15px"/>  Linkedin</button></a>
            <a href="resume.pdf" target="_blank"><button class="resume">My Resume</button></a>
        </div>
    </div>
</div>

<script>
    import Navbar from '../components/Navbar.svelte';
    import ProjectsList from './projectsList.svelte';
    import Skills from './skills.svelte';
    import Form from './form.svelte';
</script>

<style lang="scss">
    .global {
        position: relative;
        width: 100%;
        height: 100vh;
        scroll-behavior: smooth;
        overflow: auto;
        scroll-snap-type: y mandatory;
    }
    .section {
        scroll-snap-align: start;
        scroll-snap-stop: always;
        width: 100vw;
        height: 100vh;
        padding-top: 4em;
        box-sizing: border-box;
    }
    .home {
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        background-image: url(/rain-background.png);
        background-size: cover;
        background-position: center;
    }

    .homeimg {
        object-fit: cover;
        max-width: 90%;
    }

    .project {
        padding-left: 2em;
        padding-right: 2em;
        display: flex;
        flex-direction: column;
        justify-content: space-evenly;
        align-items: center;
        background-image: url(/oooscillate.png);
        background-size: cover;
        background-position: center;
    }

    .see-more {
        background-image: linear-gradient(-90deg, #72FFFF, #F808FD);
        border-radius: 0.5em;
        font-family: 'Jost', sans-serif;
        font-weight: bold;
        border: none;
        color: white;
        padding: 1em;
        text-decoration: none;
    }

    .contact {
        display: flex;
        flex-direction: column;
        justify-content: space-evenly;
        align-items: center;    
        position: relative;
    }

    h1, h2 {
        color: white;
    }

    .linkedin {
        background-color: #0A66C2;
        background-image: none;
        border: none;
        font-family: 'Jost', sans-serif;
        font-weight: bold;
        color: white;
        font-size: 1em;
        border-radius: 0.5em;
        padding: 0.8em;
    }

    .resume {
        background-image: linear-gradient(-90deg, #72FFFF, #FDF808);
        font-weight: bold;
        border: none;
        color: #2E2E2E;
        text-decoration: none;
        font-size: 1em;
        font-family: 'Jost', sans-serif;
        border-radius: 0.5em;
        padding: 0.8em;
    }

    .header-contact {
        h1 {
            margin-top: 0;
        }
        h2 {
            margin-bottom: 0;
        }
    }

    @media screen and (max-width: $mobile) {
        .project {
            padding-left: 0em ;
            padding-right: 0em;
        }

        .section {
            height: 100dvh;
        }

        .global {
            height: 100dvh;

        }

        .see-more {
            font-size: 0.8em;
            padding: 1em;
        }
    }
</style>

    