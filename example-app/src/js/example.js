import { FaceID } from 'faceid';

window.testEcho = () => {
    const inputValue = document.getElementById("echoInput").value;
    FaceID.echo({ value: inputValue })
}
