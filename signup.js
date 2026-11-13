const form = document.querySelector("#sign-up-form");
const fullname = document.querySelector("#fullname");
const email = document.querySelector("#email");
const password = document.querySelector("#password");
const confirmPassword = document.querySelector("#confirm-password");
const successMessage = document.querySelector("#success-message");

const nameError = document.querySelector('#name-error');
const emailError = document.querySelector('#email-error');
const passwordError = document.querySelector('#password-error');
const confirmedPasswordError = document.querySelector('#confirmed-password-error');

function validateInfo(event) {

  nameError.textContent ='';
  emailError.textContent ='';
  passwordError.textContent ='';
  confirmedPasswordError.textContent ='';
  successMessage.textContent ='';

  if(fullname.value.trim() === ''){
    nameError.textContent = 'Please enter your full name.';
    event.preventDefault();
  }
  
  if(email.value.trim() === ''){
    emailError.textContent = 'Please enter your email address.';
    event.preventDefault();
  }
  if(!email.value.includes('@')){
    emailError.textContent = 'Please enter a valid email address.';
    event.preventDefault();
  }

  if(password.value !== confirmPassword.value){
    confirmedPasswordError.textContent='Your passwords do not match. Please try again.';
    event.preventDefault();
  }

  if(password.value.length < 8){
    passwordError.textContent='Password must contain at least 8 characters.';
    event.preventDefault();
  }

if(fullname.value.trim() !== '' &&
  email.value.trim() !== '' &&
password.value.length >= 8 &&
password.value === confirmPassword.value){
  successMessage.textContent = 'Welcome to UPSA Student Hub! Your information has been validated successfully.';
  event.preventDefault();
}
}

form.addEventListener('submit',validateInfo);


