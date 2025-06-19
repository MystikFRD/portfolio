export function typeWriter(element, text, speed = 70, callback = null) {
    let i = 0;
    element.innerHTML = ""; // clear previous content

    function type() {
        if (i < text.length) {
            element.innerHTML += text.charAt(i);
            i++;
            setTimeout(type, speed);
        } else if (typeof callback === "function") {
            callback();
        }
    }
    type();
}
