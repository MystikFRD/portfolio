import { typeWriter } from './components/typewriter.js';

window.onload = () => {
    const hero = document.getElementById('typewriter');
    // The raw text (what the effect types out)
    const typedText = "Hello there! I am Mustafa. Some call me Mystik.";
    // The highlighted HTML (what you want after typing is done)
    const finalHTML = `Hello there!<br>
        I am <span class="highlight-teal">Mustafa</span>.<br>
        Some call me <span class="highlight-cyan">Mystik.</span>`;

    typeWriter(hero, typedText, 40, () => {
        // After typing, set the HTML to include highlights
        hero.innerHTML = finalHTML;
    });
};
