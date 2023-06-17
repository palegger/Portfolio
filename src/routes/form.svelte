<form on:submit|preventDefault={sendForm}>
    <label for="name">Name</label>
    <input type="text" name="name" id="name" bind:value={name} required>
    <label for="email">Email</label>
    <input type="email" name="email" id="email" bind:value={email} required>
    <label for="message">Message</label>
    <textarea name="message" id="message" bind:value={message} required></textarea>
    <button type="submit">SEND</button>
</form>

<script>
    import { PUBLIC_WEBHOOK_DISCORD} from '$env/static/public'

    let name = ''
    let email = ''
    let message = ''

    const url = 'https://discord.com/api/webhooks/1111301758287884369/dp_kjLSIx4wCL4yxHiv9559AKYvnzgP65V-XQkgmbTfAg-LPG7-IyoVz-zRWYmhTN5nT'

    function sendForm() {
        fetch(url, {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({
                content: `**${name}** (${email}) sent you a message:\n${message}`
            })
        }
        ).then(() => {
            name = ''
            email = ''
            message = ''
            alert('Message sent!')
        })
    }
</script>

<style lang="scss">
     form {
        display: flex;
        flex-direction: column;
        justify-content: space-evenly;
        align-items: center;
        width: 70%;
        border-radius: 1em;
        padding: 1em 2em;
    }

    form {
        color: #F808FD;
        position: relative;
        background-color: #0E0915;
        background-clip: padding-box;
        border: 5px solid transparent;
        border-radius: 1rem;

        // box-shadow: 0px 0px 10px 5px #72FFFF;

    }

    form::before {
        content: "";
        position: absolute;
        top: -5px;
        right: -5px;
        bottom: -5px;
        left: -5px;
        z-index: -1;
        background-image: linear-gradient(180deg, #72FFFF, #FDF808);
        border-radius: 1rem;
    }

    form::after {
        content: "";
        position: absolute;
        top: 5px;
        right: 5px;
        bottom: 5px;
        left: 5px;
        z-index: -1;
        background-image: linear-gradient(180deg, #72FFFF, #FDF808);
        border-radius: 1rem;
        filter: blur(70px);
    }

    input {
        border: none;
        border-radius: 0.5em;
        padding: 0.5em;
        font-weight: bold;
        font-size: 1em;
        width: 100%;
        color: #2E2E2E;
    }

    label {
        font-weight: bold;
        font-size: 1em;
        color: white;
        margin: 0.5em;
    }

    textarea {
        border: none;
        border-radius: 0.5em;
        padding: 0.5em;
        font-family: 'Jost', sans-serif;
        font-weight: bold;
        font-size: 1em;
        max-width: 100%;
        min-width: 100%;
        height: 8em;
    }

    button {
        background-image: linear-gradient(-90deg, #72FFFF, #FDF808);
        border-radius: 0.5em;
        font-weight: bold;
        border: none;
        color: white;
        padding: 1em;
        text-decoration: none;
        margin-top: 1em;
        max-width: 30%;
        color: #2E2E2E;
    }
</style>