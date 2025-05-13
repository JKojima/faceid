import { Faceid } from '@dotbit/faceid';

window.testEcho = () => {
    const inputValue = document.getElementById("echoInput").value;
    Faceid.echo({ value: inputValue })
}
