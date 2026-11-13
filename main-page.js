
// Main-Page 
const heading = document.querySelector('#heading')
const button = document.querySelector('#change-message')
function ChangeHeading(){
  heading.classList.add('value')
}
button.addEventListener('click',ChangeHeading);