<div>
    <img src="logo.svg" alt="logo" />
    <a href="#home">Home</a>
    <a href="#projects">Projects</a>
    <!-- <p>Experiences</p>
    <p>Formations</p> -->
    <a href="#contact" class="last">Contact</a>
</div>

<style lang="scss">
    a {
        text-transform: uppercase;
        margin: auto 0;
        color: #FDF808;
        mix-blend-mode: difference;
        text-decoration: none;
    }
    div {
        display: flex;
        justify-content: flex-end;
        height: 4em;
        width: 100%;
        gap: 1em;
        position: fixed;
        top: 0px;
        background: rgba(217, 217, 217, 0.01);
        box-shadow: 0px 5px 4px rgba(0, 0, 0, 0.8);
        backdrop-filter: blur(5px);
        -webkit-backdrop-filter: blur(5px);
        z-index: 1;
    }
    .last {
        margin-right: 1.5em;
    }
    img {
        margin: 0.5em;
        margin-left: 1.5em;
        margin-right: auto;
    }
</style>